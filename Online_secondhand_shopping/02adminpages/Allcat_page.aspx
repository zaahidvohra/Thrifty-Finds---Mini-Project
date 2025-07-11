<%@ Page Title="" Language="C#" MasterPageFile="~/02adminpages/Admin.master" AutoEventWireup="true" CodeFile="Allcat_page.aspx.cs" Inherits="_02adminpages_Allcat_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Carousel -->
    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" style="width: auto; height: 456px; display: flex; justify-content: center;">
        <div class="carousel-inner" style="text-align: center;">
            <div class="carousel-item active">
                <img src="images/01.jpg" class="d-block img-fluid mx-auto" alt="..." />
            </div>
            <div class="carousel-item">
                <img src="images/03.jpg" class="d-block img-fluid mx-auto" alt="..." />
            </div>
            <div class="carousel-item">
                <img src="images/02.jpg" class="d-block img-fluid mx-auto" alt="..." />
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


    <div style="display: flex; justify-content: center">
        <h2>Advertisements</h2>
    </div>
    <div class="container">
        <div class="row">
            <asp:Repeater ID="rptrProducts" runat="server">
                <ItemTemplate>
                    <!-- Advertisement Card 1 -->
                    <div class="col-md-4" style="overflow: auto;">
                        <a href="Adm_Adview.aspx?aid=<%# Eval("aid") %>" style="text-decoration: none;">
                            <div class="card">
                                <img class="card-img-top" src="../ads_images/<%# Eval("aid") %>/<%# Eval("ImageName") %><%# Eval("extention")  %>" alt="Image not available" style="height: 300px; width: auto;" />
                                <div class="card-body">
                                    <span class="badge bg-warning"><%#Eval("atypeid") %></span>
                                    <h4 class="card-title"><%#Eval("aname") %></h4>
                                    <p class="card-text">
                                        <strong>Description:</strong><%#Eval("abrief") %>
                                        <br />
                                        <strong>Price:</strong><%#Eval("aprice") %>Rs
                                    </p>
                                    <p class="card-text Location"><%#Eval("StateName") %>,<%#Eval("CityName") %></p>

                                </div>
                            </div>
                        </a>
                    </div>



                </ItemTemplate>
            </asp:Repeater>


        </div>
    </div>

</asp:Content>

