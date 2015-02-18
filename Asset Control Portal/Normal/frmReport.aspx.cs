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
using Microsoft.Office.Interop.Excel;
public partial class Normal_frmReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        BLLReports obj = new BLLReports();
        GridView1.DataSource = obj.AssetWise(DropDownList1.SelectedItem.Text, Convert.ToInt32(Session["EMPID"]));
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
        System.Data.DataTable tb = obj.AssetWise(DropDownList1.SelectedItem.Text, Convert.ToInt32(Session["EMPID"]));


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

        FN = FN + "\\AssetWiseReportFile.XLS";

        if (System.IO.File.Exists(FN) == true)
        {
            System.IO.File.Delete(FN);
        }

        objBook.SaveCopyAs(FN);
        objApp = null;

        Response.AppendHeader("Content-Disposition", "Attachment;FileName=AssetWiseReportFile.XLS");
        Response.TransmitFile(FN);
        Response.End();

    }
}
