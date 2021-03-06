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

namespace Project_VAMS.Pages.Management
{
    public partial class Add_user : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["Project_VAMSConnectionString"].ConnectionString;
        //open sql commands
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserId.Text = string.Empty;
            txtPwd.Text = string.Empty;
            txtCPwd.Text = string.Empty;
            ddlRole.SelectedValue = string.Empty;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();

            //sql commands
            com = new SqlCommand("select * from [login] where UserName=@Name", con);
            com.Parameters.AddWithValue("@Name", txtUserId.Text);
            SqlDataReader dr = com.ExecuteReader();

            if (dr.HasRows)
            {
                lblError.Text = "This user id has been using by another user!";
                // "UserName Already Taken";
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
                com.Parameters.AddWithValue("@Role", ddlRole.SelectedValue);
                if (con.State == ConnectionState.Closed)
                    con.Open();
                com.ExecuteNonQuery();
                con.Close();
                lblAdminReg.Text = "Successfully Registered!!!";
                clear();
            }


        }
        private void clear()
        {
            txtUserId.Text = "";
            txtPwd.Text = "";
            ddlRole.SelectedValue = "";

        }
    }
}
