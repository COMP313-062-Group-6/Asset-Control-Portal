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

public partial class Normal_NumberList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BLLIssuedNumber obj = new BLLIssuedNumber();
        GridView1.DataSource = obj.GetAllNumbers2(Convert.ToInt32(Session["EmpNbr"]));
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
        BLLIssuedNumber OBJ = new BLLIssuedNumber();
        OBJ.DeleteNumber(ENO);
        GridView1.DataSource = OBJ.GetAllNumbers2(Convert.ToInt32(Session["EmpNbr"]));
        GridView1.DataBind();
    }
}
