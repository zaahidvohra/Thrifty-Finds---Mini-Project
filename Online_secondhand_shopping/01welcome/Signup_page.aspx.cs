using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _01welcome_Signup_page : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signup_btn_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();

            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM user_signup WHERE username = @username OR email = @email", con))
            {
                cmd.Parameters.AddWithValue("@username", uname_txt.Text);
                cmd.Parameters.AddWithValue("@email", email_txt.Text);
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();
                int existingUsersCount = (int)cmd.ExecuteScalar();

                if (existingUsersCount > 0)
                {
                    // Username or email already exists, handle this situation (e.g., show an error message)
                    mess_lbl.Text = "Username or email already exists.";

                }
                else
                {
                    SqlCommand cmd2 = new SqlCommand("insert into user_signup(username,phone,email,password,usertype) values('" + uname_txt.Text + "','" + phone_txt.Text + "', '" + email_txt.Text + "','" + password_txt.Text + "','User')", con);
                    cmd2.CommandType = CommandType.Text;
                    cmd2.ExecuteNonQuery();
                    Response.Redirect("Login_page.aspx");
                }
                con.Close();
            }

        }
    }
}
