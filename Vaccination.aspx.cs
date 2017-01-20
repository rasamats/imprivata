using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vaccination : System.Web.UI.Page
{
    //each city in cities array has three integer values, maximum capacity of one clinic, number of clinics in the city and the population
    private static Tuple<int, int, int>[] cities = new Tuple<int, int, int> []{};
    private int numOfClinics=0;
    private int numOfCities=0;
    private string cityPopulation="";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            try
            {
                numOfCities = Convert.ToInt32(txtN.Text);
                numOfClinics = Convert.ToInt32(txtB.Text);
                cityPopulation = txtCityPopulation.Text;
                lblOutput.Text = "Maximum number of people to be immunized in any single clinic is " + calculateMaxClinicCapacity(numOfCities, numOfClinics, cityPopulation).ToString();
            }
            catch (NotSupportedException nse)
            {
                lblOutput.Text = nse.Message;
            }
        }
                
    }
    public static int calculateMaxClinicCapacity(int numOfCities, int numOfClinics, string cityPopulation)
    {
        int i = 0;
        string[] cityPopArray = cityPopulation.Split(',');
        if (cityPopArray.Length != numOfCities)
        {
            throw new NotSupportedException("Number of cities does not match number of values in city population list"); 

        }

        Array.Resize(ref cities, numOfCities);

        foreach (string s in cityPopArray)
        {
            int population = Convert.ToInt32(s);
            if (population == 0)
            {
                throw new NotSupportedException("Non numeric input in city population"); 
            }
            //Initialize each city with one clinic and assign all the population to it
            Tuple<int, int, int> city = new Tuple<int, int, int>(population, 1, population);
            cities[i++] = city;
        }

        //each city got one clinic, so we are left with numOfClinics - cities.Length number of clinics
        int remainedClinicCounter = numOfClinics - cities.Length;
        while (remainedClinicCounter!=0)
        {
            //while there are still clinics to add, always add one to the
            Array.Sort(cities);
            Array.Reverse(cities);

            int newNumOfClinics = cities[0].Item2 + 1;
            int newMaxCapacity = cities[0].Item3 / newNumOfClinics;
            if ((newMaxCapacity*newNumOfClinics) < cities[0].Item3) //if population/newNumOfClinics had a remainder, some of clinics capacity in this city will be one more than others
            {
                ++newMaxCapacity;
            }
            Tuple<int, int, int> city = new Tuple<int, int, int>(newMaxCapacity, cities[0].Item2 + 1, cities[0].Item3);
            cities[0] = city;

            --remainedClinicCounter;
        }
        //Sort again to return the largest
        Array.Sort(cities);
        Array.Reverse(cities);

        return cities[0].Item1;
    }
}