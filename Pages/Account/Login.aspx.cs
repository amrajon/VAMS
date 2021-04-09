using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Project_VAMS.Pages.Account
{

    public partial class Login : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["Project_VAMSConnectionString"].ConnectionString;
        string str, UserName, Password;
        SqlCommand com;
        SqlDataAdapter sqlda;
        DataTable dt;
        int RowCount;

        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "Select * from Login";
            com = new SqlCommand(str);
            sqlda = new SqlDataAdapter(com.CommandText, con);
            dt = new DataTable();
            sqlda.Fill(dt);
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {
                UserName = dt.Rows[i]["UserName"].ToString();
                Password = dt.Rows[i]["Password"].ToString();
                if (UserName == txtLogin.Text && Password == txtPassword.Text)
                {
                    Session["UserName"] = UserName;
                    if (dt.Rows[i]["Role"].ToString() == "Administrator")
                        Response.Redirect("~/Pages/Management/AdminPage.aspx");
                    else if (dt.Rows[i]["Role"].ToString() == "Applicant")
                        Response.Redirect("~/Pages/Management/ApplicantPage.aspx");

                }
                else
                {
                    lblError.Text = "Invalid User Name or Password! Please try again!";
                }
            }

        }

    }
}
