using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_VAMS.Pages.Management
{
    public partial class ApplicantsDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = XEEILTIC-PC; Initial Catalog = Project_VAMS; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String str = "Select * from Applicant_Details where (PassportNumber like '%' +@search + '%') ";
            SqlCommand com = new SqlCommand(str, con);
            com.Parameters.Add("@search", SqlDbType.VarChar).Value = txtSearch.Text;

            con.Open();
            com.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com;
            DataSet ds = new DataSet();
            da.Fill(ds, "PassportNumber");

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

            DetailsView2.DataSource = ds;
            DetailsView2.DataBind();
            con.Close();
        }
    }
}