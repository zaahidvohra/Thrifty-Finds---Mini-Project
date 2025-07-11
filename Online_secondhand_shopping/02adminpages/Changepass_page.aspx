<%@ Page Title="" Language="C#" MasterPageFile="~/02adminpages/Admin.master" AutoEventWireup="true" CodeFile="Changepass_page.aspx.cs" Inherits="_02adminpages_Changepass_page" %>

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
                <h3>Change Password</h3>
                <asp:TextBox ID="currentpass_txt" CssClass="form-control" placeholder="Current Password" runat="server" required="required" Style="width: 320.469px; margin-top: 8px;" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="password_txt" CssClass="form-control" placeholder="New Password" runat="server" required="required" Style="width: 320.469px; margin-top: 8px;" pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=])[A-Za-z\d@#$%^&+=]{8,}$" ToolTip="Password must contain: Minimum 8 characters at-least 1 Uppercase ,1 Number and 1 special character" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="conpassword_txt" CssClass="form-control" placeholder="Confirm New Password" runat="server" required="required" Style="width: 320.469px; margin-top: 8px;" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Unmatched Password" ControlToCompare="password_txt" ControlToValidate="conpassword_txt" ForeColor="#EC0000"></asp:CompareValidator>
                <asp:Button ID="confirm_btn" runat="server" Text="Confirm" CssClass="btn btn-success shadow d-block " Style="margin-bottom: -1px; margin-right: 2px; margin-left: 2px; margin-top: 10px;" OnClick="confirm_btn_Click" /><asp:Label ID="mess_lbl" runat="server" CssClass="text-danger"></asp:Label>

            </div>


        </div>
    </div>


</asp:Content>

