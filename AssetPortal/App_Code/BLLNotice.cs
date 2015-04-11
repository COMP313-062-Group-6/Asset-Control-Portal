using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for BLLNotice
/// </summary>
public class BLLNotice
{
	public BLLNotice()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private int _NoticeNo;
    private string _Notice;
    private DateTime _Date;
    public int NoticeNo
    {
        set
        {
            _NoticeNo = value;
        }
        get
        {
            return (_NoticeNo);
        }
    }
    public string Notice
    {
        set
        {
            _Notice = value;
        }
        get
        {
            return (_Notice);
        }
    }
    public DateTime Date
    {
        set
        {
            _Date = value;
        }
        get
        {
            return (_Date);
        }
    }


    public DataTable GetAllNotice()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getallnotice");
        obj.CloseConnection();
        return (tb);
    }

    public int AddNotice()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("addnotice", "@notice", _Notice,"@date",_Date.ToShortDateString());
        obj.CloseConnection();
        return (retvalue);
    }

    public int DeleteNotice(int Not)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("deletenotice", "@noticeno", Not.ToString());
        obj.CloseConnection();
        return (retvalue);
    }
}
