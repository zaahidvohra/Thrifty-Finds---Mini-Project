using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class _01welcome_Forgotpass_page : System.Web.UI.Page
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
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from user_signup where email=@email";
            cmd.Parameters.AddWithValue("@email", email_txt.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                string myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "Insert into forgotpass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())";
                cmd2.ExecuteNonQuery();
                //Send link

                string toemailaddress = dt.Rows[0][3].ToString();
                string username = dt.Rows[0][1].ToString();
                string emailbody = "Hi ," + username + ",<br/>Click the link below to reset password<br/> https://localhost:44315/01welcome/Reset_page.aspx?id=" + myGUID;
                MailMessage passrecmail = new MailMessage("thriftyfinds520@gmail.com", toemailaddress);
                passrecmail.Body = emailbody;
                passrecmail.IsBodyHtml = true;
                passrecmail.Subject = "Reset Password";
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("thriftyfinds520@gmail.com", "cxxxrrxhpujtehaj");
                smtp.EnableSsl = true;
                smtp.Send(passrecmail);

                //send link end
                mess_lbl.Text = "Recovery Link Sent to your email.";
                mess_lbl.ForeColor = System.Drawing.Color.Green;
                email_txt.Text = string.Empty;
            }
            else
            {
                mess_lbl.Text = "Email does not exist";
                mess_lbl.ForeColor = System.Drawing.Color.Red;
                email_txt.Text = string.Empty;
                email_txt.Focus();
            }
            con.Close();
        }
            
    }
}
