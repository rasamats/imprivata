using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ArrayManager : System.Web.UI.Page
{
    private int arraySize; 
    private int[] array1;
    private int[] array2;
    protected void Page_Load(object sender, EventArgs e)
    {
        int n;
        if (!int.TryParse(txtArrayASizeID.Text, out n))
            return;
        if (IsPostBack)
        {
            arraySize = Convert.ToInt32(txtArrayASizeID.Text);

            Array.Resize(ref array1, arraySize);
            Array.Resize(ref array2, arraySize * 2);
            lblArray1.Text = "";
            lblArray2.Text = "";
            lblSortedArray2.Text = "";
            Random random = new Random();

            for (int i = 0; i < arraySize; i++)
            {
                int randomNumber1 = random.Next(0, 10);
                int randomNumber2 = random.Next(0, 10);
                //fill the arrays with randomly increasing numbers 
                if (i == 0)
                {
                    array1[i] = randomNumber1;
                    lblArray1.Text = array1[i].ToString();
                    array2[i] = randomNumber2;
                    lblArray2.Text = array2[i].ToString();
                }
                else
                {
                    array1[i] = array1[i - 1] + randomNumber1;
                    lblArray1.Text += ", " + array1[i].ToString();
                    array2[i] = array2[i - 1] + randomNumber2;
                    lblArray2.Text += ", " + array2[i].ToString();
                }
            }

            mergeArray(array1, array2, arraySize);

            for (int i = 0; i < arraySize * 2; i++)
            {
                if (i != 0)
                {
                    lblSortedArray2.Text += ", ";
                }
                lblSortedArray2.Text += array2[i].ToString();
            }
        }
        else
        {
            array1 = new int[arraySize];
            array2 = new int[arraySize * 2];
        }
    }
    
    public static void mergeArray(int[] a, int[] b, int M)
    {
        // we will fill the seconf array starting from the back
        // last index in second array
        int dest = 2*M-1;
        // next biggest element in each array
        int nextA = M - 1; 
        int nextB = M - 1;
        
        while( dest >= 0)
        {
            if (nextA < 0)
            {
                // done copying from a? just quit the loop
                break;
            }
            if ((nextB < 0) || (a[nextA] > b[nextB]))
            {
                // done copying from b or a’s next element is bigger? pick it
                b[dest--] = a[nextA--];
            }
            else if (a[nextA] < b[nextB])
            {
                // b’s next element is bigger? pick it
                b[dest--] = b[nextB--];
            }
            else
            {
                // elements are the same, copy both
                b[dest--] = b[nextB--];
            }
        }
    }
}