using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for AppConfig
/// </summary>
public static class AppConfig
{
 private readonly static string _dbConnectionString;
    private readonly static string _dbProviderName;
    static AppConfig()
    {
        _dbConnectionString = ConfigurationManager.ConnectionStrings["DASConnectionString"].ConnectionString;
        _dbProviderName = ConfigurationManager.ConnectionStrings["DASConnectionString"].ProviderName;
    }

    public static string DBConnectionString
    {
        get
        {
            return _dbConnectionString;
        }
    }
    public static string dbProviderName
    {
        get
        {
            return _dbProviderName;
        }
    }
}
