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

public partial class Normal_frmAsset : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("../Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            BLLIssuedRegister obj = new BLLIssuedRegister();
            obj.Asset = DropDownList1.SelectedItem.Text;
            obj.IssuedDate = Convert.ToDateTime(TextBox1.Text);
            obj.SerialNo = TextBox2.Text;
            obj.AssetManufacturer = TextBox3.Text;
            obj.EmployeeId = Convert.ToInt32(Session["EmpCode"]);
            obj.AddAsset();
            Label1.Text = "Saved Successfully...";
            DropDownList1.SelectedIndex = 0;
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
        }
        catch (Exception ex)
        {
            TextBox1.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try{
        BLLIssuedNumber obj = new BLLIssuedNumber();
        obj.ContactNo = TextBox5.Text;
        obj.SimNo = TextBox6.Text;
        if (TextBox7.Text == string.Empty)
        {
            obj.MaxCreditLimit = 0;
        }
        else
        {
            obj.MaxCreditLimit = Convert.ToInt32(TextBox7.Text);
        }
        obj.IssuedDate = Convert.ToDateTime(TextBox4.Text);
        obj.EmployeeId = Convert.ToInt32(Session["EmpCode"]);
        obj.AddNumber();
        Label2.Text = "Saved..";

        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        TextBox7.Text = string.Empty;
        TextBox4.Text = string.Empty;
        }
        catch (Exception ex)
        {
            TextBox1.Text = "Enter valid format..";
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex == 1)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
        else if (DropDownList2.SelectedIndex == 2)
        {
            Panel3.Visible = true;
            Panel2.Visible = false;
        }
        else
        {
            Panel2.Visible = false;
            Panel3.Visible = false;
        }
    }
}
