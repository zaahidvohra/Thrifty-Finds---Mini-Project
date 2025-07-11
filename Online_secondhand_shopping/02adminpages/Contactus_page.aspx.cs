using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class _02adminpages_Contactus_page : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void send_btn_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into contact_us(name,email,message) values('" + name_txt.Text + "','" + email_txt.Text + "','" + message_txt.Text + "')", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            mess_lbl.Text = "Sent Successfully";
            clear();
            con.Close();
        }
    }
    public void clear()
    {
        name_txt.Text = string.Empty;
        email_txt.Text = string.Empty;
        message_txt.Text = string.Empty;
    }
}