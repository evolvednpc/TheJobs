<%-- 
    Document   : about
    Created on : Oct 29, 2021, 2:57:56 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
            crossorigin="anonymous"
            />
        <link href="css/consultantStyle.css" rel="stylesheet" type="text/css"/>
        <title>About US</title>

    </head>
    <body>

        <!-- Nav -->
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand fs-2 fw-bold" href="index.jsp">The Jobs</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link" href="index.jsp">Home</a>
                        <a class="nav-item nav-link active" href="#">About Us</a>
                        <a class="nav-item nav-link" href="services.jsp">Services</a>
                        <a class="nav-item nav-link" href="consultant.jsp">Consultants</a>
                        <a class="nav-item nav-link" href="applicantAppointment.jsp">Appointment</a>
                        <a class="nav-item nav-link" href="#">Contact</a>
                        <a class="nav-item nav-link" onclick="myFunction()" style="cursor: pointer">Login</a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Nav -->

        <div class="container h-contact-container">
            <h2 class="text-white">About US</h2>
            <p class="text-colour">
                The Jobs, a prominent consulting center in Colombo, which offers complimentary advisory services to individuals seeking employment opportunities overseas. The center maintains a team of part-time job consultants, each specializing in specific countries and job types, to provide tailored guidance to job seekers.
                </p>

        </div>

        <!-- Gallery -->
        <div class="row">
            <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
                <img
                    src="img/images.jpe"
                    class="w-100 shadow-1-strong rounded mb-4"
                    alt=""
                    />

                <img
                    src="img/img_thumb_3.jpg"
                    class="w-100 shadow-1-strong rounded mb-4"
                    alt=""
                    />
            </div>

            <div class="col-lg-4 mb-4 mb-lg-0">
                <img
                    src="img/slider 1.jpg"
                    class="w-100 shadow-1-strong rounded mb-4"
                    alt=""
                    />

                <img
                    src="img/slider 11.jpg"
                    class="w-100 shadow-1-strong rounded mb-4"
                    alt=""
                    />
            </div>

            <div class="col-lg-4 mb-4 mb-lg-0">
                <img
                    src="img/slider 2.jpg"
                    class="w-100 shadow-1-strong rounded mb-4"
                    alt=""
                    />

                <img
                    src="img/surgery.jpg"
                    class="w-100 shadow-1-strong rounded mb-4"
                    alt=""
                    />
            </div>
        </div>
        <!-- Gallery -->



        <!-- Footer -->
        <footer class="text-center text-lg-start bg-light text-muted">

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                <i class="fas fa-gem me-3"></i>Company name
                            </h6>
                            <p>
                                Here you can use rows and columns to organize your footer content. Lorem ipsum
                                dolor sit amet, consectetur adipisicing elit.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Products
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Angular</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">React</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Vue</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Laravel</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Useful links
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Pricing</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Settings</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Orders</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Help</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Contact
                            </h6>
                            <p><i class="fas fa-home me-3"></i> Colombo 05, No 10012, <br>Sri Lanka</p>
                            <p>
                                <i class="fas fa-envelope me-3"></i>
                                info@example.com
                            </p>
                            <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                            <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                © 2021 Copyright:
                <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
</html>
