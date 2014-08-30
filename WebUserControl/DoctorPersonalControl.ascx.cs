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
using System.IO;

public partial class UserControl_DoctorPersonalControl : System.Web.UI.UserControl
{
    public int n;
    int year, month;
    protected void Page_Load(object sender, EventArgs e)
    {

        
           


        

        //PlaceHolder1.Controls.Add(LoadControl("~/UserControl/DocProControl.ascx"));
        if (!IsPostBack)
        {


            DateTime tnow = DateTime.Now;
            ArrayList ayear = new ArrayList();

            int i;

            for (i = 1980; i <= 2027; i++)
            {
                ayear.Add(i);



            }

            ArrayList amonth = new ArrayList();

            for (i = 1; i <= 12; i++)
            {
                amonth.Add(i);
            }

            ddlYear.DataSource = ayear;

            ddlYear.DataBind();

            ddlMonth.DataSource = amonth;

            ddlMonth.DataBind();

            ddlYear.SelectedValue = tnow.Year.ToString();

            ddlMonth.SelectedValue = tnow.Month.ToString();


            year = Int32.Parse(ddlYear.SelectedValue);

            month = Int32.Parse(ddlMonth.SelectedValue);

            BindDays(year, month);

            ddlDay.SelectedValue = tnow.Day.ToString();

        }

    }

    private bool CheckLeapYear(int year)
    {

        if ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))

            return true;

        else return false;



    }
    private void BindDays(int year, int month)
    {

        int i;

        ArrayList aday = new ArrayList();

        switch (month)
        {

            case 1:

            case 3:

            case 5:

            case 7:

            case 8:

            case 10:

            case 12:

                for (i = 1; i <= 31; i++)
                {

                    aday.Add(i);



                }

                break;

            case 2:



                if (CheckLeapYear(year))
                {



                    for (i = 1; i <= 29; i++)





                        aday.Add(i);

                }



                else
                {



                    for (i = 1; i <= 28; i++)



                        aday.Add(i);





                }



                break;

            case 4:

            case 6:

            case 9:

            case 11:

                for (i = 1; i <= 30; i++)

                    aday.Add(i);

                break;

        }



        ddlDay.DataSource = aday;

        ddlDay.DataBind();

    }
    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        year = Int32.Parse(ddlYear.SelectedValue);

        month = Int32.Parse(ddlMonth.SelectedValue);

        BindDays(year, month);
    }
    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {

        year = Int32.Parse(ddlYear.SelectedValue);

        month = Int32.Parse(ddlMonth.SelectedValue);

        BindDays(year, month);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        string filename = string.Empty;


        if (Session["uname"] != null)
        {

            string strdate = ddlDay.SelectedValue + "/" + ddlMonth.SelectedValue + "/" + ddlYear.SelectedValue;
            DateTime dt = Convert.ToDateTime(strdate);
            SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select U_Name from tbl_Doctor where U_Name='" + Session["uname"].ToString() + "'", con);

            if (FileUpload1.HasFile)
            {
                
                FileUpload1.SaveAs(Server.MapPath("~/Image/" + FileUpload1.FileName));



                SqlCommand cmd = new SqlCommand("insert into tbl_Doctor(Doc_Fname,Doc_Lname,Doc_Address,Doc_Email,Doc_Gender,Doc_Dob,Doc_NMC_Reg,Doc_Charges,Doc_Image,U_Name)values(@fname,@lname,@address,@email,@gender,@dob,@nmcReg,@charge,@image,@unames)", con);
                cmd.Parameters.AddWithValue("@fname", txtFname.Text);
                cmd.Parameters.AddWithValue("@lname", txtLname.Text);
                cmd.Parameters.AddWithValue("@address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@dob", dt.ToShortDateString());
                cmd.Parameters.AddWithValue("@nmcReg", Convert.ToInt32(txtNmcReg.Text));
                cmd.Parameters.AddWithValue("@charge", txtCharge.Text);
                cmd.Parameters.AddWithValue("@unames", Session["uname"].ToString());

                cmd.Parameters.AddWithValue("@image",FileUpload1.FileName);

                con.Open();
                int n = cmd.ExecuteNonQuery();
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
            }
        }
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        
    }
}