using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Patient_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);
        SqlCommand cmd = new SqlCommand("select * from tbl_Doctor", con);
        con.Open();
        ddlSearchbyDoctor.DataSource = cmd.ExecuteReader();

        ddlSearchbyDoctor.DataTextField = "Doc_Fname";
        ddlSearchbyDoctor.DataValueField = "Doc_Id";
        ddlSearchbyDoctor.DataBind();
        con.Close();
    }


    protected void btnSearchDocName_Click(object sender, EventArgs e)
    {
       
    }
}