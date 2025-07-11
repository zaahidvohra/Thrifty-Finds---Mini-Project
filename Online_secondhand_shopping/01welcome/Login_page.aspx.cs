using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _01welcome_Login_page : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["PasswordChanged"] != null && (bool)Session["PasswordChanged"])
        {
            // Display an alert using JavaScript.
            Response.Write("<script> alert('Password changed successfully') </script>");

            // Reset the session variable to avoid showing the alert on subsequent page loads.
            Session["PasswordChanged"] = false;
        }
        if (Session["edit"] != null && (bool)Session["edit"])
        {
            Response.Write("<script> alert('Profile Edited successfully') </script>");

            // Reset the session variable to avoid showing the alert on subsequent page loads.
            Session["edit"] = false;
        }
        if (Session["pass"] != null && (bool)Session["pass"])
        {
            Response.Write("<script> alert('Password Changed successfully') </script>");

            // Reset the session variable to avoid showing the alert on subsequent page loads.
            Session["pass"] = false;
        }


        //cookie fetch

        if (!IsPostBack)
        {
            if (Request.Cookies["uname"] != null && Request.Cookies["upass"] != null)
            {
                uname_txt.Text = Request.Cookies["uname"].Value;
                password_txt.Text = Request.Cookies["upass"].Value;
                //default value of checkbox
                CheckBox1.Checked = true;
                //login_btn.Focus();
            }
        }
    }

    protected void login_btn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM user_signup WHERE username = @uname COLLATE Latin1_General_BIN2 AND password = @pwd COLLATE Latin1_General_BIN2", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@uname", uname_txt.Text);
            cmd.Parameters.AddWithValue("@pwd", password_txt.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["uname"].Value = uname_txt.Text;
                    Response.Cookies["upass"].Value = password_txt.Text;
                    //expire cookie in 10 days
                    Response.Cookies["uname"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["upass"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    //dont save details -1 means 0 days
                    Response.Cookies["uname"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["upass"].Expires = DateTime.Now.AddDays(-1);
                }
                string utype = dt.Rows[0][5].ToString().Trim();
                if (utype == "User")
                {
                    Session["Username"] = uname_txt.Text;

                    Response.Redirect("~/03userpages/Usr_home.aspx");
                }
                if (utype == "Admin")
                {
                    Session["Username"] = uname_txt.Text;

                    Response.Redirect("~/02adminpages/Adm_home.aspx");
                }
            }
            else
            {
                //this is a change
                error_mess01.Text = "Incorrect Credentials - Try again";
            }

            con.Close();
        }
    }
}
