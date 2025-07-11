<%@ Page Title="" Language="C#" MasterPageFile="~/02adminpages/Admin.master" AutoEventWireup="true" CodeFile="Adm_Addcat_page.aspx.cs" Inherits="_02adminpages_Adm_Addcat_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
    <h2 style="margin-left: 330px;">Add Category</h2>
    <div style="margin-top: 18px; margin-left: 330px; margin-right: 330px">

        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label" Text="Category Name"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtcat" CssClass="form-control" runat="server" required="required" placeholder="Enter Category name"></asp:TextBox>

            </div>
            <asp:Button ID="btnadd" runat="server" Text="Add" CssClass="btn btn-primary" Style="margin-top: 10px; margin-right: 10px" OnClick="btnadd_Click" />
            <asp:Label ID="mess01" runat="server" CssClass="text-success" style="margin-top:8px"></asp:Label>

        </div>
        <hr>
    </div>
</div>
<div style="margin-top: 26px; margin-left: 330px; margin-right: 330px">
    <h3 style="margin-top: 26px;">Categories</h3>
    <hr />
    <div class="panel panel-default" style="margin-top: 26px;">

        <div class="pannel-heading">All Categories</div>

        <asp:Repeater ID="Repecat" runat="server">
            <HeaderTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Category</th>
                            
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <th><%# Eval("catid") %></th>
                    <td><%# Eval("catname") %></td>
                    
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
        </table>
            </FooterTemplate>
        </asp:Repeater>

    </div>
</div>


</asp:Content>

