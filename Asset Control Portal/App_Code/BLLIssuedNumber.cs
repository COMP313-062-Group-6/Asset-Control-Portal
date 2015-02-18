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
/// Summary description for BLLIssuedNumber
/// </summary>
public class BLLIssuedNumber
{
	public BLLIssuedNumber()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private int _EmployeeId;
    private string _ContactNo;
    private string _SimNo;
    private int _MaxCreditLimit;
    private DateTime _Issueddate;


    public int EmployeeId
    {
        set
        {
            _EmployeeId = value;
        }
        get
        {
            return (_EmployeeId);
        }
    }
    public string ContactNo
    {
        set
        {
            _ContactNo = value;
        }
        get
        {
            return (_ContactNo);
        }
    }
    public string SimNo
    {
        set
        {
            _SimNo = value;
        }
        get
        {
            return (_SimNo);
        }
    }
    public int MaxCreditLimit
    {
        set
        {
            _MaxCreditLimit = value;
        }
        get
        {
            return (_MaxCreditLimit);
        }
    }
    public DateTime IssuedDate
    {
        set
        {
            _Issueddate = value;
        }
        get
        {
            return (_Issueddate);
        }
    }

    public DataTable GetAllNumbers(int empid)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getallnumbers","@managerid",empid);
        obj.CloseConnection();
        return (tb);
    }

    public DataTable GetAllNumbers2(int empid)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getallnumber", "@employeeid", empid);
        obj.CloseConnection();
        return (tb);
    }

    public int AddNumber()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("addnumber", "@contactno", _ContactNo, "@simno", _SimNo, "@maxcreditlimit", _MaxCreditLimit.ToString(), "@issueddate", _Issueddate.ToShortDateString(),"@employeeid",_EmployeeId.ToString());
        obj.CloseConnection();
        return (retvalue);
    }

    public int DeleteNumber(int pEmp)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("deletenumber", "@srno", pEmp.ToString());
        obj.CloseConnection();
        return (retvalue);
    }
}
