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
public partial class Normal_frmNumberList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
        if (!IsPostBack)
        {
            RefreshData();   
        }
    }

    private void RefreshData()
    {
        BLLIssuedNumber obj = new BLLIssuedNumber();
        GridView1.DataSource = obj.GetAllNumbers(Convert.ToInt32( Session["EMPID"]));
        GridView1.DataBind();
    }
        
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("../Login.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ENO = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        BLLIssuedNumber obj = new BLLIssuedNumber();
        obj.DeleteNumber(ENO);
        RefreshData();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Microsoft.Office.Interop.Excel.Application objApp;
        Microsoft.Office.Interop.Excel._Workbook objBook;

        BLLIssuedNumber  obj = new BLLIssuedNumber();
        System.Data.DataTable tb = obj.GetAllNumbers(Convert.ToInt32(Session["EMPID"]));


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

        FN = FN + "\\NumbersReportFile.XLS";

        if (System.IO.File.Exists(FN) == true)
        {
            System.IO.File.Delete(FN);
        }

        objBook.SaveCopyAs(FN);
        objApp = null;

        Response.AppendHeader("Content-Disposition", "Attachment;FileName=NumbersReportFile.XLS");
        Response.TransmitFile(FN);
        Response.End();

    }
}
