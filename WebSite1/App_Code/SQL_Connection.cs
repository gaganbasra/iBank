using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;

/// <summary>
/// Summary description for SQL_Connection
/// </summary>
public class SQL_Connection
{
	public SQL_Connection()
	{

        SqlConnection myConnection = new SqlConnection("server=localhost;" +
                                               "Trusted_Connection=yes;" +
                                               "database=testDB; " +
                                               "connection timeout=30");
        try
        {
            myConnection.Open();
            MessageBox.Show("Well done!");
        }
        catch (SqlException ex)
        {
            MessageBox.Show("You failed!" + ex.Message);
        }        
        
        
        //
		// TODO: Add constructor logic here
		//
	}
}