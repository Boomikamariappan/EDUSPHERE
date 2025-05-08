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
        string name = txt_name.Text;
        string sclass = txt_class.Text;
        string section = txt_section.Text;
        string mail = txt_mailid.Text;
        string mobile = txt_mobile.Text;

        string sql = "delete * from student where rollno='" + rollno + "'";
        db.DeleteQuery(sql);


        sql = "insert into student values('" + rollno + "','" + name + "','" + sclass + "','" + section + "','" + mail + "','" + mobile + "')";
        string rv = db.InsertQuery(sql);
        ShowStudent(rollno);
        
    }
    

    public void ShowStudent()
    {
        string sql = "select * from student";
        db.FillGrid(sql, GridView1);
    }

    public void ShowStudent(string rollno)
    {
        string sql = "select * from student where rollno='"+rollno+"'";
        db.FillGrid(sql, GridView1);
    }


    protected void btn_edit_Click(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;
        if (rollno.Equals(""))
            return;
        ArrayList lst=db.GetStudentByRollno(rollno);
        if (lst.Count > 0)
        {
            txt_name.Text = lst[1].ToString();
            txt_class.Text = lst[2].ToString();
            txt_section.Text = lst[3].ToString();
            txt_mailid.Text = lst[4].ToString();
            txt_mobile.Text = lst[5].ToString();

            ShowStudent(rollno);
        }
        
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;
     
        string sql = "delete * from student where rollno='" + rollno + "'";
        db.DeleteQuery(sql);
        ShowStudent(rollno);

        txt_name.Text = "";
        txt_class.Text = "";
        txt_section.Text = "";
        txt_mailid.Text = "";
        txt_mailid.Text = "";
        txt_mobile.Text = "";
    }
}
