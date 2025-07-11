<%@ Page Title="" Language="C#" MasterPageFile="~/02adminpages/Admin.master" AutoEventWireup="true" CodeFile="Editprofile_page.aspx.cs" Inherits="_02adminpages_Editprofile_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        footer {
    background: rgba(215, 215, 215, 0.4);
    position: fixed;
    bottom: 0;
    width: 100%;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="margin-left: 320px;">
        <div class="col-md-6">
            <div class="form-group">
                <h3>Edit Profile Info</h3>
                <asp:TextBox ID="phone_txt" CssClass="form-control" placeholder="Phone Number" runat="server" required="required" Style="width: 320.469px; margin-top: 8px;" pattern="^\d{10}$" TextMode="Phone"></asp:TextBox>
                <asp:TextBox ID="email_txt" CssClass="form-control" placeholder="Email" runat="server" required="required" Style="width: 320.469px; margin-top: 8px;" pattern="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ToolTip="Invalid Email" TextMode="Email"></asp:TextBox>
                <asp:Button ID="confirm_btn" runat="server" Text="Confirm" CssClass="btn btn-success shadow d-block " Style="margin-bottom: -1px; margin-right: 2px; margin-left: 2px; margin-top: 10px;" OnClick="confirm_btn_Click" /><asp:Label ID="mess_lbl" runat="server"></asp:Label>

            </div>


        </div>
    </div>


</asp:Content>

