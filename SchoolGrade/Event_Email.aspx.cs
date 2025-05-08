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
            string sql = "select * from Student";
            db.FillGrid(sql, GridView1);

            sql = "select * from EventMessage";
            db.FillGrid(sql, GridView2);
            
        }
    }
  
    
    protected void btnSendMail_Click(object sender, EventArgs e)
    {
        string rv = "";
        
        ArrayList mailid = db.GetAllStudentEMail();
        string msg = db.GetEventMessage();

        //Response.Write(msg);
       // Response.Write(mailid);
        for (int i = 0; i < mailid.Count; i++)
        {
            string toid = mailid[i].ToString();
            rv = db.SendEMail(toid, msg,"Event Notification");
            System.Threading.Thread.Sleep(5000);
        }
       //Response.Write(rv);
        lbl_message.Text = rv + " to " + mailid.Count+" Students";

       
    }
}
