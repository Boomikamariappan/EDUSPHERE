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


            ShowStudent();
        }
    }
  
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;

        string test = drp_test.SelectedValue;
        string subject = drp_subject.SelectedValue;
        string dt = txt_date.Text;
        string mark = txt_mark.Text;

        string sql = "delete * from marks where rollno='" + rollno + "' and test='"+test+"' and subject='"+subject+"'";
        db.DeleteQuery(sql);


        sql = "insert into marks values('" + rollno + "','" + dt + "','" + test + "','" + subject + "','" + mark + "')";
        string rv = db.InsertQuery(sql);
        ShowStudent(rollno);
        
    }
    

    public void ShowStudent()
    {
        string sql = "select * from marks";
        db.FillGrid(sql, GridView1);
    }

    public void ShowStudent(string rollno)
    {
        string sql = "select * from marks where rollno='"+rollno+"'";
        db.FillGrid(sql, GridView1);
    }


    protected void btn_edit_Click(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;
        if (rollno.Equals(""))
            return;
        string sql = "select test from marks where rollno='" + rollno + "'";
        db.FillDropdownListBox(sql, drp_test);

        ShowStudent(rollno);

    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;
     
        string sql = "delete * from student where rollno='" + rollno + "'";
        db.DeleteQuery(sql);
        ShowStudent(rollno);

        
        txt_date.Text = "";
        txt_date.Text = "";
        txt_mark.Text = "";
    }
    protected void drp_test_SelectedIndexChanged(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;
        string test = drp_test.SelectedValue;
        string sql = "select subject from marks where rollno='" + rollno + "' and test='"+test+"'";
        db.FillDropdownListBox(sql, drp_subject);
    }
    protected void drp_subject_SelectedIndexChanged(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;
        string test = drp_test.SelectedValue;
        string subject = drp_subject.SelectedValue;
        ArrayList lst = db.GetMark(rollno, test, subject);
        txt_date.Text = lst[0].ToString();
        txt_mark.Text = lst[1].ToString();
    }
}
