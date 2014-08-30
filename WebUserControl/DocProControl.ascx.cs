using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class UserControl_DocProControl : System.Web.UI.UserControl
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
         
        //       lblSpec.Visible = false;
        //       lblDegree.Visible = false;
        //       lblCharge.Visible = false;
        //       lblUni.Visible = false;
        //ddlSpec.Visible = false;
        //txtDegree.Visible = false;
        //txtUniversity.Visible = false;
        //txtCharge.Visible = false;
        //btnSubmit.Visible = false;
       

            SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);
            SqlCommand cmd = new SqlCommand("select * from tbl_Specialization", con);
            con.Open();
            ddlSpec.DataSource = cmd.ExecuteReader();

            ddlSpec.DataTextField = "Sp_Area";
            ddlSpec.DataValueField = "Sp_Id";
            ddlSpec.DataBind();
            con.Close();

        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
           
                SqlConnection con1 = new SqlConnection(AppConfig.DBConnectionString);
                SqlCommand cmd1 = new SqlCommand("insert into tbl_DocSpec(Doc_Specialization,University,Degree,Doc_Charges,U_Name)values(@spec,@university,@degree,@charge,@uname)", con1);
                // SqlCommand cmd1 = new SqlCommand("update tbl_Doctor set Doc_Specialization=@spec,University=@university,Degree=@degree where U_Name='" + Session["uname"] + "'");
                cmd1.Parameters.AddWithValue("@spec", ddlSpec.SelectedItem.Text);
                cmd1.Parameters.AddWithValue("@university", txtUniversity.Text);
                cmd1.Parameters.AddWithValue("@degree", txtDegree.Text);
                cmd1.Parameters.AddWithValue("@charge", txtCharge.Text);
                cmd1.Parameters.AddWithValue("@uname", Session["uname"].ToString());
                con1.Open();
                int n = cmd1.ExecuteNonQuery();
                if (n > 0)
                {
                    string script = @"<script language=""javascript"">
      alert('Information have been Saved Successfully.......!!!!!.');
     </script>;";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);

                }
                else
                {
                    string script = @"<script language=""javascript"">
                alert('Error');
               </script>;";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);

                }
                con1.Close();
            }
        }

    protected void txtSpec_TextChanged(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {

            SqlConnection con1 = new SqlConnection(AppConfig.DBConnectionString);
            SqlCommand cmd = new SqlCommand("insert into tbl_Specialization(Title)values(@title)", con1);
            cmd.Parameters.AddWithValue("@title", txtSpec.Text);
            con1.Open();
            cmd.ExecuteNonQuery();
            con1.Close();

            ddlSpec.Items.Add(txtSpec.Text);
        }
    }
}
    
       


        

    
   