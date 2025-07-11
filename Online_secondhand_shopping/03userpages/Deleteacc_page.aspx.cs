using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03userpages_Deleteacc_page : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void delete_btn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();

            // Step 1: Check if the entered values are correct
            SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM user_signup WHERE username = @uname AND password = @pwd", con);
            checkCmd.Parameters.AddWithValue("@uname", uname_txt.Text);
            checkCmd.Parameters.AddWithValue("@pwd", password_txt.Text);

            int rowCount = (int)checkCmd.ExecuteScalar();

            if (rowCount > 0)
            {
                // Step 2: Delete related rows in the 'ads' table
                SqlCommand deleteAdsCmd = new SqlCommand("DELETE FROM ads WHERE userid = (SELECT Uid FROM user_signup WHERE username = @uname AND password = @pwd)", con);
                deleteAdsCmd.Parameters.AddWithValue("@uname", uname_txt.Text);
                deleteAdsCmd.Parameters.AddWithValue("@pwd", password_txt.Text);

                int adsRowsAffected = deleteAdsCmd.ExecuteNonQuery();

                // Step 3: Delete the user account
                SqlCommand deleteCmd = new SqlCommand("DELETE FROM user_signup WHERE username = @uname", con);
                deleteCmd.Parameters.AddWithValue("@uname", uname_txt.Text);
                deleteCmd.Parameters.AddWithValue("@pwd", password_txt.Text);

                int userRowsAffected = deleteCmd.ExecuteNonQuery();

                if (userRowsAffected > 0)
                {
                    // Account deleted successfully
                    Response.Write("<script>alert('Account deleted Successfully')</script>");
                    Response.Redirect("~/01welcome/Signup_page.aspx");
                }
                else
                {
                    // Deletion failed
                    mess_lbl.Text = "Account deletion failed, please try again.";
                    mess_lbl.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                // No matching row found
                mess_lbl.Text = "Incorrect credentials";
                mess_lbl.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}