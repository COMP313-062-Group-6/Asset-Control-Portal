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

public partial class Admin_frmEmployees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BLLCircle obj = new BLLCircle();
            DropDownList3.DataSource = obj.GetAllCircle();
            DropDownList3.DataTextField = "circlename";
            DropDownList3.DataValueField = "circleid";
            DropDownList3.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BLLEmployee obj = new BLLEmployee();
        obj.Name = TextBox1.Text;
        obj.ClusterId =Convert.ToInt32( DropDownList1.SelectedValue);
        obj.UPICode = TextBox2.Text;
        obj.JobType = DropDownList2.SelectedItem.Text;
        obj.Designation = "Manager";
        obj.EmailId = TextBox3.Text;
        if (TextBox4.Text == string.Empty)
        {
            obj.Description = "No Description";
        }
        else
        {
            obj.Description = TextBox4.Text;
        }
        obj.UserId = TextBox5.Text;
        obj.Password = TextBox6.Text;
        obj.AddEmployee();
        Label1.Text = "Saved Successfully...";
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        DropDownList3.SelectedIndex = 0;

        
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DropDownList1.Items.Clear();
            DropDownList1.Items.Add("Select Cluster");
            BLLCluster obj = new BLLCluster();
            DropDownList1.DataSource = obj.GetClusterforCircle(Convert.ToInt32(DropDownList3.SelectedValue));
            DropDownList1.DataTextField = "clustername";
            DropDownList1.DataValueField = "clusterid";
            DropDownList1.DataBind();
            if (DropDownList1.Items.Count == 0)
            {
                DropDownList1.Items.Add("No records exist..");
            }
        }
        catch (Exception ex)
        {
            DropDownList1.Items.Add("Select Valid Cluster");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("../Login.aspx");
    }
}
