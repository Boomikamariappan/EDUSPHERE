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


            ShowEvent();
        }
    }
  
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string title = TextBox1.Text;
        string eventname = TextBox2.Text;
        string eventby = TextBox3.Text;
        string date = TextBox4.Text;
        string eligibility = TextBox5.Text;

        string sql = "delete * from Event";
        db.DeleteQuery(sql);


        sql = "insert into Event values('" + title + "','" + eventname + "','" + eventby + "','" + date + "','" + eligibility + "')";
        string rv = db.InsertQuery(sql);
        ShowEvent();
        
    }
    

    public void ShowEvent()
    {
        string sql = "select * from Event";
        db.FillGrid(sql, GridView1);
    }

       
}
