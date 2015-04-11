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
/// Summary description for BLLIssuedRegister
/// </summary>
public class BLLIssuedRegister
{
	public BLLIssuedRegister()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private int _EmployeeId;
    private string _Asset;
    private string _AssetManufacturer;
    private string _SerialNo;
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
    public string SerialNo
    {
        set
        {
            _SerialNo = value;
        }
        get
        {
            return (_SerialNo);
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

    public DataTable GetAllAssets( int emp)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getallassets","@employeeid",emp);
        obj.CloseConnection();
        return (tb);
    }

    public int AddAsset()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("addasset", "@asset", _Asset, "@assetmanufacturer", _AssetManufacturer, "@assetserialno", _SerialNo,"@issueddate",_Issueddate.ToShortDateString(),"@employeeid",_EmployeeId.ToString());
        obj.CloseConnection();
        return (retvalue);
    }

    public int DeleteAsset(int pEmp)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("deleteasset", "@srno", pEmp.ToString());
        obj.CloseConnection();
        return (retvalue);
    }

}
