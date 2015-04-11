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

public partial class Normal_frmIssuedNumber : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BLLIssuedNumber obj = new BLLIssuedNumber();
        obj.ContactNo = TextBox1.Text;
        obj.SimNo = TextBox2.Text;
        obj.MaxCreditLimit = Convert.ToInt32(TextBox3.Text);
        obj.IssuedDate = Convert.ToDateTime(TextBox4.Text);
        obj.EmployeeId = Convert.ToInt32(Session["EmpCode"]);
        obj.AddNumber();
        Label1.Text = "Saved..";

        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}
