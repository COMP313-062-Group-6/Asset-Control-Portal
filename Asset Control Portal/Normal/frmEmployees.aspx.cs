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

public partial class Normal_frmEmployees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
            BLLCluster obj = new BLLCluster();
            DropDownList1.DataSource = obj.GetAllCluster();
            DropDownList1.DataTextField = "clustername";
            DropDownList1.DataValueField = "clusterid";
            DropDownList1.DataBind();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BLLEmployee obj = new BLLEmployee();
        obj.Name = TextBox1.Text;
        obj.ClusterId = Convert.ToInt32(DropDownList1.SelectedValue);
        obj.UPICode = TextBox2.Text;
        obj.JobType = DropDownList2.SelectedItem.Text;
        obj.Designation = TextBox5.Text;
        obj.EmailId = TextBox3.Text;
        obj.ManagerId = Convert.ToInt32( Session["EMPID"]);
        if (TextBox4.Text == string.Empty)
        {
            obj.Description = "No Description";
        }
        else
        {
            obj.Description = TextBox4.Text;
        }
        obj.AddNormalEmployee();
        Label1.Text = "Saved Successfully...";

        TextBox5.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox1.Text = string.Empty;
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
