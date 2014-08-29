using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Presentation_SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {


        da = new SqlDataAdapter("select count(U_Name) from tbl_User where U_Name=@uname", con);
        da.SelectCommand.Parameters.AddWithValue("@uname", txtUserName.Text);
        ds = new DataSet();
        da.Fill(ds, "tbl_User");
        if (ds.Tables["tbl_User"].Rows.Count == 1 && ds.Tables["tbl_User"].Rows[0][0].ToString() == "1")
        {
            lblUser.Text = "User Name is not Available";
            lblUser.ForeColor = System.Drawing.Color.Red;
            txtUserName.Focus();
        }
        else
        {
            lblUser.Text = "User Name is Available";
            lblUser.ForeColor = System.Drawing.Color.Red;
            txtPass.Focus();
        }


    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (lblUser.Text == "User Name is Available")
        {
            da = new SqlDataAdapter("insert into tbl_User(U_Name,U_Password,U_Type)values(@name,@password,@type)", con);
            da.SelectCommand.Parameters.AddWithValue("@name", txtUserName.Text);
            da.SelectCommand.Parameters.AddWithValue("@password", txtPass.Text);
            da.SelectCommand.Parameters.AddWithValue("@type", Convert.ToInt32(RadioButtonList1.SelectedValue));
            con.Open();
            int a = da.SelectCommand.ExecuteNonQuery();
            if (a > 0)
            {
                string display = "Sign Up successfully";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);

                //Response.Redirect("~/Users/LogIn.aspx");
            }

            con.Close();

        }
    }

}