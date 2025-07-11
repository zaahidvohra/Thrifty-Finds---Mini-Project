using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;

public partial class _01welcome_Reset_page : System.Web.UI.Page
{
    string GUIDvalue;
    int Uid;
    DataTable dt = new DataTable();
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(CS))
        {
            conn.Open();
            GUIDvalue = Request.QueryString["id"];
            if (GUIDvalue != null)
            {

                SqlCommand cmd = new SqlCommand("select * from forgotpass where Id=@Id");
                cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    mess_lbl.Text = "Link Expired";
                    mess_lbl.ForeColor = System.Drawing.Color.Red;
                }


            }
            else
            {
                //lbl0.Text = "Link Expired";
                //lbl0.ForeColor = System.Drawing.Color.Red;
                Response.Redirect("Login_page.aspx");
            }

            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    conpassword_txt.Visible = true;
                    password_txt.Visible = true;
                    mess_lbl.Visible = true;

                }
                else
                {
                    conpassword_txt.Visible = false;
                    password_txt.Visible = false;

                    reset_btn.Visible = false;
                    mess_lbl.Text = "Link Expired";
                    mess_lbl.ForeColor = System.Drawing.Color.Red;
                }
            }
        }


    }

    protected void reset_btn_Click(object sender, EventArgs e)
    {
        if (password_txt.Text != "" && conpassword_txt.Text != "")
        {
            using (SqlConnection con2 = new SqlConnection(CS))
            {
                SqlCommand cmd = con2.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Update user_signup set password=@p where Uid=@Uid";
                cmd.Parameters.AddWithValue("@p", password_txt.Text);
                cmd.Parameters.AddWithValue("@Uid", Uid);
                cmd.ExecuteNonQuery();


                SqlCommand cmd2 = con2.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "delete from forgotpass where Uid='" + Uid + "'";
                cmd2.ExecuteNonQuery();
                Session["PasswordChanged"] = true;
                Response.Redirect("Login_page.aspx");
            }


        }
    }
}
