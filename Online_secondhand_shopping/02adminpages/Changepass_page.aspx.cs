using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _02adminpages_Changepass_page : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void confirm_btn_Click(object sender, EventArgs e)
    {
        // Get the current user's username from the session.
        string username = Session["Username"].ToString();

        // Get the current and new passwords from the textboxes.
        string currentPassword = currentpass_txt.Text;
        string newPassword = password_txt.Text;

        // Check if the current password is correct. You'll need to query your database to validate it.
        if (IsCurrentPasswordValid(username, currentPassword))
        {
            // Update the password in the database.
            if (ChangeUserPassword(username, newPassword))
            {
                Session["pass"] = true;
                Session["Username"] = false;
                Response.Redirect("~/01welcome/Login_page.aspx");
            }
            else
            {
                mess_lbl.Text = "Failed to change the password.";
            }
        }
        else
        {
            mess_lbl.Text = "Incorrect current password.";
        }
    }

    // Implement a method to validate the current password.
    private bool IsCurrentPasswordValid(string username, string currentPassword)
    {
        // You'll need to write code to query your database and validate the current password.
        // You may hash the current password and compare it with the stored hash in the database.
        // Replace with your actual connection string.

        using (SqlConnection connection = new SqlConnection(CS))
        {
            connection.Open();

            string query = "SELECT password FROM user_signup WHERE username = @Username";
            using (SqlCommand cmd = new SqlCommand(query, connection))
            {
                cmd.Parameters.AddWithValue("@Username", username);
                string storedPasswordHash = cmd.ExecuteScalar() as string;

                // You should use a secure password hashing algorithm (e.g., bcrypt) and verify the currentPassword.
                // For simplicity, we'll compare plain text passwords.
                return currentPassword == storedPasswordHash;
            }
        }
    }

    // Implement a method to change the user's password in the database.
    private bool ChangeUserPassword(string username, string newPassword)
    {
        // You'll need to write code to update the user's password in your database.
        // You should hash the newPassword before storing it.
        // Replace with your actual connection string.

        using (SqlConnection connection = new SqlConnection(CS))
        {
            connection.Open();

            string query = "UPDATE user_signup SET password = @NewPassword WHERE username = @Username";
            using (SqlCommand cmd = new SqlCommand(query, connection))
            {
                // You should hash the newPassword before storing it. For simplicity, we assume it's already hashed.
                cmd.Parameters.AddWithValue("@NewPassword", newPassword);
                cmd.Parameters.AddWithValue("@Username", username);

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected > 0;
            }
        }
    }
}