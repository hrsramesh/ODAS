using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class UserControl_ScheduleControl : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection(AppConfig.DBConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        PlaceHolder1.Visible = false;
        if (!IsPostBack)
        {
            ddlspec.Items.Clear();
            ddlHospital.Items.Clear();
            fillData();
            ddlspec.Items.Insert(0, "--Select Specialization--");
            ddlHospital.Items.Insert(0, "--Select Hospital--");
        }
        if(IsPostBack)
        {
            fillData();
            ddlspec.Items.Insert(0, "--Select Specialization--");
            ddlHospital.Items.Insert(0, "--Select Hospital--");
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string var = "";
        if (Session["uname"] != null)
        {
            for (int i = 0; i < CheckBoxList1.Items.Count - 1; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if (var == "")
                    
                        var = CheckBoxList1.Items[i].Text;
                 
                    else

                    var +=","+ CheckBoxList1.Items[i].Text.ToString();
                
                }
            }
            SqlCommand cmd = new SqlCommand("insert into tbl_Doctor_Schedule(HospitalName,Specialization,Schedule_Type,Day,Start_Time,End_Time,Hours,U_Name)values(@hname,@Spec,@scheduleType,@day,@sTime,@ETime,@hour,@uname)", con);


            cmd.Parameters.AddWithValue("@day", var);
            cmd.Parameters.AddWithValue("@hname",ddlHospital.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Spec",ddlspec.SelectedItem.Text);

            cmd.Parameters.AddWithValue("@scheduleType", RadioButtonList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@sTime", (ddlTime.SelectedItem.Text + ddlFrom.SelectedItem.Text));
            cmd.Parameters.AddWithValue("@ETime", (ddlTo.SelectedItem.Text + ddlToo.SelectedItem.Text));
            cmd.Parameters.AddWithValue("@hour", txtHours.Text);
            cmd.Parameters.AddWithValue("@uname", Session["uname"].ToString());
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
            con.Close();
        }
    }
    protected void fillData()
    {
        ddlspec.Items.Clear();
        
        SqlCommand cmd = new SqlCommand("select * from tbl_Specialization", con);
        SqlCommand cmd1 = new SqlCommand("select * from tbl_Hospital", con);
        con.Open();
    ddlspec.DataSource = cmd.ExecuteReader();
    

        ddlspec.DataTextField = "Title";
        ddlspec.DataValueField= "Sp_Id";
        ddlspec.DataBind();
        con.Close();
        con.Open();
        ddlHospital.DataSource = cmd1.ExecuteReader();
        ddlHospital.DataTextField = "H_Name";
        ddlHospital.DataValueField = "H_Id";
        ddlHospital.DataBind();
        con.Close();
    }
     


    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "1")
        {
            PlaceHolder1.Visible = true;
            foreach(ListItem li in CheckBoxList1.Items)
            {
                li.Selected = true;
            }
        }
        if (RadioButtonList1.SelectedValue == "2")
        {
            PlaceHolder1.Visible = true;
        }
    }


    protected void ddlTo_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (ddlTime.SelectedIndex != null)
        {
            int a = Convert.ToInt32(ddlTime.SelectedValue.ToString());
            int b = Convert.ToInt32(ddlTo.SelectedValue.ToString());
            string c = Convert.ToString(b - a);
            txtHours.Text = c;
        }
    }
}