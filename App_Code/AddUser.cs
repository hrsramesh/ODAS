using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Common;

/// <summary>
/// Summary description for AddUser
/// </summary>
public class AddUser
{
	public AddUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static DataTable AddPatient(string fname, string lname, string address, string email,string userName,string password, string gender, int age)
    {
        DbCommand command = DataAccess.CreateCommand();
        command.CommandText = "spPatientReg";
        DbParameter param = command.CreateParameter();
        param.ParameterName = "@Fname";
        param.Value = fname;
        param.DbType = DbType.String;
        command.Parameters.Add(param);
        DbParameter param1 = command.CreateParameter();
        param1.ParameterName = "@Lname";
        param1.Value = lname;
        param1.DbType = DbType.String;
        command.Parameters.Add(param1);
        DbParameter param2 = command.CreateParameter();
        param2.ParameterName = "@Address";
        param2.Value = address;
        param2.DbType = DbType.String;
        command.Parameters.Add(param2);
        DbParameter param3 = command.CreateParameter();
        param3.ParameterName = "@email";
        param3.Value = email;
        param3.DbType = DbType.String;
        command.Parameters.Add(param3);
        DbParameter param7 = command.CreateParameter();
        param7.ParameterName = "@userName";
        param7.Value = userName;
        param7.DbType = DbType.String;
        command.Parameters.Add(param7);
        DbParameter param4 = command.CreateParameter();
        param4.ParameterName = "@password";
        param4.Value = password;
        param4.DbType = DbType.String;
        command.Parameters.Add(param4);
        DbParameter param5 = command.CreateParameter();
        param5.ParameterName = "@Gender";
        param5.Value = gender;
        param5.DbType = DbType.String;
        command.Parameters.Add(param5);
        DbParameter param6 = command.CreateParameter();
        param6.ParameterName = "@Age";
        param6.Value = age;
        param6.DbType = DbType.Int32;
        command.Parameters.Add(param6);

        return DataAccess.ExecuteSelectCOmmand(command);
    }
     public static DataTable AddDoctor(string name,string address, string email,string userName,string password,int nmcREg, int charge, string gender)
    {
        DbCommand command = DataAccess.CreateCommand();
        command.CommandText = "spDoctorReg";
        DbParameter param = command.CreateParameter();
        param.ParameterName = "@name";
        param.Value = name;
        param.DbType = DbType.String;
        command.Parameters.Add(param);
        DbParameter param1 = command.CreateParameter();
        param1.ParameterName = "@Address";
        param1.Value = address;
        param1.DbType = DbType.String;
        command.Parameters.Add(param1);
        DbParameter param2 = command.CreateParameter();
        param2.ParameterName = "@email";
        param2.Value = email;
        param2.DbType = DbType.String;
        command.Parameters.Add(param2);
        DbParameter param3 = command.CreateParameter();
        param3.ParameterName = "@userName";
        param3.Value =userName;
        param3.DbType = DbType.String;
        command.Parameters.Add(param3);
        DbParameter param7 = command.CreateParameter();
        param7.ParameterName = "@password";
        param7.Value =password;
        param7.DbType = DbType.String;
        command.Parameters.Add(param7);
        DbParameter param4 = command.CreateParameter();
        param4.ParameterName = "@nmcReg";
        param4.Value = nmcREg;
        param4.DbType = DbType.String;
        command.Parameters.Add(param4);
        DbParameter param5 = command.CreateParameter();
        param5.ParameterName = "@charges ";
        param5.Value = charge;
        param5.DbType = DbType.Int32;
        command.Parameters.Add(param5);
        DbParameter param6 = command.CreateParameter();
        param6.ParameterName = "@Gender";
        param6.Value = gender;
        param6.DbType = DbType.String;
        command.Parameters.Add(param6);

        return DataAccess.ExecuteSelectCOmmand(command);
    }

}