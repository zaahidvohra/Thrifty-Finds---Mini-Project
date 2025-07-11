<%@ Page Title="" Language="C#" MasterPageFile="~/02adminpages/Admin.master" AutoEventWireup="true" CodeFile="Adm_Addsubcat_page.aspx.cs" Inherits="_02adminpages_Adm_Addsubcat_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="margin-left: 330px; margin-right: 330px;">
     <h2>Add Sub-Category</h2>
     <div style="margin-top: 18px;">

         <div class="form-group">
             <asp:Label runat="server" CssClass="col-md-2 control-label" Text="Category Name"></asp:Label>
             <div class="col-md-3">
                 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-light dropdown-toggle" required="required" Style="width: 309px; height: auto; border: 0.5px solid #D3D3D3;">
                 </asp:DropDownList>
             </div>
         </div>
         <div class="form-group">
             <asp:Label runat="server" CssClass="col-md-2 control-label" Text="Sub-Category Name"></asp:Label>
             <div class="col-md-3">
                 <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" required="required"></asp:TextBox>
             </div>
         </div>
         <asp:Button ID="btnadd" runat="server" Text="Add" CssClass="btn btn-primary" Style="margin-top: 10px; margin-right: 10px" OnClick="btnadd_Click" />
         <asp:Label ID="mess01" runat="server"  style="margin-top:16px"></asp:Label>
         
     </div>
         <hr />
 </div>

 <div style="margin-top: 26px; margin-left: 330px; margin-right: 330px">
     <h3>Categories</h3>
     <hr />
     <div class="panel panel-default" style="margin-top:10px;">

         <div class="pannel-heading">All Categories</div>

         <asp:Repeater ID="Repecat" runat="server">
             <HeaderTemplate>
                 <table class="table">
                     <thead>
                         <tr>
                             <th>#</th>
                             <th>Sub-Category</th>
                             <th>Main Category ID</th>
                             
                         </tr>
                     </thead>
                     <tbody>
             </HeaderTemplate>
             <ItemTemplate>
                 <tr>
                     <th><%# Eval("subcatid") %></th>
                     <th><%# Eval("asubcat") %></th>
                     <td><%# Eval("amaincat") %></td>
                     
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

