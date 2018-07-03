using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public static string constr = @"Data Source=.;Initial Catalog=project;Integrated Security=True";
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert_users", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@user_name", SqlDbType.NVarChar).Value = TextBox1.Text;
        cmd.Parameters.Add("@user_pass", SqlDbType.NVarChar).Value = TextBox2.Text;
        cmd.Parameters.Add("@user_code", SqlDbType.NVarChar).Value = TextBox4.Text;
        int x = cmd.ExecuteNonQuery();
        con.Close();
        if (x == 1)
        {
            Response.Redirect("home.aspx");
        }
        else
        {
            Label5.Text = "اسم المستخدم موجود مسبقا";
        }
    }
}