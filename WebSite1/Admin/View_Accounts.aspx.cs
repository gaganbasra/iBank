using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Windows.Forms;
using System.Data;


public partial class Admin_Default : System.Web.UI.Page
{

    DataTable _table;
    string database = @"C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\Data\NBU.mdf";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string _connectionstring = @" Data Source=VISHAL;AttachDbFilename=" + database + ";Integrated Security=True";

        SqlConnection myConnection = new SqlConnection(_connectionstring);
        
        try
        {
            myConnection.Open();

            string _sql="Select [Account_No],[Account_Type],[LastName],[FirstName] from dbo.Accounts";
             SqlCommand _command = new SqlCommand(_sql,myConnection);
                SqlDataAdapter _adapter = new SqlDataAdapter(_command);
                 _table = new DataTable();
                _adapter.Fill(_table);
 
                GridView1.DataSource = _table;
                GridView1.DataBind();
            
        }
        catch (SqlException ex)
        {
            MessageBox.Show("You failed!" + ex.Message);
        }        
        





    }
    protected void GridView1_RowEditing(object sender, EventArgs e)

    {

        GridView1.DataSource = _table;
        GridView1.DataBind();


    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string _connectionstring = @" Data Source=VISHAL;AttachDbFilename=" + database + ";Integrated Security=True";

        SqlConnection myConnection = new SqlConnection(_connectionstring);

        int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        string Account_NO= GridView1.DataKeys[e.RowIndex].Values["Account_No"].ToString();
        System.Web.UI.WebControls.TextBox txtlastname = (System.Web.UI.WebControls.TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcity");
        System.Web.UI.WebControls.TextBox txtFirstname = (System.Web.UI.WebControls.TextBox)GridView1.Rows[e.RowIndex].FindControl("txtDesg");
        myConnection.Open();
        SqlCommand cmd = new SqlCommand("update Accounts set LastName='" + txtlastname.Text + "',FirstName='" + txtFirstname.Text + "' where Account_NO=" + Account_NO, myConnection);
        cmd.ExecuteNonQuery();
        myConnection.Close();

        MessageBox.Show("Updated!");
    




    }
}