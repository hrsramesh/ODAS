using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Common;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
	public DataAccess()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static DbCommand CreateCommand()
    {
        string dbConnectionString = AppConfig.DBConnectionString;
        string dbProvider = AppConfig.dbProviderName;
        DbProviderFactory factory = DbProviderFactories.GetFactory(dbProvider);
        DbConnection connection = factory.CreateConnection();
        connection.ConnectionString = dbConnectionString;

        DbCommand command = connection.CreateCommand();
        command.CommandType = CommandType.StoredProcedure;

        return command;
    }
    public static DataTable ExecuteSelectCOmmand(DbCommand command)
    {
        DataTable table;
        try
        {
            command.Connection.Open();
            DbDataReader reader = command.ExecuteReader();
           
            table = new DataTable();
        table.Load(reader);
            
            reader.Close();
            
            
        }

        finally
        {
            command.Connection.Close();
        }
        return table;
    }
    public static int ExecuteNonQuery(DbCommand command)
    {
        
        int result = -1;

        command.Connection.Open();
        result = command.ExecuteNonQuery();
       
        
   return result;
    }
    public static string ExecuteScaler(DbCommand command)
    {
        string result = "";

        command.Connection.Open();
        result = command.ExecuteScalar().ToString();

        return result;
    }
}