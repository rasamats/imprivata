﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JumpingJack : System.Web.UI.Page
{
    private int numberOfDecisions;
    private int brokenStepNumber;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (IsPostBack)
        {
            brokenStepNumber = Convert.ToInt32(txtK.Text);
            numberOfDecisions = Convert.ToInt32(txtN.Text);
            lblOutput.Text = "The topmost step # is " + topMostStep(numberOfDecisions, brokenStepNumber).ToString();
        }
    }

    public static int topMostStep(int N, int K)
    {
        int topMost;
        // The steps that Jack is jumping on are all triangular numbers.
        // So Jack will hit K (also a triangular number) on desision X when:
        // x(x+1)/2 = k
        // x^2 + x -2K = 0
        // x = (-1 + sqrt(8k+1))/2
        // When Jack hits step K the desision X has to be a valid integer,
        // which will only happen if sqrt(8K+1) is an odd integer.
        
        // The earlier Jacks skips the higher he will get.
        // So if K is a triangular number Jack should skip the first jump only
        // otherwise he shouldn't skip any jumps and it gets hims the fartherst
        
        // The highest step for N desisions wihtout skips is n(n+1)/2.
        // If he skips first jump to avoid hitting K, he will get one step lower
        // for the same number of desisions which guarantees that he will miss K then.

        topMost = N * (N + 1) / 2; // highest Jack can get with no skips

        double temp = Math.Sqrt(8 * K + 1);

        if (((double)((int)temp) == temp) && (temp%2 == 1) && topMost > K)
        {
            topMost--;
        }
        return topMost;
    }
}