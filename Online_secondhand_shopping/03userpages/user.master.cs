using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03userpages_user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("~/01welcome/Login_page.aspx");
        }
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/01welcome/Login_page.aspx");
        Session["Username"] = null;


    }

    protected void SearchButton_Click(object sender, EventArgs e)
    {
        if (searchtxt.Text != "")
        {
            if ((searchtxt.Text.Equals("Mobiles", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Mobile", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Mobiles_page.aspx");
            }
            if ((searchtxt.Text.Equals("Bikes", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Bike", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Bikes_page.aspx");
            }
            if ((searchtxt.Text == "Cars") || (searchtxt.Text == "car") || (searchtxt.Text == "cars") || (searchtxt.Text == "Car"))
            {
                Response.Redirect("Cat_Cars_page.aspx");
            }
            if ((searchtxt.Text.Equals("Books", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Book", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_BSH_page.aspx");
            }
            if ((searchtxt.Text.Equals("Sports", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Sport", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_BSH_page.aspx");
            }
            if ((searchtxt.Text.Equals("Hobbies", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Hobby", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_BSH_page.aspx");
            }
            if ((searchtxt.Text.Equals("Commercials", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Commercial", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_CVS_page.aspx");
            }
            if ((searchtxt.Text.Equals("Vehicles", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Vehicle", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_CVS_page.aspx");
            }
            if ((searchtxt.Text.Equals("Spare parts", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Spare part", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_CVS_page.aspx");

            }
            if ((searchtxt.Text.Equals("Electronics", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Electronic", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_ElecApp_page.aspx");
            }
            if ((searchtxt.Text.Equals("Home appliances", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Home appliance", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_ElecApp_page.aspx");
            }
            if ((searchtxt.Text.Equals("Washing Machines", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Washing machine", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_ElecApp_page.aspx");

            }
            if ((searchtxt.Text.Equals("TV", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("TVs", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_ElecApp_page.aspx");
            }
            if ((searchtxt.Text.Equals("Fridges", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Fridge", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_ElecApp_page.aspx");
            }
            if ((searchtxt.Text.Equals("Clothes", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Cloth", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Fashion_page.aspx");
            }
            if ((searchtxt.Text.Equals("Electronics", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Electronic", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Fashion_page.aspx");
            }
            if ((searchtxt.Text.Equals("Fashions", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Fashion", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Fashion_page.aspx");

            }
            if ((searchtxt.Text.Equals("Sofas", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("sofa", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Furniture_page.aspx");
            }
            if ((searchtxt.Text.Equals("Table", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Tables", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Furniture_page.aspx");
            }
            if ((searchtxt.Text.Equals("Chairs", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("chair", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Furniture_page.aspx");
            }
            if ((searchtxt.Text.Equals("Furnitures", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Furniture", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Furniture_page.aspx");
            }
            if ((searchtxt.Text.Equals("Mobiles", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Mobile", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Mobiles_page.aspx");
            }
            if ((searchtxt.Text.Equals("Smart Phones", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Smart phone", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Mobiles_page.aspx");

            }
            if ((searchtxt.Text.Equals("SmartPhones", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("Smartphone", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Mobiles_page.aspx");

            }
            if ((searchtxt.Text.Equals("Others", StringComparison.OrdinalIgnoreCase) || searchtxt.Text.Equals("others", StringComparison.OrdinalIgnoreCase)))
            {
                Response.Redirect("Cat_Others_page.aspx");

            }


        }
    }
}
