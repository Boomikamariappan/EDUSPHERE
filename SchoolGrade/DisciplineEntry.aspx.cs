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
            string dt = db.GetCurrentDate();
            txt_dt.Text = dt;
            ShowStudent();
        }
    }
  
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;
        string dt = txt_dt.Text;
        string mis = txt_mis.Text;
        string action = txt_action.Text;

        string sql = "delete * from  Discipline where rollno='"+rollno + "'";
        string rv = db.DeleteQuery(sql);

        sql = "insert into Discipline values('" + rollno + "','" + dt + "','" + mis + "','" + action + "')";
        rv = db.InsertQuery(sql);
       // Response.Write(rv);
        ShowStudent(rollno);
        
    }
    

    public void ShowStudent()
    {
        string sql = "select * from discipline_view";
        db.FillGrid(sql, GridView1);
    }

    public void ShowStudent(string rollno)
    {
        string sql = "select * from discipline_view where rollno='"+rollno+"'";
        db.FillGrid(sql, GridView1);
    }

    public void resetTextBox()
    {
        txt_regno.Text = "";
        txt_action.Text = "";

              
       
    }

    protected void btn_load_Click(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;
        if(db.CheckRollNumber(rollno))
        {
            string sname=db.GetStudentName(rollno);
            lbl_name.Text = sname;
        }
        else
        {
            lbl_name.Text = "Roll Number Not Found ..";
        }
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        string rollno = txt_regno.Text;
        
        string sql = "delete * from  Discipline where rollno='" + rollno + "'";
        string rv = db.DeleteQuery(sql);
        lblmsg.Text = rv;

        ShowStudent(rollno);
    }
}
