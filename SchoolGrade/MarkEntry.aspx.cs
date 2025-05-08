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
            string sql1 = "SELECT DISTINCT test from examschedule";
            db.FillDropdownListBox(sql1, DropDownList1);

            
        }
    }
  
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string test = DropDownList1.SelectedValue;
      
        string subject = DropDownList2.SelectedValue;
        string dt=txt_examdate.Text;
        string rollno=txt_rollno.Text;
        string mark=txt_mark.Text;

        if(!db.CheckRollNumber(rollno))
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "newFunc", "myFunc()", true);
            return;

        }

        string sql = "insert into Marks values('" + rollno + "','" + dt + "','" + test + "','" + subject + "','" + mark + "')";
        string rv = db.InsertQuery(sql);

        sql = "select RollNo,StudentName,SClass,SSection,Test,Subject,Mark from Marks_view where DateOfExam='" + dt + "' and Test='" + test + "' and Subject='" + subject + "'";
        db.FillGrid(sql, GridView1);
    }
    

    

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string test = DropDownList1.SelectedValue;
        string sql = "select distinct subject from examschedule where test='"+test+"'";
        db.FillDropdownListBox(sql, DropDownList2);
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string test = DropDownList1.SelectedValue;
        string subject = DropDownList2.SelectedValue;
        string dt=db.GetExamDate(test,subject);
        txt_examdate.Text = dt;

       // string sql = "select RollNo,StudentName,SClass,Section,Test,Subject,Mark from Marks_view where DateOfExam='" + dt + "' and Test='" + test + "' and Subject='" + subject + "'";

        string sql = "select RollNo,StudentName,SClass,SSection,DateOfExam,Test,Subject,Mark from Marks_view where DateOfExam='" + dt + "' and Test='" + test + "' and Subject='" + subject + "'";        
        
        db.FillGrid(sql, GridView1);
    }
}
