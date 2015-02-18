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

public partial class Normal_EmployeeList : System.Web.UI.Page
{
    int ENO; 
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            RefreshData();   
        }
    }

    private void RefreshData()
    {
        BLLEmployee obj = new BLLEmployee();
        GridView1.DataSource = obj.GetEmployeesforManager(Convert.ToInt32(Session["EMPID"]));
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        RefreshData();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        RefreshData();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ENO = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        BLLEmployee OBJ = new BLLEmployee();
        OBJ.DeleteEmployee(ENO);
        RefreshData();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowState != DataControlRowState.Alternate && e.Row.RowState != DataControlRowState.Selected && e.Row.RowState != DataControlRowState.Normal && e.Row.RowState != DataControlRowState.Insert)
        {
            DropDownList ddl = (DropDownList)e.Row.FindControl("DropDownList1");
            Label lbl = (Label)e.Row.FindControl("lblCircle");
            DropDownList ddlc = (DropDownList)e.Row.FindControl("DropDownList2");
            Label lblc = (Label)e.Row.FindControl("lblCluster");

            BLLCircle obj = new BLLCircle();
            ddl.DataSource = obj.GetAllCircle();
            ddl.DataTextField = "circleName";
            ddl.DataValueField = "circleid";
            ddl.DataBind();

            BLLCluster obj1 = new BLLCluster();
            ddlc.DataSource = obj1.GetClusterforCircle(Convert.ToInt32(ddl.SelectedValue));
            ddlc.SelectedValue = 
            ddlc.DataTextField = "clusterName";
            ddlc.DataValueField = "clusterid";
            ddlc.DataBind();

            for (int i = 0; i < ddl.Items.Count; i++)
            {
                if (ddl.Items[i].Value == lbl.Text)
                {
                    ddl.Items[i].Selected = true;
                    break;
                }
            }

            for (int i = 0; i < ddlc.Items.Count; i++)
            {
                if (ddlc.Items[i].Value == lblc.Text)
                {
                    ddlc.Items[i].Selected = true;
                    break;
                }
            }
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
     
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("../Login.aspx");
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
    }
    protected void btnIssue_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        DataControlFieldCell cell = (DataControlFieldCell)btn.Parent;
        GridViewRow row = (GridViewRow)cell.Parent;

        Session["EmpCode"] = GridView1.DataKeys[row.RowIndex].Value.ToString();

        Response.Redirect("frmAsset.aspx?eid=");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnAsset_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        DataControlFieldCell cell = (DataControlFieldCell)btn.Parent;
        GridViewRow row = (GridViewRow)cell.Parent;

        Session["EmpAsset"] = GridView1.DataKeys[row.RowIndex].Value.ToString();
        Response.Redirect("assetlist.aspx");
    }
    protected void BtnNumber_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        DataControlFieldCell cell = (DataControlFieldCell)btn.Parent;
        GridViewRow row = (GridViewRow)cell.Parent;

        Session["EmpNbr"] = GridView1.DataKeys[row.RowIndex].Value.ToString();
        Response.Redirect("numberlist.aspx");
    }
}
