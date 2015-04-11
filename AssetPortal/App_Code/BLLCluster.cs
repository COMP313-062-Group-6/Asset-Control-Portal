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
/// Summary description for BLLCluster
/// </summary>
public class BLLCluster
{
	public BLLCluster()
	{
	}
    private int _CircleId;
    private int _ClusterId;
    private string _ClusterName;

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
    public string ClusterName
    {
        set
        {
            _ClusterName = value;
        }
        get
        {
            return (_ClusterName);
        }
    }


    public DataTable GetAllCluster()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getallcluster");
        obj.CloseConnection();
        return (tb);
    }

    public DataTable GetClusterforCircle(int Cid)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        DataTable tb = obj.GetTableData("getclusterforcircle","@circleid",Cid);
        obj.CloseConnection();
        return (tb);
    }

    public int AddCluster()
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("addcluster", "@clusterName", _ClusterName,"@Circleid",_CircleId.ToString());
        obj.CloseConnection();
        return (retvalue);
    }

    public int DeleteCluster(int pEmp)
    {
        DAL.cDAL obj = new DAL.cDAL();
        obj.CreateConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
        int retvalue = obj.ExecuteProcedure("deletecluster", "@clusterid", pEmp.ToString());
        obj.CloseConnection();
        return (retvalue);
    }
}
