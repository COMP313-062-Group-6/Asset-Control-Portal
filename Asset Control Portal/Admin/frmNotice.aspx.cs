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

public partial class Admin_frmNotice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BLLNotice obj = new BLLNotice();
        GridView1.DataSource = obj.GetAllNotice();
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BLLNotice obj = new BLLNotice();
        obj.Notice = TextBox1.Text;
        obj.Date = Convert.ToDateTime( System.DateTime.Now.ToShortDateString());
        obj.AddNotice();
        Label1.Text = "Saved...";

        TextBox1.Text = string.Empty;
        
        GridView1.DataSource = obj.GetAllNotice();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BLLNotice obj = new BLLNotice();
        GridView1.DataSource = obj.GetAllNotice();
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int CNO = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        BLLNotice obj = new BLLNotice();
        obj.DeleteNotice(CNO);
        GridView1.DataSource = obj.GetAllNotice();
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("../Login.aspx");
    }
}
