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

public partial class Normal_frmClusterReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BLLCircle obj = new BLLCircle();
            DropDownList1.DataSource = obj.GetAllCircle();
            DropDownList1.DataTextField = "Circlename";
            DropDownList1.DataValueField = "circleid";
            DropDownList1.DataBind();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        DropDownList2.Items.Add("Select Cluster");

            BLLCluster obj = new BLLCluster();
            DropDownList2.DataSource = obj.GetClusterforCircle(Convert.ToInt32(DropDownList1.SelectedValue));
            DropDownList2.DataTextField = "clustername";
            DropDownList2.DataValueField = "clusterid";
            DropDownList2.DataBind();
        
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        BLLReports obj = new BLLReports();
        GridView1.DataSource = obj.ClusterWise(Convert.ToInt32(Session["EMPID"]),Convert.ToInt32(DropDownList2.SelectedValue));
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
        {
            Label2.Text = "No data to display..";
        }
        else
        {
            Label2.Text = "";
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Microsoft.Office.Interop.Excel.Application objApp;
        Microsoft.Office.Interop.Excel._Workbook objBook;

        BLLReports obj = new BLLReports();
        System.Data.DataTable tb = obj.ClusterWise(Convert.ToInt32(Session["EMPID"]), Convert.ToInt32(DropDownList2.SelectedValue));


        Microsoft.Office.Interop.Excel.Workbooks books;
        Microsoft.Office.Interop.Excel.Sheets sheets;
        Microsoft.Office.Interop.Excel._Worksheet sheet;
        Microsoft.Office.Interop.Excel.Range range;

        objApp = new Microsoft.Office.Interop.Excel.Application();
        books = objApp.Workbooks;

        objBook = books.Add(MissingMappingAction.Passthrough);
        sheets = objBook.Sheets;
        sheet = (Microsoft.Office.Interop.Excel._Worksheet)sheets.get_Item(1);

        sheet.Cells[1, 1] = "Report";

        sheet.get_Range("A1", "B1").Merge(true);

        for (int i = 0; i < tb.Columns.Count; i++)
        {
            sheet.Cells[2, i + 1] = tb.Columns[i].ColumnName;
        }
        int j = 3;

        foreach (DataRow row in tb.Rows)
        {
            for (int i = 0; i < tb.Columns.Count; i++)
            {
                sheet.Cells[j, i + 1] = row[i].ToString();
            }
            j++;
        }

        string FN = Server.MapPath("ExcelFiles");

        FN = FN + "\\ClusterWiseReportFile.XLS";

        if (System.IO.File.Exists(FN) == true)
        {
            System.IO.File.Delete(FN);
        }

        objBook.SaveCopyAs(FN);
        objApp = null;

        Response.AppendHeader("Content-Disposition", "Attachment;FileName=ClusterWiseReportFile.XLS");
        Response.TransmitFile(FN);
        Response.End();
    }
}
