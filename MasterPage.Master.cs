using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Project_VAMS
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            //Check if a user is logged in
            if (Session["UserName"] != null)
            {
                lblLogin.Text = "Welcome " + Session["UserName"];
                lblLogin.Visible = true;
                LinkButton1.Text = "Logout";
            }
            else
            {
                lblLogin.Visible = false;
                LinkButton1.Text = "Login";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //User logs in
            if (LinkButton1.Text == "Login")
            {
                Response.Redirect("~/Pages/Account/Login.aspx");
            }
            else
            {
                //User logs out
                Session.Clear();
                Response.Redirect("~/Pages/Home.aspx");
            }
        }
    }
}