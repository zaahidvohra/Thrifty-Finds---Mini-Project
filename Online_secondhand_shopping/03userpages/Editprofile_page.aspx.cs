using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03userpages_Editprofile_page : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void confirm_btn_Click(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("~/01welcome/Login_page.aspx"); // Redirect to the login page if not logged in.
        }
        else
        {
            // Get the username from the session.
            string username = Session["Username"].ToString();

            // You can establish a connection to your database here.
             // Replace with your actual connection string.
            using (SqlConnection connection = new SqlConnection(CS))
            {
                connection.Open();

                // Create a SQL query to update the user's information in the database.
                string query = "UPDATE user_signup SET phone = @Phone, email = @Email WHERE username = @Username";

                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    // Set the parameters for the SQL query.
                    cmd.Parameters.AddWithValue("@Phone", phone_txt.Text);
                    cmd.Parameters.AddWithValue("@Email", email_txt.Text);
                    cmd.Parameters.AddWithValue("@Username", username);

                    // Execute the SQL query.
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Session["edit"] = true;
                        Session["Username"] = false;
                        Response.Redirect("~/01welcome/Login_page.aspx");
                    }
                    else
                    {
                        mess_lbl.Text = "Profile update failed.";
                        mess_lbl.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }
    }
}