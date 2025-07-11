<%@ Page Title="" Language="C#" MasterPageFile="~/03userpages/user.master" AutoEventWireup="true" CodeFile="Usr_Myads.aspx.cs" Inherits="_03userpages_Usr_Myads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
        <style>
            .product-box {
                display: flex;
                background-color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                margin-top: 50px;
            }

            .product-image {
                flex: 1;
                padding: 20px;
            }

            .product-details {
                flex: 1;
                padding: 20px;
                font-size: 20px;
            }

            .product-badge {
                background-color: #E1AD01;
                color: #fff;
                padding: 5px 10px;
                border-radius: 5px;
                font-weight: bold;
            }

            .container, .container-lg, .container-md, .container-sm, .container-xl {
                max-width: auto;
                padding: initial;
                margin-top: auto;
            }
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <div style="display: flex; justify-content: center">
            <h2>My Posts</h2>
        </div>
        <div class="container">
            <asp:Repeater ID="rptrProducts" runat="server">
                <itemtemplate>
                    <a href="Usr_Adview.aspx?aid=<%# Eval("aid") %>" style="text-decoration: none; color: inherit;">
                        <div class="product-box">

                            <div class="product-image">
                                <img src="../ads_images/<%# Eval("aid") %>/<%# Eval("ImageName") %><%# Eval("extention")  %>" alt="Error" class="img-fluid" style="height: 300px; width: auto;">
                            </div>
                            <div class="product-details">

                                <span class="product-badge"><%#Eval("atypeid") %></span>
                                <h2><%#Eval("aname") %></h2>
                                <p><strong>Price:</strong> Rs.<%#Eval("aprice") %></p>
                                <p><strong>Description: </strong><%#Eval("abrief") %></p>
                                <p><strong>Phone: </strong><%#Eval("phone") %></p>
                                <p><strong>Location: </strong><%#Eval("StateName") %>,<%#Eval("CityName") %></p>
                                <asp:Button ID="btndel" runat="server" Text="Delete Ad" CssClass="btn btn-danger" Style="margin-top: 10px; margin-right: 10px" CommandArgument='<%# Eval("aid") %>' OnClick="btndel_Click" />

                            </div>

                        </div>
                    </a>
                </itemtemplate>
            </asp:Repeater>
        </div>
    </asp:Content>
