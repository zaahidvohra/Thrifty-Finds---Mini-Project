using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _02adminpages_Adm_Addcat_page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\signupdata.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            BindCatRepeater();

        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }

    private void BindCatRepeater()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from category";
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repecat.DataSource = dt;
        Repecat.DataBind();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into category(catname) Values('" + txtcat.Text + "') ";
        cmd.ExecuteNonQuery();
        mess01.Text = "Category added successfully";
        txtcat.Text = string.Empty;
        BindCatRepeater();
    }
}
