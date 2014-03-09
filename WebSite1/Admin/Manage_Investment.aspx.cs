using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;


public partial class Admin_Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string database = @"C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\Data\NBU.mdf";
        string _connectionstring = @" Data Source=VISHAL;AttachDbFilename="+database+";Integrated Security=True";
               
                SqlConnection myConnection = new SqlConnection(_connectionstring);
        
        //SqlConnection myConnection = new SqlConnection("server=localhost;"+
        //                                       "Trusted_Connection=yes;" +
        //                                       "database=NBU;" +
        //                                       "connection timeout=30;"+ "User Id=VISHAL/VISHAL;"+"Password=SLRVNV6039;");

        //Data Source=VISHAL;AttachDbFilename="C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\Data\NBU.mdf";Integrated Security=True
        try
        {
            myConnection.Open();
            
            MessageBox.Show("Well done!");
        }
        catch (SqlException ex)
        {
            MessageBox.Show("You failed!" + ex.Message);
        }        
        


        



    }


}