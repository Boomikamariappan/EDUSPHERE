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

public partial class Default2 : System.Web.UI.Page
{
    dbio db = new dbio();

  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
           // string sql1 = "SELECT DISTINCT test from marks_view";
           // db.FillDropdownListBox(sql1, DropDownList1);

            string sql1 = "SELECT DISTINCT sclass from marks_view";
            db.FillDropdownListBox(sql1, drp_sclass);

            
        }
    }
  
    

    

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string test = DropDownList1.SelectedValue;
        string sql = "select distinct subject from marks_view where test='" + test + "'";
        db.FillDropdownListBox(sql, DropDownList2);
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string test = DropDownList1.SelectedValue;
        string subject = DropDownList2.SelectedValue;
        string ssection = drp_ssection.SelectedValue;
        string dt=db.GetExamDate(test,subject);
        txt_examdate.Text = dt;

       // string sql = "select RollNo,StudentName,SClass,Section,Test,Subject,Mark from Marks_view where DateOfExam='" + dt + "' and Test='" + test + "' and Subject='" + subject + "'";

        string sql = "select RollNo,StudentName,SClass,SSection,DateOfExam,Test,Subject,Mark from Marks_view where DateOfExam='" + dt + "' and Test='" + test + "' and Subject='" + subject + "' and Ssection='"+ssection+"' order by sclass,ssection";        
        
        db.FillGrid(sql, GridView1);
    }
    protected void drp_sclass_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sclass = drp_sclass.SelectedValue;
        string sql1 = "SELECT DISTINCT ssection from marks_view where sclass='"+sclass+"'";
        db.FillDropdownListBox(sql1, drp_ssection);

    }
    protected void drp_ssection_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sclass = drp_sclass.SelectedValue;
        string ssection = drp_ssection.SelectedValue;

        string sql1 = "SELECT DISTINCT test from marks_view where sclass='"+sclass+"' and SSection='"+ssection+"'";
        db.FillDropdownListBox(sql1, DropDownList1);

       
    }
}
