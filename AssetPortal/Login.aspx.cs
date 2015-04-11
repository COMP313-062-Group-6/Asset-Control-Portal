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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           if (Request.Cookies["UID"] != null)
            {
                HttpCookie LoginCookie = Request.Cookies["UID"];
                TextBox1.Text = LoginCookie.Value;
            }
        }
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

        BLLEmployee obj = new BLLEmployee();
        int a = obj.AuthenticateUser(TextBox1.Text,TextBox2.Text);
        if (a > 0)
        {
            string ut = obj.Designation;
            Session["EmployeeName"] = obj.Name;
            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, TextBox1.Text, DateTime.Now, DateTime.Now.AddMinutes(20), true, ut, FormsAuthentication.FormsCookiePath);
            string hash = FormsAuthentication.Encrypt(ticket);
            HttpCookie mycookie = new HttpCookie(FormsAuthentication.FormsCookieName);
            mycookie.Value = hash;
            mycookie.Expires = ticket.Expiration;
            Response.Cookies.Add(mycookie);
            if (CheckBox1.Checked == true)
            {
                HttpCookie LoginCookie = new HttpCookie("UID");
                LoginCookie.Value = TextBox1.Text;
                LoginCookie.Expires = DateTime.Now.AddMonths(12);
                Response.Cookies.Add(LoginCookie);

            }
            Session["EMPID"] = obj.EmployeeId;
            if (ut == "Manager")
            {
                Response.Redirect("~/Normal/Home.aspx");
            }
            else if (ut == "Admin")
            {
                Response.Redirect("~/Admin/AdminHome.aspx");
            }
            else
            {
            }
        
            
        
        }
        
        else
        {
            Label1.Text = "Invalid UserId or Password";
        }
    }
    catch(Exception ex)
        {
            Label1.Text = "Invalid UserId or Password";
        }


    }
}
