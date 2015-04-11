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
/// Summary description for BLLCircle
/// </summary>
public class BLLCircle
{
	public BLLCircle()
	{
	}

    private int _CircleId;
    private string _CircleName;
    
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
    public string CircleName
    {
        set
        {
            _CircleName = value;
        }
        get
        {
            return (_CircleName);
        }
    }
   

    public DataTable GetAllCircle()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getallcircle");
        obj.CloseConnection();
        return (tb);
    }

    public int AddCircle()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("addcircle", "@circleName", _CircleName);
        obj.CloseConnection();
        return (retvalue);
    }

    public int DeleteCircle(int pEmp)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("deletecircle", "@circleid", pEmp.ToString());
        obj.CloseConnection();
        return (retvalue);
    }
}
