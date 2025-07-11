<%@ Page Title="" Language="C#" MasterPageFile="~/02adminpages/Admin.master" AutoEventWireup="true" CodeFile="Adm_Adview.aspx.cs" Inherits="_02adminpages_Adm_Adview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .product-box {
            display: flex;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 0px;
            height: 800px;
        }

        .product-image {
            flex: 1.5;
            padding: 65px;
            display: flex; /* Added display flex to center the carousel */
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
        }

        .carousel {
            display: flex;
            overflow: hidden;
            width: 100%; /* Set the width of the carousel to 100% */
            height: 100%; /* Set the height of the carousel to 100% */
        }

        .carousel-slide {
            flex: 0 0 auto;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

            .carousel-slide img {
                max-width: 100%;
                max-height: 100%;
                object-fit: contain; /* This property preserves the aspect ratio without stretching */
            }

        .product-details {
            flex: 1;
            padding: 20px;
        }

        .product-badge {
            background-color: #E1AD01;
            color: #fff;
            padding: 5px 10px;
            border-radius: 5px;
            font-weight: bold;
        }

        .container, .container-lg, .container-md, .container-sm, .container-xl {
            max-width: 1400px;
            padding: 0px;
            margin-top: 0px;
        }


        .carousel-inner img {
            height: 600px;
            width: auto;
            object-fit: contain;
        }

        /* Old CSS */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="product-box">
            <div class="product-image">
                <!-- For Carousel -->
                <div id="carouselExample" class="carousel slide">
                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater ID="rptrImage" runat="server">
                            <ItemTemplate>
                                <div class="carousel-item <%# GetActiveImgClass(Container.ItemIndex) %>">
                                    <img src="../ads_images/<%# Eval("aid") %>/<%# Eval("name") %><%# Eval("extention")  %>" class="d-block w-100" alt="images/noimg.jpg">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <!-- For Details -->
            <asp:Repeater ID="rptrProductDetails" runat="server">
                <ItemTemplate>
                    <div class="product-details" style="max-height: auto; max-width: 500px; overflow: hidden;">
                        <br />
                        <br />
                        <span class="product-badge"><%#Eval("atypeid") %></span>
                        <h2><%# Eval("aname") %></h2>
                        <p><strong>Price:</strong>Rs.<%#Eval("aprice") %></p>
                        <p><strong>Brief Description:</strong><%#Eval("abrief") %></p>
                        <p style="overflow: hidden; text-overflow: ellipsis;"><strong>Detailed Description:</strong><%#Eval("adetail") %></p>
                        <div class="contact-details">
                            <p><strong>Phone No:</strong> <%#Eval("phone") %></p>
                            <p><strong>Open for Negotiation? </strong> <%#((int)Eval("nego") == 1) ? "Yes":"" %></p>
                            <p><strong>Area: </strong><%#Eval("larea") %></p>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>


