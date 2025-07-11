using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _02adminpages_Adm_Delsubcat : System.Web.UI.Page
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
        cmd.CommandText = "select * from subcategory";
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repecat.DataSource = dt;
        Repecat.DataBind();
    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT COUNT(*) FROM subcategory WHERE subcatid = @catid";
        cmd.Parameters.AddWithValue("@catid", TextBox1.Text);
        int count = (int)cmd.ExecuteScalar();
        if (count > 0)
        {
            SqlCommand cmd0 = con.CreateCommand();
            cmd0.CommandType = CommandType.Text;
            cmd0.CommandText = "delete from subcategory where subcatid=@catid";
            cmd0.Parameters.AddWithValue("@catid", TextBox1.Text.Trim().ToString());
            cmd0.ExecuteNonQuery();
            mess01.Text = "Category Deleted";
            mess01.ForeColor = System.Drawing.Color.Red;
            TextBox1.Text = string.Empty;
            BindCatRepeater();
        }
        else
        {
            mess01.Text = "Invalid Id";
            mess01.ForeColor = System.Drawing.Color.Red;
        }
    }
}