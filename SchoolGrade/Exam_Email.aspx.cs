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
            string sql = "select distinct dateofexam from Exam_Mail";
            db.FillDropdownListBox(sql, DropDownList1);
            
        }
    }
  
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string dt = DropDownList1.SelectedValue;
        string sclass = DropDownList2.SelectedValue;
        string sql = "select * from Exam_Mail where sclass='" + sclass + "' and dateofexam='"+dt+"'";
        db.FillGrid(sql, GridView1);
    }
    

    public void ShowEvent()
    {
        string sql = "select * from Event";
        db.FillGrid(sql, GridView1);
    }


    protected void btnSendMail_Click(object sender, EventArgs e)
    {
        string rv = "";
        string dateofexam = DropDownList1.SelectedValue;
        string sclass = DropDownList2.SelectedValue;
        ArrayList mailid = db.GetStudentEMail(sclass);
        string msg = db.GetExamMessage(sclass,dateofexam);

        //Response.Write(msg);
       // Response.Write(mailid);
        for (int i = 0; i < mailid.Count; i++)
        {
            string toid = mailid[i].ToString();
            rv = db.SendEMail(toid, msg,"Exam Notification");
            System.Threading.Thread.Sleep(5000);
        }
       //Response.Write(rv);
        lbl_message.Text = rv + " to " + mailid.Count+" Students";


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string dt = DropDownList1.SelectedValue;
        string sql = "select distinct sclass from Exam_Mail where dateofexam='"+dt+"'";
        db.FillDropdownListBox(sql, DropDownList2);
    }
}
