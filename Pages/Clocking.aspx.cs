using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_VAMS.Pages
{
    public partial class Clocking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //showing the realtime vew of a clock in the text format
            lblClock.Text = DateTime.Now.ToString();
            
        }
    }
}
