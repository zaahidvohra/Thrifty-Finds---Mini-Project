<%@ Page Title="" Language="C#" MasterPageFile="~/02adminpages/Admin.master" AutoEventWireup="true" CodeFile="Postad_page.aspx.cs" Inherits="_02adminpages_Postad_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <h2>Post Advertisement</h2>
        <hr />

        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>Title</label>
                    <asp:TextBox ID="txtitemname" CssClass="form-control " runat="server" required="required" Style="margin-top: 8px"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Price</label>
                    <asp:TextBox ID="txtprice" CssClass="form-control" runat="server" required="required" pattern="^\d+$" Style="margin-top: 8px"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Category</label>
                    <asp:DropDownList ID="ddlcategory" Style="margin-top: 8px" runat="server" CssClass="form-control" AutoPostBack="true" required="required" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label>Sub-Category</label>
                    <asp:DropDownList ID="ddlsubcategory" runat="server" Style="margin-top: 8px" CssClass="form-control" required="required"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>Contact Number</label>
                    <asp:TextBox ID="txtphone" CssClass="form-control" Style="margin-top: 8px" runat="server" required="required" pattern="^\d{10}$"></asp:TextBox>
                </div>

                <div class="form-group">

                    <label>State</label>
                    <asp:DropDownList ID="ddlstate" runat="server" CssClass="form-control" required="required" Style="margin-top: 8px" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    <label>City</label>
                    <asp:DropDownList ID="ddlcity" runat="server" CssClass="form-control" required="required" Style="margin-top: 8px"></asp:DropDownList>
                    <label>Area</label>
                    <asp:TextBox ID="txtarea" autocomplete="off" CssClass="form-control" runat="server" required="required" placeholder="Enter Area" Style="margin-top: 8px"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="type">Advertisement type</label>
                    <asp:DropDownList ID="ddltype" CssClass="form-control" runat="server" required="required">
                        <asp:ListItem Text="-Select-" />
                        <asp:ListItem Text="Selling" Value="I'm a Seller" />
                        <asp:ListItem Text="Buying" Value="I'm a Buyer" />
                    </asp:DropDownList>
                </div>
            </div>

            <div class="col-md-6">


                <div class="form-group">
                    <label for="description">Details</label>
                    <asp:TextBox ID="txtdescription" CssClass="form-control" TextMode="MultiLine" runat="server" required="required"></asp:TextBox>
                    
                </div>

                <div class="form-group">
                    <label for="details">Description</label>
                    <asp:TextBox ID="txtdetails" CssClass="form-control" TextMode="MultiLine" Style="height: 250px" runat="server" required="required"></asp:TextBox>
                    
                </div>




                <div class="form-group">
                    <label for="images" style="margin-top: 8px">Upload Images</label>
                    <asp:FileUpload ID="FileUpload0" runat="server" CssClass="form-control" required="required" accept="image/*" />
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" required="required" accept="image/*" />
                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" required="required" accept="image/*" />
                    <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" required="required" accept="image/*" />
                    <asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control" required="required" accept="image/*" />
                    <!-- Add more FileUpload controls as needed -->
                </div>
                <div class="form-group" style="margin-top: 8px">
                    <label for="nego">Open for Negotiation</label>
                    <asp:CheckBox ID="cbnego" runat="server" />
                </div>
                <div class="form-group" style="margin-top: 8px">
                    <asp:Label ID="mess_lbl" runat="server"></asp:Label>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnpost" runat="server" Text="Post" CssClass="btn btn-primary" OnClick="btnadd_Click" Style="margin-top: 8px" />
                </div>
            </div>
        </div>
    </div>


</asp:Content>

