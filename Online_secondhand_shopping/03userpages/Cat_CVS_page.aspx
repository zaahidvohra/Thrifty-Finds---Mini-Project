<%@ Page Title="" Language="C#" MasterPageFile="~/03userpages/user.master" AutoEventWireup="true" CodeFile="Cat_CVS_page.aspx.cs" Inherits="_03userpages_Cat_CVS_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="stylesheet" type="text/css" href="css/style.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div style="display: flex; justify-content: center">
    <h2>Commercial, Vehicle and Spares</h2>
</div>
<div class="container">
    <div class="row">
        <asp:Repeater ID="rptrProducts" runat="server">
            <itemtemplate>
                <!-- Advertisement Card 1 -->
                <div class="col-md-4">
                    <a href="Usr_Adview.aspx?aid=<%# Eval("aid") %>" style="text-decoration: none;">
                        <div class="card">
                            <img class="card-img-top" src="../ads_images/<%# Eval("aid") %>/<%# Eval("ImageName") %><%# Eval("extention")  %>" alt="Image not available" style="height: 300px; width: auto;" />
                            <div class="card-body">
                                <span class="badge bg-warning"><%#Eval("atypeid") %></span>
                                <h5 class="card-title"><%#Eval("aname") %></h5>
                                <p class="card-text">
                                    <strong>Description:</strong> <%#Eval("abrief") %>
                                    <br />
                                    <strong>Price:</strong><%#Eval("aprice") %>Rs
                                </p>
                                <p class="card-text Location"><%#Eval("StateName") %>,<%#Eval("CityName") %></p>

                            </div>
                        </div>
                    </a>
                </div>



            </itemtemplate>
        </asp:Repeater>


    </div>
</div>
</asp:Content>

