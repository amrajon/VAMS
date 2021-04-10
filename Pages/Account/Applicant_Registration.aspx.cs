using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;


namespace Project_VAMS.Pages.Account
{
    public partial class Registration : System.Web.UI.Page
    {
        //setitng up and configuring the SQL connection string 
        string strConnString = ConfigurationManager.ConnectionStrings["Project_VAMSConnectionString"].ConnectionString;
        SqlCommand com;


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserId.Text = string.Empty;
            txtPwd.Text = string.Empty;
            txtCPwd.Text = string.Empty;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            com = new SqlCommand();

            com = new SqlCommand("select * from [login] where UserName=@Name", con);
            com.Parameters.AddWithValue("@Name", txtUserId.Text);
            SqlDataReader dr = com.ExecuteReader();

            if (dr.HasRows)
            {
                lblError.Text = "This user id has been using by another user!";
                //"UserName Already Taken";
            }
            else
            {
                //"UserName Available";
                com.Connection = con;
                com.CommandType = CommandType.Text;
                com.CommandText = "Insert into Login values(@UserName,@Password,@Role)";
                com.Parameters.Clear();
                com.Parameters.AddWithValue("@UserName", txtUserId.Text);
                com.Parameters.AddWithValue("@Password", txtPwd.Text);
                com.Parameters.AddWithValue("@Role", txtRole.Text);
                if (con.State == ConnectionState.Closed)
                    con.Open();
                com.ExecuteNonQuery();
                con.Close();
                lblReg.Text = "Successfully Registered!!!";
                clear();
            }


        }
        private void clear()
        {
            txtUserId.Text = "";
            txtPwd.Text = "";

        }
    }
}
