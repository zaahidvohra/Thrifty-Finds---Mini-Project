<%@ Page Title="" Language="C#" MasterPageFile="~/02adminpages/Admin.master" AutoEventWireup="true" CodeFile="Adm_Delsubcat.aspx.cs" Inherits="_02adminpages_Adm_Delsubcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div style="margin-left: 330px; margin-right:330px;">
     <h2>Delete Sub-Category</h2>
     <div style="margin-top: 18px; ">

         
         <div class="form-group">
             <asp:Label runat="server" CssClass="col-md-2 control-label" Text="Sub-Category id"></asp:Label>
             <div class="col-md-3">
                 <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" required="required" placeholder="Enter Category id" pattern="^\d+$"></asp:TextBox>
             </div>
         </div>
         <asp:Button ID="btndel" runat="server" Text="Delete" CssClass="btn btn-danger" Style="margin-top: 10px; margin-right: 10px" OnClick="btndel_Click" />
         <asp:Label ID="mess01" runat="server" Style="margin-top: 16px"></asp:Label>
         <hr>
     </div>
 </div>

 <div style="margin-top: 26px; margin-left: 330px; margin-right: 330px">
     <h3 style="margin-top: 26px; ">Categories</h3>
     <hr />
     <div class="panel panel-default" style="margin-top: 26px;">

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

