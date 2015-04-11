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
/// Summary description for BLLEmployee
/// </summary>
public class BLLEmployee
{
	public BLLEmployee()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    
    private int _EmployeeId;
    private int _ClusterId;
    private string _Name;
    private string _UPICode;
    private string _JobType;
    private string _EmailId;
    private string _Designation;
    private int _ManagerId;
    private string _Description;
    private string _UserId;
    private string _Password;

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
    public int ClusterId
    {
        set
        {
            _ClusterId = value;
        }
        get
        {
            return (_ClusterId);
        }
    }
    public string Name
    {
        set
        {
            _Name = value;
        }
        get
        {
            return (_Name);
        }
    }
    public string UserId
    {
        set
        {
            _UserId = value;
        }
        get
        {
            return (_UserId);
        }
    }
    public string Password
    {
        set
        {
            _Password = value;
        }
        get
        {
            return (_Password);
        }
    }
    public string UPICode
    {
        set
        {
            _UPICode = value;
        }
        get
        {
            return (_UPICode);
        }
    }
    public string JobType
    {
        set
        {
            _JobType = value;
        }
        get
        {
            return (_JobType);
        }
    }
    public string Designation
    {
        set
        {
            _Designation = value;
        }
        get
        {
            return (_Designation);
        }
    }
    public string EmailId
    {
        set
        {
            _EmailId = value;
        }
        get
        {
            return (_EmailId);
        }
    }
    public int ManagerId
    {
        set
        {
            _ManagerId = value;
        }
        get
        {
            return (_ManagerId);
        }
    }

    public string Description
    {
        set
        {
            _Description = value;
        }
        get
        {
            return (_Description);
        }
    }


    public DataTable GetAllManager()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getallmanager");
        obj.CloseConnection();
        return (tb);
    }

    public DataTable GetEmployees(int empno)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getemployees","@employeeid",empno);
        obj.CloseConnection();
        return (tb);
    }

    public DataTable GetName(int empno)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getname", "@employeeid", empno);
        obj.CloseConnection();
        return (tb);
    }

    public DataTable GetEmployeesforManager(int mgrno)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getemployeesformanager", "@managerid", mgrno);
        obj.CloseConnection();
        return (tb);
    }

    public int AuthenticateUser(string pUserId, string pPassword)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("authenticateuser",true,"@userid",pUserId,"@password",pPassword);
        obj.CloseConnection();
        _EmployeeId = Convert.ToInt32(tb.Rows[0][0]);
        _Name = tb.Rows[0][1].ToString();
        _Designation = Convert.ToString(tb.Rows[0][5]);
        return (tb.Rows.Count);
        
    }


    public int AddEmployee()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("addemployee", "@Name", _Name,"@Clusterid",_ClusterId.ToString(),"@upicode",_UPICode,"@Jobtype",_JobType,"@designation",_Designation,"emailid",_EmailId,"@description",_Description,"@userid",_UserId,"@password",_Password);
        obj.CloseConnection();
        return (retvalue);
    }

    public int AddNormalEmployee()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("addnormalemployee", "@Name", _Name, "@Clusterid", _ClusterId.ToString(), "@upicode", _UPICode, "@Jobtype", _JobType, "@designation", _Designation, "emailid", _EmailId,"@managerid",_ManagerId.ToString(), "@description", _Description);
        obj.CloseConnection();
        return (retvalue);
    }

    public int DeleteEmployee(int pEmp)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("deleteemployee","@employeeid",pEmp.ToString());
        obj.CloseConnection();
        return (retvalue);
    }
    public int UpdateEmployee()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("addemployee", "@employeeid",_EmployeeId.ToString(),"@Name", _Name, "@Clusterid", _ClusterId.ToString(), "@upicode", _UPICode, "@Jobtype", _JobType, "@designation", _Designation, "emailid", _EmailId, "@description", _Description, "@userid", _UserId, "@password", _Password);
        obj.CloseConnection();
        return (retvalue);
    }

}
