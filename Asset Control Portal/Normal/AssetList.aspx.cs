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

public partial class Normal_AssetList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BLLIssuedRegister obj = new BLLIssuedRegister();
        GridView1.DataSource = obj.GetAllAssets(Convert.ToInt32(Session["EmpAsset"]));
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("../Login.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ENO = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        BLLIssuedRegister OBJ = new BLLIssuedRegister();
        OBJ.DeleteAsset(ENO);
        GridView1.DataSource = OBJ.GetAllAssets(Convert.ToInt32(Session["EmpAsset"]));
        GridView1.DataBind();
    }
}
