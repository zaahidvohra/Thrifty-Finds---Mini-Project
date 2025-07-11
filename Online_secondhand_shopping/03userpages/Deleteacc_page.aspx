<%@ Page Title="" Language="C#" MasterPageFile="~/03userpages/user.master" AutoEventWireup="true" CodeFile="Deleteacc_page.aspx.cs" Inherits="_03userpages_Deleteacc_page" %>

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
                <h3>Delete Account</h3>
                <asp:TextBox ID="uname_txt" CssClass="form-control" placeholder="Confirm UserName" runat="server" required="required" Style="width: 320.469px;"></asp:TextBox>
                <asp:TextBox ID="password_txt" CssClass="form-control" placeholder="Confirm Password" runat="server" required="required" Style="width: 320.469px; margin-top: 8px;" TextMode="Password"></asp:TextBox>
                <asp:Button ID="delete_btn" runat="server" Text="Delete" CssClass="btn btn-danger shadow d-block " Style="margin-bottom: -1px; margin-right: 2px; margin-left: 2px; margin-top: 10px;" OnClick="delete_btn_Click" /><asp:Label ID="mess_lbl" runat="server" CssClass="text-danger"></asp:Label>

            </div>
        </div>
    </div>
</asp:Content>

