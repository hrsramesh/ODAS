using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Users_SignIn : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUser.Focus();
    }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            if(txtUser.Text!="" && txtPass.Text!="")
            {
                da = new SqlDataAdapter("select U_Type from tbl_User where U_Name=@name and U_Password=@pass", con);
                da.SelectCommand.Parameters.AddWithValue("@name ", txtUser.Text);
                da.SelectCommand.Parameters.AddWithValue("@pass", txtPass.Text);
                ds = new DataSet();
                da.Fill(ds,"tbl_User");
                if(ds.Tables[0].Rows.Count >0)
                {
                    if(ds.Tables[0].Rows[0][0].ToString()=="1")
                    {
                        Label1.Text = "you r patient";
                        Session["uname"]=txtUser.Text;
                        Response.Redirect("Patient/PatientProfile.aspx");
                        
                    }
                    else if(ds.Tables[0].Rows[0][0].ToString()=="2")
                    {
                        Label1.Text = "you r Doctor";
                        Session["uname"] = txtUser.Text;
                        Response.Redirect("Doctor/DocProfile.aspx");
                    }
                    else if(ds.Tables[0].Rows[0][0].ToString()=="3")
                    {
                        //Label1.Text = "you r Hospital";
                        Response.Redirect("Hospital/HospitalProfile.aspx");
                    }
                }
                    else
                    {
                    
                            Label1.Text = "Invalid User Name or Password";
                        }
                    }
        
            
            
        
        }
}