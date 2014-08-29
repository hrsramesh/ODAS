using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    public int n;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (ViewState["Controls"] != null)
            n = (int)ViewState["Controls"];
        if (!Page.IsPostBack)
            n = 0;
        for (int i = 0; i <= n; i++)
        {
            UserControl uc = LoadControl("~/WebUserControl/ScheduleControl.ascx") as UserControl;
            uc.ID = "test" + i.ToString();
            PlaceHolder1.Controls.Add(uc);



        }
        
    }
    protected void btnSchedule_Click(object sender, EventArgs e)
    {
        Control uc = LoadControl("~/WebUserControl/ScheduleControl.ascx") as Control;
        uc.ID = "TestControl" + n++.ToString();
        PlaceHolder1.Controls.Add(uc);
        ViewState["Controls"] = n;
    }
}