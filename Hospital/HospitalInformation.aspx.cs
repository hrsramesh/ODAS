using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hospital_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSaveHospDetails_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_Hospital(H_Name,H_Location,H_RegNo,H_Phoneno)values(@name,@location,@regNo,@phoneno)", con);
        cmd.Parameters.AddWithValue("@name", txtHospitalName.Text);
        cmd.Parameters.AddWithValue("@location", txtHospitalLocation.Text);
        cmd.Parameters.AddWithValue("@regNo", Convert.ToInt32(txtHospitalRegNo.Text));
        cmd.Parameters.AddWithValue("@phoneno", Convert.ToInt32(txtHospitalPhone.Text));

        cmd.ExecuteNonQuery();


        //        int rowsAffected = cmd.ExecuteNonQuery();
        //        if (rowsAffected == 1)
        //{
        string script = @"<script language=""javascript"">
                alert('Information have been Saved 
Successfully.......!!!!!.');
        </script>;";
        Page.ClientScript.RegisterStartupScript(this.GetType(),

"myJScript1", script);

        //        }
        //        else
        //        {
        //            string script = @"<script language=""javascript"">
        //        alert('Error');
        //       </script>;";
        //            Page.ClientScript.RegisterStartupScript(this.GetType(), 

        //"myJScript1", script);
        //        }
        con.Close();

    }
}