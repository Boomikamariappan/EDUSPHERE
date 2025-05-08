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
            string sql1 = "SELECT DISTINCT SClass from examschedule";
            db.FillDropdownListBox(sql1, DropDownList1);

            
        }
    }
  
 
    

    

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sclass = DropDownList1.SelectedValue;
        string sql = "select distinct SSection from  Weakstudent_view where SClass='" + sclass + "'";
        db.FillDropdownListBox(sql, DropDownList2);
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string SClass = DropDownList1.SelectedValue;
        string SSection = DropDownList2.SelectedValue;
        
        

       // string sql = "select RollNo,StudentName,SClass,Section,Test,Subject,Mark from Marks_view where DateOfExam='" + dt + "' and Test='" + test + "' and Subject='" + subject + "'";

        //string sql = "select RollNo,StudentName,Portion from Weakstudent_view where SClass='" + SClass + "' and SSection='" + SSection + "'";        

        string sql = "select RollNo,StudentName,SClass,SSection,Subject,Portions As [Weak in Topic]  from Weakstudent_view where SSection='"+SSection+"' and SClass='"+SClass+"'";
        
        db.FillGrid(sql, GridView1);
    }
}
