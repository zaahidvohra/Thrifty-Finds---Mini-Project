<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aboutus_page.aspx.cs" Inherits="_01welcome_Aboutus_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>About Us - Thrifty Finds</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Navigation Bar Start -->
            <nav class="navbar navbar-expand-md bg-body py-3">
                <div class="container">
                    <a class="navbar-brand d-flex align-items-center" href="Welcome_page.aspx"><span style="font-weight: bold;">Thrifty Finds</span></a>
                    <button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-2"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navcol-2">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item"><a class="nav-link active" href="Welcome_page.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="Aboutus_page.aspx">About Us</a></li>
                            <li class="nav-item"><a class="nav-link" href="Contactus_page.aspx">Contact Us</a></li>
                            <li class="nav-item"><a class="nav-link active" href="Help_page.aspx">Help</a></li>
                            <li class="nav-item"><a class="nav-link active" href="Team_page.aspx">Team</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Navigation Bar End -->

            <div class="container bg-primary-gradient py-5">
                <div class="row">
                    <div class="col-md-8 col-xl-6 text-center mx-auto">
                        <p class="fw-bold text-success mb-2">#1 Thrifting Platform</p>
                        <h3 class="fw-bold">About Us</h3>
                    </div>
                </div>
                <div class="py-5 p-lg-5" style="margin-bottom: -48px;">
                    <div class="row row-cols-1 row-cols-md-2 mx-auto" style="max-width: 900px;">
                        <div class="col mb-5">
                            <div class="card shadow-sm">
                                <div class="card-body px-4 py-5 px-md-5">
                                    <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem; right: 1rem; position: absolute;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-pin-angle">
                                            <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146zm.122 2.112v-.002.002zm0-.002v.002a.5.5 0 0 1-.122.51L6.293 6.878a.5.5 0 0 1-.511.12H5.78l-.014-.004a4.507 4.507 0 0 0-.288-.076 4.922 4.922 0 0 0-.765-.116c-.422-.028-.836.008-1.175.15l5.51 5.509c.141-.34.177-.753.149-1.175a4.924 4.924 0 0 0-.192-1.054l-.004-.013v-.001a.5.5 0 0 1 .12-.512l3.536-3.535a.5.5 0 0 1 .532-.115l.096.022c.087.017.208.034.344.034.114 0 .23-.011.343-.04L9.927 2.028c-.029.113-.04.23-.04.343a1.779 1.779 0 0 0 .062.46z"></path>
                                        </svg>
                                    </div>
                                    <h5 class="fw-bold card-title">Purpose and Use</h5>
                                    <p class="text-muted card-text mb-4"><span style="font-weight: normal !important; font-style: normal !important; color: rgb(32, 33, 36);">Thrifty finds is a Web Application which will used to buy and sell products on this website.</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(32, 33, 36);">Any user can create an advertisement on this website of any used item which the user intends to sell or buy.</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(32, 33, 36);">On the other hand, users can surf the website and find different items which they are looking forward to buy or sell.</span><br>
                                        <br>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="card shadow-sm">
                                <div class="card-body px-4 py-5 px-md-5">
                                    <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem; right: 1rem; position: absolute;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-pin-angle">
                                            <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146zm.122 2.112v-.002.002zm0-.002v.002a.5.5 0 0 1-.122.51L6.293 6.878a.5.5 0 0 1-.511.12H5.78l-.014-.004a4.507 4.507 0 0 0-.288-.076 4.922 4.922 0 0 0-.765-.116c-.422-.028-.836.008-1.175.15l5.51 5.509c.141-.34.177-.753.149-1.175a4.924 4.924 0 0 0-.192-1.054l-.004-.013v-.001a.5.5 0 0 1 .12-.512l3.536-3.535a.5.5 0 0 1 .532-.115l.096.022c.087.017.208.034.344.034.114 0 .23-.011.343-.04L9.927 2.028c-.029.113-.04.23-.04.343a1.779 1.779 0 0 0 .062.46z"></path>
                                        </svg>
                                    </div>
                                    <h5 class="fw-bold card-title">Project Profile</h5>
                                    <p class="text-muted card-text mb-4"><span style="font-weight: normal !important; color: rgb(128, 79, 59);">The website aims to create a user-friendly and convenient platform for</span><br>
                                        <span style="font-weight: normal !important; color: rgb(128, 79, 59);">people to buy and sell used items, helping users find what they need and get</span><br>
                                        <span style="font-weight: normal !important; color: rgb(128, 79, 59);">rid of items they no longer require.</span><br>
                                        <span style="font-weight: normal !important; color: rgb(128, 79, 59);">It can be a valuable resource for those looking to save money on</span><br>
                                        <span style="font-weight: normal !important; color: rgb(128, 79, 59);">purchases or find new homes for their pre-owned belongings.</span><br>
                                        <br>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-4">
                            <div class="card shadow-sm">
                                <div class="card-body px-4 py-5 px-md-5">
                                    <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem; right: 1rem; position: absolute;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-pin-angle">
                                            <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146zm.122 2.112v-.002.002zm0-.002v.002a.5.5 0 0 1-.122.51L6.293 6.878a.5.5 0 0 1-.511.12H5.78l-.014-.004a4.507 4.507 0 0 0-.288-.076 4.922 4.922 0 0 0-.765-.116c-.422-.028-.836.008-1.175.15l5.51 5.509c.141-.34.177-.753.149-1.175a4.924 4.924 0 0 0-.192-1.054l-.004-.013v-.001a.5.5 0 0 1 .12-.512l3.536-3.535a.5.5 0 0 1 .532-.115l.096.022c.087.017.208.034.344.034.114 0 .23-.011.343-.04L9.927 2.028c-.029.113-.04.23-.04.343a1.779 1.779 0 0 0 .062.46z"></path>
                                        </svg>
                                    </div>
                                    <h5 class="fw-bold card-title">Modeling Process</h5>
                                    <p class="text-muted card-text mb-4"><span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">In our modeling process, we are</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">making Use case Diagram,</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">Activity Diagram, Sequence</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">Diagram, Class Diagram and E-R Diagram. We are using Spiral Model for our</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">project.</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">Our aim is to work in two teams,</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">one team will handle the frontend development and other team will handle the</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">backend process and the database</span><br>
                                        <br>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-4">
                            <div class="card shadow-sm">
                                <div class="card-body px-4 py-5 px-md-5">
                                    <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem; right: 1rem; position: absolute;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-pin-angle">
                                            <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146zm.122 2.112v-.002.002zm0-.002v.002a.5.5 0 0 1-.122.51L6.293 6.878a.5.5 0 0 1-.511.12H5.78l-.014-.004a4.507 4.507 0 0 0-.288-.076 4.922 4.922 0 0 0-.765-.116c-.422-.028-.836.008-1.175.15l5.51 5.509c.141-.34.177-.753.149-1.175a4.924 4.924 0 0 0-.192-1.054l-.004-.013v-.001a.5.5 0 0 1 .12-.512l3.536-3.535a.5.5 0 0 1 .532-.115l.096.022c.087.017.208.034.344.034.114 0 .23-.011.343-.04L9.927 2.028c-.029.113-.04.23-.04.343a1.779 1.779 0 0 0 .062.46z"></path>
                                        </svg>
                                    </div>
                                    <h5 class="fw-bold card-title">Our Aim</h5>
                                    <p class="text-muted card-text mb-4"><span style="font-weight: normal !important; color: rgb(128, 79, 59);">Our website will facilitate two</span><br>
                                        <span style="font-weight: normal !important; color: rgb(128, 79, 59);">main functionalities:</span><br>
                                        1.<span style="font-weight: normal !important; color: rgb(128, 79, 59);">Sellers can create ads for their</span><br>
                                        <span style="font-weight: normal !important; color: rgb(128, 79, 59);">used items, making them visible to potential buyers.</span><br>
                                        <span style="font-weight: normal !important; color: rgb(128, 79, 59);">2. Buyers can create ads expressing their needs for specific</span><br>
                                        <span style="font-weight: normal !important; color: rgb(128, 79, 59);">items,&nbsp;&nbsp;&nbsp; giving sellers the opportunity</span><br>
                                        <span style="font-weight: normal !important; color: rgb(128, 79, 59);">to fulfill those requirements.</span><br>
                                        <br>
                                        <br>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-4">
                            <div class="card shadow-sm">
                                <div class="card-body px-4 py-5 px-md-5">
                                    <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem; right: 1rem; position: absolute;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-pin-angle">
                                            <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146zm.122 2.112v-.002.002zm0-.002v.002a.5.5 0 0 1-.122.51L6.293 6.878a.5.5 0 0 1-.511.12H5.78l-.014-.004a4.507 4.507 0 0 0-.288-.076 4.922 4.922 0 0 0-.765-.116c-.422-.028-.836.008-1.175.15l5.51 5.509c.141-.34.177-.753.149-1.175a4.924 4.924 0 0 0-.192-1.054l-.004-.013v-.001a.5.5 0 0 1 .12-.512l3.536-3.535a.5.5 0 0 1 .532-.115l.096.022c.087.017.208.034.344.034.114 0 .23-.011.343-.04L9.927 2.028c-.029.113-.04.23-.04.343a1.779 1.779 0 0 0 .062.46z"></path>
                                        </svg>
                                    </div>
                                    <h5 class="fw-bold card-title">Frontend Implementation</h5>
                                    <p class="text-muted card-text mb-4"><span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">In frontend, the designing is&nbsp;done by using Bootstrap, JavaScript, HTML &amp; CSS,&nbsp; Adobe Illustrator and Adobe After Effects. At</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">last the final integration will be done of all the modules and while&nbsp;integrating,&nbsp; the unit testing and&nbsp;integration testing will be performed.</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col mb-4">
                            <div class="card shadow-sm">
                                <div class="card-body px-4 py-5 px-md-5">
                                    <div class="bs-icon-lg d-flex justify-content-center align-items-center mb-3 bs-icon" style="top: 1rem; right: 1rem; position: absolute;">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-pin-angle">
                                            <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146zm.122 2.112v-.002.002zm0-.002v.002a.5.5 0 0 1-.122.51L6.293 6.878a.5.5 0 0 1-.511.12H5.78l-.014-.004a4.507 4.507 0 0 0-.288-.076 4.922 4.922 0 0 0-.765-.116c-.422-.028-.836.008-1.175.15l5.51 5.509c.141-.34.177-.753.149-1.175a4.924 4.924 0 0 0-.192-1.054l-.004-.013v-.001a.5.5 0 0 1 .12-.512l3.536-3.535a.5.5 0 0 1 .532-.115l.096.022c.087.017.208.034.344.034.114 0 .23-.011.343-.04L9.927 2.028c-.029.113-.04.23-.04.343a1.779 1.779 0 0 0 .062.46z"></path>
                                        </svg>
                                    </div>
                                    <h5 class="fw-bold card-title">Backend Implementation</h5>
                                    <p class="text-muted card-text mb-4"><span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">In backend, We are using GitHub</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">as our version control system and our complete project will be built on visual</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">studio 2022 with SQL server as our database is provided by the visual studio</span><br>
                                        <span style="font-weight: normal !important; font-style: normal !important; color: rgb(128, 79, 59);">under ADO. Net class.</span><br>
                                        <br>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-primary-gradient">
                <div class="container py-4 py-lg-5" style="padding-bottom: 12px; margin-top: 87px; margin-bottom: 7px;">
                    <div class="row justify-content-center">
                        <div class="col-sm-4 col-md-3 text-center text-lg-start d-flex flex-column">
                            <h3 class="fs-6 fw-bold">Terms &amp; Conditions</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Web design</a></li>
                                <li><a href="#">Development</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-4 col-md-3 text-center text-lg-start d-flex flex-column">
                            <h3 class="fs-6 fw-bold">About</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Company</a></li>
                                <li><a href="#">Team</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-4 col-md-3 text-center text-lg-start d-flex flex-column">
                            <h3 class="fs-6 fw-bold">Privacy &amp; safety</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Job openings</a></li>
                                <li><a href="#">Employee success</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 text-center text-lg-start d-flex flex-column align-items-center order-first align-items-lg-start order-lg-last">
                            <div class="fw-bold d-flex align-items-center mb-2"><span>Thrifty Finds</span></div>
                            <p class="mb-0">Thrifty Finds © October 2023</p>
                            <ul class="list-inline mb-0">
                                <li class="list-inline-item">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-facebook">
                                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"></path>
                                    </svg></li>
                                <li class="list-inline-item">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-twitter">
                                        <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"></path>
                                    </svg></li>
                                <li class="list-inline-item">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-instagram">
                                        <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
                                    </svg></li>
                            </ul>
                        </div>
                    </div>
                    <div class="text-muted d-flex justify-content-between align-items-center pt-3"></div>
                </div>
            </footer>

        </div>
    </form>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/script.min.js"></script>
</body>
</html>