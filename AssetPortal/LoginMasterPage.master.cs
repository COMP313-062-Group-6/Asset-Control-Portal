using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class LoginMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.centennialcollege.ca/");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://my.centennialcollege.ca/cp/home/displaylogin");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://library.centennialcollege.ca/library");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.centennialcollege.ca/sitesearch.aspx?");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.centennialcollege.ca/college-events-2014-2015/");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.centennialcollege.ca/webforms/international/apply-online.html");
    }
}
