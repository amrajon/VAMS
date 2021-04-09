using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections;
using System.Web.Security;



namespace Project_VAMS.Pages.Management
{
    public partial class Search_user : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = XEEILTIC-PC; Initial Catalog = Project_VAMS; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            String str = "Select Id, Nationality, LastName, FirstName, DOB, Sex, PassportNumber, TypeOfPassport, PurposeOfVisit, NumberofEntries, DateOfPassportExpiry, Application_Status from Applicant_Details where (PassportNumber like '%' +@search + '%') ";
            SqlCommand com = new SqlCommand(str, con);

            com.Parameters.Add("@search", SqlDbType.VarChar).Value = txtSearch.Text;
            con.Open();

            com.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;
            DataSet ds = new DataSet();
            da.Fill(ds, "PassportNumber");
            GridView1.DataSource = ds;
            GridView1.DataBind();

            using (SqlDataReader dr = com.ExecuteReader())
            {
                if (dr.HasRows)
                {

                }
                else
                {
                    lblSearch.Text = "No record is found with this passport number (" + txtSearch.Text.ToString() + ")";
                }

            }
            con.Close();




        }

    }


}

