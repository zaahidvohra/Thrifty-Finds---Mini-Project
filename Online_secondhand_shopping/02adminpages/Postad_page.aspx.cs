using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _02adminpages_Postad_page : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //when page first time run then this code will execute

            BindMainCat();
            Bindstate();
            ddlsubcategory.Enabled = false;
            ddlcity.Enabled = false;
        }
    }
    private void BindMainCat()
    {


        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from category", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlcategory.DataSource = dt;
                ddlcategory.DataTextField = "catname";
                ddlcategory.DataValueField = "catid";
                ddlcategory.DataBind();
                ddlcategory.Items.Insert(0, new ListItem("-Select-", "0"));
            }

        }

    }
    private void Bindstate()
    {


        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from state", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlstate.DataSource = dt;
                ddlstate.DataTextField = "statename";
                ddlstate.DataValueField = "stateid";
                ddlstate.DataBind();
                ddlstate.Items.Insert(0, new ListItem("-Select-", "0"));
            }

        }

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string userId = Session["Username"] as string;

        if (userId != null)
        {
            string queryToFetchUid = "SELECT Uid FROM user_signup WHERE username = @username";

            using (SqlConnection conUserDb = new SqlConnection(CS))
            {
                conUserDb.Open();

                using (SqlCommand cmdFetchUid = new SqlCommand(queryToFetchUid, conUserDb))
                {
                    cmdFetchUid.Parameters.AddWithValue("@username", userId);
                    object result = cmdFetchUid.ExecuteScalar();

                    if (result != DBNull.Value && result != null)
                    {
                        Int64 aid;

                        if (Int64.TryParse(result.ToString(), out aid))
                        {
                            using (SqlConnection con = new SqlConnection(CS))
                            {
                                con.Open();
                                SqlCommand cmd = new SqlCommand("sp_InsertProduct", con);
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.AddWithValue("@uid", aid);
                                cmd.Parameters.AddWithValue("@aname", txtitemname.Text);
                                cmd.Parameters.AddWithValue("@price", Convert.ToDecimal(txtprice.Text));
                                cmd.Parameters.Add(new SqlParameter("@acategoryid", SqlDbType.Int)).Value = Convert.ToInt32(ddlcategory.SelectedItem.Value);
                                cmd.Parameters.Add(new SqlParameter("@subcatid", SqlDbType.BigInt)).Value = Convert.ToInt64(ddlsubcategory.SelectedItem.Value);
                                // If @atypeid is a string in the database, no conversion is needed.
                                cmd.Parameters.AddWithValue("@atypeid", ddltype.SelectedItem.Value);
                                cmd.Parameters.AddWithValue("@abrief", txtdescription.Text);
                                cmd.Parameters.AddWithValue("@adetail", txtdetails.Text);
                                cmd.Parameters.AddWithValue("@phone", Convert.ToInt64(txtphone.Text));
                                cmd.Parameters.AddWithValue("@lstate", ddlstate.SelectedItem.Value);
                                cmd.Parameters.AddWithValue("@lcity", ddlcity.SelectedItem.Value);
                                cmd.Parameters.AddWithValue("@larea", txtarea.Text);
                                cmd.Parameters.AddWithValue("@nego", cbnego.Checked ? 1L : 0L);

                                aid = Convert.ToInt64(cmd.ExecuteScalar());

                                // File Upload
                                if (FileUpload0.HasFile)
                                {
                                    int maxFileSize = 2 * 1024 * 1024; // 2 MB in bytes

                                    if (FileUpload0.PostedFile.ContentLength <= maxFileSize)
                                    {
                                        string savepath = Server.MapPath("~/ads_images/") + aid;

                                        if (!Directory.Exists(savepath))
                                        {
                                            Directory.CreateDirectory(savepath);
                                        }

                                        string extention = Path.GetExtension(FileUpload0.PostedFile.FileName);
                                        FileUpload0.SaveAs(savepath + "\\" + txtitemname.Text.Trim() + "01" + extention);

                                        SqlCommand cmd2 = new SqlCommand("INSERT INTO tblProductImages(aid, name, extention) VALUES(@aid, @name, @extention)", con);
                                        cmd2.Parameters.AddWithValue("@aid", aid);
                                        cmd2.Parameters.AddWithValue("@name", txtitemname.Text.Trim() + "01");
                                        cmd2.Parameters.AddWithValue("@extention", extention);
                                        cmd2.ExecuteNonQuery();
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('File size exceeds the allowed limit.')</script>");
                                    }
                                }
                                if (FileUpload1.HasFile)
                                {
                                    int maxFileSize = 2 * 1024 * 1024; // 2 MB in bytes

                                    if (FileUpload1.PostedFile.ContentLength <= maxFileSize)
                                    {
                                        string savepath = Server.MapPath("~/ads_images/") + aid;

                                        if (!Directory.Exists(savepath))
                                        {
                                            Directory.CreateDirectory(savepath);
                                        }

                                        string extention = Path.GetExtension(FileUpload1.PostedFile.FileName);
                                        FileUpload1.SaveAs(savepath + "\\" + txtitemname.Text.Trim() + "02" + extention);

                                        SqlCommand cmd2 = new SqlCommand("INSERT INTO tblProductImages(aid, name, extention) VALUES(@aid, @name, @extention)", con);
                                        cmd2.Parameters.AddWithValue("@aid", aid);
                                        cmd2.Parameters.AddWithValue("@name", txtitemname.Text.Trim() + "02");
                                        cmd2.Parameters.AddWithValue("@extention", extention);
                                        cmd2.ExecuteNonQuery();
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('File size exceeds the allowed limit.')</script>");
                                    }
                                }
                                if (FileUpload2.HasFile)
                                {
                                    int maxFileSize = 2 * 1024 * 1024; // 2 MB in bytes

                                    if (FileUpload2.PostedFile.ContentLength <= maxFileSize)
                                    {
                                        string savepath = Server.MapPath("~/ads_images/") + aid;

                                        if (!Directory.Exists(savepath))
                                        {
                                            Directory.CreateDirectory(savepath);
                                        }

                                        string extention = Path.GetExtension(FileUpload2.PostedFile.FileName);
                                        FileUpload2.SaveAs(savepath + "\\" + txtitemname.Text.Trim() + "03" + extention);

                                        SqlCommand cmd2 = new SqlCommand("INSERT INTO tblProductImages(aid, name, extention) VALUES(@aid, @name, @extention)", con);
                                        cmd2.Parameters.AddWithValue("@aid", aid);
                                        cmd2.Parameters.AddWithValue("@name", txtitemname.Text.Trim() + "03");
                                        cmd2.Parameters.AddWithValue("@extention", extention);
                                        cmd2.ExecuteNonQuery();
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('File size exceeds the allowed limit.')</script>");
                                    }
                                }
                                if (FileUpload3.HasFile)
                                {
                                    int maxFileSize = 2 * 1024 * 1024; // 2 MB in bytes

                                    if (FileUpload3.PostedFile.ContentLength <= maxFileSize)
                                    {
                                        string savepath = Server.MapPath("~/ads_images/") + aid;

                                        if (!Directory.Exists(savepath))
                                        {
                                            Directory.CreateDirectory(savepath);
                                        }

                                        string extention = Path.GetExtension(FileUpload3.PostedFile.FileName);
                                        FileUpload3.SaveAs(savepath + "\\" + txtitemname.Text.Trim() + "04" + extention);

                                        SqlCommand cmd2 = new SqlCommand("INSERT INTO tblProductImages(aid, name, extention) VALUES(@aid, @name, @extention)", con);
                                        cmd2.Parameters.AddWithValue("@aid", aid);
                                        cmd2.Parameters.AddWithValue("@name", txtitemname.Text.Trim() + "04");
                                        cmd2.Parameters.AddWithValue("@extention", extention);
                                        cmd2.ExecuteNonQuery();
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('File size exceeds the allowed limit.')</script>");
                                    }
                                }
                                if (FileUpload4.HasFile)
                                {
                                    int maxFileSize = 2 * 1024 * 1024; // 2 MB in bytes

                                    if (FileUpload4.PostedFile.ContentLength <= maxFileSize)
                                    {
                                        string savepath = Server.MapPath("~/ads_images/") + aid;

                                        if (!Directory.Exists(savepath))
                                        {
                                            Directory.CreateDirectory(savepath);
                                        }

                                        string extention = Path.GetExtension(FileUpload4.PostedFile.FileName);
                                        FileUpload4.SaveAs(savepath + "\\" + txtitemname.Text.Trim() + "05" + extention);

                                        SqlCommand cmd2 = new SqlCommand("INSERT INTO tblProductImages(aid, name, extention) VALUES(@aid, @name, @extention)", con);
                                        cmd2.Parameters.AddWithValue("@aid", aid);
                                        cmd2.Parameters.AddWithValue("@name", txtitemname.Text.Trim() + "05");
                                        cmd2.Parameters.AddWithValue("@extention", extention);
                                        cmd2.ExecuteNonQuery();
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('File size exceeds the allowed limit.')</script>");
                                    }
                                }

                                // Continue with handling FileUpload1, FileUpload2, FileUpload3, FileUpload4...

                                // Clear all fields
                                clear();
                                Response.Redirect("Adm_Myads.aspx");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Error! - Try logging out and logging in again.')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Error! - Try logging out and logging in again.')</script>");
                    }
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Session Expired! - Try logout and login again.')</script>");
        }
    }
        public void clear()
    {
        txtitemname.Text = string.Empty;
        txtdetails.Text = string.Empty;
        txtdescription.Text = string.Empty;
        txtprice.Text = string.Empty;
        ddlcategory.SelectedIndex = 0;
        ddlsubcategory.SelectedIndex = -1;
        ddltype.SelectedIndex = -1;
        ddlstate.SelectedIndex = -1;
        ddlcity.SelectedIndex = -1;
        txtarea.Text = string.Empty;
        txtphone.Text = string.Empty;

    }




    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlsubcategory.Enabled = true;
        int MainCategoryID = Convert.ToInt32(ddlcategory.SelectedItem.Value);

        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from subcategory where amaincat='" + ddlcategory.SelectedItem.Value + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlsubcategory.DataSource = dt;
                ddlsubcategory.DataTextField = "asubcat";
                ddlsubcategory.DataValueField = "subcatid";
                ddlsubcategory.DataBind();
                ddlsubcategory.Items.Insert(0, new ListItem("-Select-", "0"));



            }
            if (ddlcategory.SelectedIndex != 0)
            {
                ddlsubcategory.Enabled = true;

            }
            else
            {
                ddlsubcategory.SelectedIndex = -1;
                ddlsubcategory.Enabled = false;
            }

        }
    }

    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcity.Enabled = true;
        int StateID = Convert.ToInt32(ddlstate.SelectedItem.Value);

        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from city where stateid='" + ddlstate.SelectedItem.Value + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlcity.DataSource = dt;
                ddlcity.DataTextField = "cityname";
                ddlcity.DataValueField = "cityid";
                ddlcity.DataBind();
                ddlcity.Items.Insert(0, new ListItem("-Select-", "0"));



            }
            if (ddlstate.SelectedIndex != 0)
            {
                ddlcity.Enabled = true;

            }
            else
            {
                ddlcity.SelectedIndex = -1;
                ddlcity.Enabled = false;
            }

        }
    }
}
