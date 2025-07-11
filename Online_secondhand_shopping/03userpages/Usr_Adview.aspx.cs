using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03userpages_Usr_Adview : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["signupdata"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["aid"] != null)
        {
            if (!IsPostBack)
            {
                BindProductImage();
                BindProductDetails();

            }
        }
        else
        {
            Response.Redirect("Allcat_page.aspx");
        }
    }

    private void BindProductDetails()
    {
        Int64 aid = Convert.ToInt64(Request.QueryString["aid"]);
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from ads where aid='" + aid + "'", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            rptrProductDetails.DataSource = dt;
            rptrProductDetails.DataBind();

        }
    }


    private void BindProductImage()
    {
        Int64 aid = Convert.ToInt64(Request.QueryString["aid"]);
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblProductImages where aid='" + aid + "'", con);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            rptrImage.DataSource = dt;
            rptrImage.DataBind();

        }
    }

    protected string GetActiveImgClass(int ItemIndex)
    {
        if (ItemIndex == 0)
        {
            return "active";
        }
        else
        {
            return "";
        }
    }
}