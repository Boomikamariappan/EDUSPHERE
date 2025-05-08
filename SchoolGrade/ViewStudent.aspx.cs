using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    dbio db = new dbio();

    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string sql1 = "select * from student";
            db.FillGrid(sql1, GridView1);

            sql1 = "SELECT DISTINCT sclass from student";
            db.FillDropdownListBox(sql1, DropDownList1);

            sql1 = "select distinct [Ssection] from student";
            db.FillDropdownListBox(sql1, DropDownList2);
        }

    }


    protected void btn_show_Click(object sender, EventArgs e)
    {
        string sclass = DropDownList1.SelectedValue;
        string ssection = DropDownList2.SelectedValue;

        string sql1 = "select * from student where sclass='"+sclass+"' and [SSection]='"+ssection+"'";
        db.FillGrid(sql1, GridView1);
    }
}
