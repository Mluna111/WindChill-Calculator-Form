using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WindChill.WindChill
{
    public partial class MyCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void cmdCalculate_Click(object sender, EventArgs e)
        {
            //create instance of WindChillService
            WindChillService.Calculator objWS = new WindChillService.Calculator();

            //get the form values
            int T = int.Parse(txtTemperature.Text);
            int V = int.Parse(txtSpeed.Text);


            lblResults.Text = objWS.CalculateWindChill(T, V);
        }
    }
}