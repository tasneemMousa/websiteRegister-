using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login1 : System.Web.UI.Page
{
    public static string constr = @"Data Source=.;Initial Catalog=project;Integrated Security=True";
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("users_login", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@user_name", SqlDbType.NVarChar).Value = TextBox1.Text;
        cmd.Parameters.Add("@user_pass", SqlDbType.NVarChar).Value = TextBox2.Text;
        object o = cmd.ExecuteScalar();
        if (o != null)
        {
            Session["user"] = TextBox1.Text;
            Response.Redirect("hospital.aspx");
        }
        else
        {
            Label3.Text = "الرقم السري او اسم المستخدم غير صحيح";
        }
        con.Close();
    }
}