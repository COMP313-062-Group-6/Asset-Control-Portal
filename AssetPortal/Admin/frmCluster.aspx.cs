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

public partial class Admin_frmCluster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BLLCircle obj = new BLLCircle();
            DropDownList1.DataSource = obj.GetAllCircle();
            DropDownList1.DataTextField = "circlename";
            DropDownList1.DataValueField = "circleid";
            DropDownList1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BLLCluster obj = new BLLCluster();
        obj.ClusterName = TextBox1.Text;
        obj.CircleId =Convert.ToInt32( DropDownList1.SelectedValue);
        obj.AddCluster();
        Label1.Text = "Saved Successfully..";
        TextBox1.Text = string.Empty;
        DropDownList1.SelectedIndex = 0;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("../Login.aspx");
    }
}
