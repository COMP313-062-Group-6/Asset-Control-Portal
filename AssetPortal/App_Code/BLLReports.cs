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
/// Summary description for BLLReports
/// </summary>
public class BLLReports
{
	public BLLReports()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private int _EmployeeId;
    private int _ClusterId;
    private int _CircleId;
    private string _Name;
    private string _UPICode;
    private string _JobType;
    private string _EmailId;
    private string _Designation;
    private int _ManagerId;
    private string _Description;
    private string _Asset;
    private string _AssetManufacturer;
    private string _AssetSerialNo;
    private DateTime _IssueDate;

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
    public int CircleId
    {
        set
        {
            _CircleId = value;
        }
        get
        {
            return (_CircleId);
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
    public string Asset
    {
        set
        {
            _Asset = value;
        }
        get
        {
            return (_Asset);
        }
    }
    public string AssetSerailNo
    {
        set
        {
            _AssetSerialNo = value;
        }
        get
        {
            return (_AssetSerialNo);
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
    public string AssetManufacturer
    {
        set
        {
            _AssetManufacturer = value;
        }
        get
        {
            return (_AssetManufacturer);
        }
    }
    public DateTime Issueddate
    {
        set
        {
            _IssueDate = value;
        }
        get
        {
            return (_IssueDate);
        }
    }

    public DataTable AssetWise(string ast,int mid)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("AssetWise","@asset",ast,"@managerid",mid);
        obj.CloseConnection();
        return (tb);
    }

    public DataTable ClusterWise(int mid, int cid)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("clusterWise", "@managerid", mid, "@clusterid",cid);
        obj.CloseConnection();
        return (tb);
    }

    public DataTable Customised(string name, int cid)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("customised", "@name", name, "@managerid", cid);
        obj.CloseConnection();
        return (tb);
    }



}
