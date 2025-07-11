using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _02adminpages_Adm_Addsubcat_page : System.Web.UI.Page
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
            BindMainCat();
        }
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
    }

    private void BindMainCat()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from category";

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "catname";
            DropDownList1.DataValueField = "catid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("-Select-", "0"));
        }



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
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex != 0)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into subcategory(asubcat,amaincat) Values('" + TextBox1.Text + "','" + DropDownList1.Text + "') ";
            cmd.ExecuteNonQuery();
            mess01.Text = "Sub-Category added successfully";
            mess01.ForeColor = System.Drawing.Color.Green;
            TextBox1.Text = string.Empty;
            DropDownList1.SelectedIndex = 0;
            BindCatRepeater();
        }
        else
        {
            mess01.Text = "Please Select Main Category";
            mess01.ForeColor = System.Drawing.Color.Red;
        }

    }
}