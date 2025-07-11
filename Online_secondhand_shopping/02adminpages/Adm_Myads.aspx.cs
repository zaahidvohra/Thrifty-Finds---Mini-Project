using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class _02adminpages_Adm_Myads : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Check if the user is authenticated and has a session
            if (Session["Username"] != null)
            {
                string userId = Session["Username"] as string;
                if (userId != null)
                {
                    // Assuming you have a query to fetch Uid based on some criteria (e.g., username or email)
                    string queryToFetchUid = "SELECT Uid FROM user_signup WHERE username = @username"; // Modify this query as per your data schema

                    using (SqlConnection conUserDb = new SqlConnection(CS))
                    {
                        conUserDb.Open();

                        using (SqlCommand cmdFetchUid = new SqlCommand(queryToFetchUid, conUserDb))
                        {
                            cmdFetchUid.Parameters.AddWithValue("@username", userId); // Replace with the actual user-specific criteria

                            // Execute the query to retrieve Uid
                            int? uid = cmdFetchUid.ExecuteScalar() as int?;

                            if (uid != null)
                            {
                                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\signupdata.mdf;Integrated Security=True"; // Replace with your database connection string

                                // Create a DataTable to store the results
                                DataTable dataTable = new DataTable();

                                // Use the SqlConnection, SqlCommand, and SqlDataAdapter to execute the stored procedure
                                using (SqlConnection connection = new SqlConnection(connectionString))
                                {
                                    using (SqlCommand command = new SqlCommand("procBindAllProductsWithUserId", connection))
                                    {
                                        command.CommandType = CommandType.StoredProcedure;

                                        // Add the userId parameter
                                        command.Parameters.Add(new SqlParameter("@userId", SqlDbType.NVarChar, 255) { Value = uid });

                                        // Create an SqlDataAdapter to fetch data
                                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                                        {
                                            connection.Open();

                                            // Fill the DataTable with data from the stored procedure
                                            adapter.Fill(dataTable);
                                        }
                                    }
                                }

                                // Bind the DataTable to a GridView or other controls for display
                                rptrProducts.DataSource = dataTable; // Replace YourGridView with the name of your control
                                rptrProducts.DataBind();
                            }
                            else
                            {
                                // Handle the case where the user is not authenticated or doesn't have a session
                                Response.Redirect("~/01welcome/Login_page.aspx"); // Redirect to a login page or handle it as needed
                            }
                        }
                    }
                }
            }
            else
            {
                // Handle the case where the user is not authenticated or doesn't have a session
                Response.Redirect("~/01welcome/Login_page.aspx"); // Redirect to a login page or handle it as needed
            }
        }
    }




    protected void btndel_Click(object sender, EventArgs e)
    {
        string adId = ((Button)sender).CommandArgument;

        if (!string.IsNullOrEmpty(adId))
        {
            int adIdToDelete = int.Parse(adId);

            // Modify the connection string to match your database.
            //string connectionString = "YourConnectionStringHere";

            using (SqlConnection connection = new SqlConnection(CS))
            {
                connection.Open();
                string deleteQuery = "DELETE FROM ads WHERE aid = @AdId";

                using (SqlCommand command = new SqlCommand(deleteQuery, connection))
                {
                    command.Parameters.AddWithValue("@AdId", adIdToDelete);

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // Data deleted successfully. You can handle success here.
                        // For example, you might refresh the page or display a success message.
                        Response.Redirect(Request.RawUrl); // Refresh the Repeater after deletion.
                    }
                    else
                    {
                        Response.Write("<script>Error!! Try again</script>");
                    }
                }
            }
        }
    }
}
