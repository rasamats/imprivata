using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FindPangram : System.Web.UI.Page
{
    private string inputText = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (IsPostBack)
            {
                inputText = txtInput.Text;
                if (isPangram(inputText))
                {
                    lblOutput.Text = "This is a Pangram!";
                }
                else
                {
                    lblOutput.Text = "This is NOT a Pangram!";
                }
            }

        }
        catch (NotSupportedException nse)
        {
            lblOutput.Text = nse.Message;
        }
    }

    public static bool isPangram(string N)
    {
        if (N.Length<26)
        {
            return false; //if the string doesn't have 26 different chars it can not be pangram
        }

        int[] asciiArray = new int[26];
        int newIndexes = 0;
        int thisIndex = -1;
        foreach (char c in N)
        {
            if (c == ' ') //if space check next character
            {
                continue;
            }
            int ascii = (int)c;

            if ((ascii >= (int)'a') && (ascii <= (int)'z')) //Lower case letter
            {
                thisIndex = ascii - (int)'a';
            }
            else if ((ascii >= (int)'A') && (ascii <= (int)'Z')) //Upper Case
            {
                thisIndex = ascii - (int)'A';
            }
            else  //invalid character! 
            {
                throw new NotSupportedException("Char " + c.ToString() + " in input string is not supported."); 
            }

            if (asciiArray[thisIndex] == 0) //is this the first time this letter is found?
            {
                ++newIndexes;
                ++asciiArray[thisIndex];
                if (newIndexes >= 26) 
                {
                    return true;  //we found 26 different letters in the string not counting spaces. The string is a Pangram
                }
            }
        }
        return false; // If we finished without finding 26 different letters the string is not a Pangram
    }
}