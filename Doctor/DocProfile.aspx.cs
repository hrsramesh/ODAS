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

public partial class Doctor_Default : System.Web.UI.Page
{
        public int n;
    int year, month;
    protected void Page_Load(object sender, EventArgs e)
    {    

        if (Session["uname"] != null)
        {
            SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);


            SqlDataAdapter da = new SqlDataAdapter("select U_Name from tbl_Doctor where U_Name='" + Session["uname"] + "' ", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count>0)
            {


                SqlConnection con1 = new SqlConnection(AppConfig.DBConnectionString);

                SqlDataAdapter sda = new SqlDataAdapter("select * from tbl_Doctor where U_Name='" + Session["uname"] + "' ", con1);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
                


}
            else
            {
                PhPersonalDetail.Controls.Add(LoadControl("~/WebUserControl/DoctorPersonalControl.ascx"));
            }


        }


        if (ViewState["Controls"] != null)
            n = (int)ViewState["Controls"];
        if (!Page.IsPostBack)
            n = 0;
        for (int i = 0; i <= n; i++)
        {
            UserControl uc = LoadControl("~/WebUserControl/DocProControl.ascx") as UserControl;
            uc.ID = "test" + i.ToString();
            PlaceHolder1.Controls.Add(uc);



        }

        //PlaceHolder1.Controls.Add(LoadControl("~/UserControl/DocProControl.ascx"));
    }  


    
protected void Button2_Click(object sender, EventArgs e)
{
    
    Control uc = LoadControl("~/WebUserControl/DocProControl.ascx") as Control;
        uc.ID = "TestControl" + n++.ToString();
        PlaceHolder1.Controls.Add(uc);
        ViewState["Controls"] = n;
}

}
    
   
    
