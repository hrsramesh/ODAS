using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        AddUser.AddPatient(txtFname.Text, txtLname.Text, txtAddress.Text, txtEmail.Text, txtUserName.Text, txtPass.Text, DdlGender.SelectedItem.Text, Convert.ToInt32(txtAge.Text));

        string display = "inserted successfully";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + display + "');", true);

        txtFname.Text = "";
        txtLname.Text = "";
        txtEmail.Text = "";
        txtUserName.Text = "";
        txtAddress.Text = "";
        txtPass.Text = "";
        txtConfirmPass.Text = "";
        txtPass.Text = "";
        DdlGender.SelectedItem.Text = "";
        txtAge.Text = "";

        //        SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);

        //        SqlCommand cmd = new SqlCommand("insert into tbl_Patient(P_Fname,P_LName,P_Adress,P_Email,P_UserName,P_Password,P_Gender,P_Age) values(@fname,@lname,@address,@email,@userName,@password,@gender,@age)", con);

        //        cmd.Parameters.AddWithValue("@fname", txtFname.Text);
        //        cmd.Parameters.AddWithValue("@lname", txtLname.Text);
        //        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        //        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        //        cmd.Parameters.AddWithValue("@userName", txtUserName.Text);
        //        cmd.Parameters.AddWithValue("@password", txtPass.Text);
        //        cmd.Parameters.AddWithValue("@gender", Convert.ToString(DdlGender.SelectedItem.Text));
        //        cmd.Parameters.AddWithValue("@age", Convert.ToInt32(txtAge.Text));
        //        con.Open();
        //        int rowsAffected = cmd.ExecuteNonQuery();

        //        if (rowsAffected == 1)
        //        {
        //            string script = @"<script language=""javascript"">
        //        alert('Information have been Saved Successfully.......!!!!!.');
        //       </script>;";
        //            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);

        //        }
        //        else
        //        {
        //            string script = @"<script language=""javascript"">
        //        alert('Error');
        //       </script>;";
        //            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);
        //        }
        //        con.Close();
    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {

    }
}