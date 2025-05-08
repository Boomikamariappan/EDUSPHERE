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

public partial class GetUsers : System.Web.UI.Page
{
    dbio db = new dbio();
    MyJSON json = new MyJSON();

    protected void Page_Load(object sender, EventArgs e)
    {
       
        string sname = Request.QueryString["sname"];
        string regno = Request.QueryString["regno"];
        string branch = Request.QueryString["branch"];
        

        string rv = "";
        if ((sname != null) && (regno != null) && (branch != null))
        {
            regno = regno.Trim();

            string sql = "insert into student values('"+regno+"','" + sname + "','" + branch + "')";
            rv=db.InsertQuery(sql);
        }
        else
        {
            rv = "Enter Value for all Column";
        }
        rv = "{\"sql\":[{\"result\":\"" + rv + "\"}]}";
        Response.Write(rv);

    }
}
