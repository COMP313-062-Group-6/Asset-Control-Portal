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

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Label1.Text = "Welcome " + Session["EmployeeName"].ToString ();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://all.alcatel-lucent.com/wps/portal/!ut/p/kcxml/04_Sj9SPykssy0xPLMnMz0vM0Y_QjzKLd4x3tNQvyHZUBACVOMvO?LMSG_CABINET=Internal_Resources&amp;amp;LMSG_CONTENT_FILE=Features_2010/BusGroup_CorpFunct_Features/Feature_Item_012623.xml");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://all.alcatel-lucent.com/wps/portal/!ut/p/kcxml/04_Sj9SPykssy0xPLMnMz0vM0Y_QjzKLt4z38nbSL8h2VAQAiXfVBA!!");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://all.alcatel-lucent.com/wps/portal/!ut/p/kcxml/04_Sj9SPykssy0xPLMnMz0vM0Y_QjzKLt4x38XTRL8h2VAQAj5eZUA!!");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://all.alcatel-lucent.com/wps/portal/!ut/p/kcxml/04_Sj9SPykssy0xPLMnMz0vM0Y_QjzKLd4x3tNQvyHZUBACVOMvO?LMSG_CABINET=Internal_Resources&amp;amp;LMSG_CONTENT_FILE=Features/BusGroup_CorpFunct_Features/Feature_Item_004809.xml");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://all1.us.alcatel-lucent.com/it/projectcommunications/pcrefresh/Pages/default.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://all1.us.alcatel-lucent.com/it/projectcommunications/printerrefresh/Pages/default.aspx");
    }
}
