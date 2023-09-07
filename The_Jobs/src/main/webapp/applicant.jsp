<%-- 
    Document   : applicant
    Created on : Sep 5, 2023, 2:02:46 PM
    Author     : Trav
--%>

<%@page import="com.applicant.project.DBAConnection"%>
<%@page import="java.util.List"%>
<%@page import="com.applicant.project.Applicants"%>
<%@page import="com.applicant.project.ApplicantsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%
    ApplicantsDao applicantData = new ApplicantsDao(DBAConnection.getConnection());
    List<Applicants> app = applicantData.getAllApplicants();
    request.setAttribute("APPLICANT_LIST", app);
%>


<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Applicant</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/stafAppstyle.css" rel="stylesheet" type="text/css"/>

        <style>
            .inner{
                margin: 15px 0;
            }
        </style>
    </head>
    <body>
        
        <!-- Nav -->
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand fs-2 fw-bold" href="staffwelcome.jsp">The Jobs</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link active" href="index.jsp">Home</a>
                        <a class="nav-item nav-link" href="applicantAppointment.jsp">Appointment</a>
                        <a class="nav-item nav-link" href="applicant.jsp">Applicant</a>
                        <a class="nav-item nav-link" href="editApplicant.jsp">Edit Applicant</a>
                        <a class="nav-item nav-link" href="login.jsp">Login</a>
                        <a class="nav-item nav-link" href="LogoutServlet">LogOut</a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Nav -->

        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-md-12">
                        <h3>Input Applicant Information</h3>
                        <form action="AddApplicantServlet" method="post">
                            <div class="form-group">
                                <label>Applicant Number</label>
                                <input class="form-control" type="text" name="pnumber" place-holder="Applicant Number" required>
                            </div>
                            <div class="form-group">
                                <label>Applicant Name</label>
                                <input class="form-control" type="text" name="name" place-holder="Applicant Name" required>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input class="form-control" type="text" name="age" place-holder="Age" required>
                            </div>
                            <div class="form-group" >
                                <label>Gender</label>
                                <select id="inputState" type="text" class="form-control" name="gender" required>
                                    <option selected disabled>Choose Gender</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>NIC Number</label>
                                <input class="form-control" type="text" name="nic" place-holder="NIC Number" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input class="form-control" type="text" name="address" place-holder="Address" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" place-holder="Email" required>
                            </div>
                            <div class="form-group">
                                <label>Contact Number</label>
                                <input type="tel" class="form-control" name="cnumber" place-holder="Contact Number" required>
                            </div>
                            <div class="form-group" >
                                <label>Nationality</label>
                                <select id="inputState" type="text" class="form-control" name="nationality" required>
                                    <option selected disabled>Choose Nationality</option>
                                    <option value="Sinhalese">Sinhalese</option>
                                    <option value="Sri Lankan Tamils">Sri Lankan Tamils</option>
                                    <option value="Moors">Moors</option>
                                    <option value="Indian Tamils">Indian Tamils</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                        </form>
                    </div>

                    <div  class="container-fluid">
                        <nav class="navbar navbar-light">
                            <a class="navbar-brand"></a>
                            <form class="form-inline">
                                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                            </form>
                        </nav>
                    </div>

                    <div class="col-md-12">
                        <h3>
                            Applicants Information From Database</h3>
                        <table class="table">
                            <thead class="bg-light">
                                <tr>
                                    <th scope="col">Applicant Number</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Age</th>
                                    <th scope="col">Gender</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">Contact Number</th>
                                    <th scope="col">Nationality</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="tempApplicant" items="${APPLICANTS_LIST}">
                                    <tr>
                                        <td>${tempApplicant.pnumber }</td>
                                        <td>${tempApplicant.name }</td>
                                        <td>${tempApplicant.age }</td>
                                        <td>${tempApplicant.gender }</td>
                                        <td>${tempApplicant.address}</td>
                                        <td>${tempApplicant.cnumber}</td>
                                        <td>${tempApplicant.nationality}</td>
                                        <td><a href="editApplicant.jsp?id=${tempApplicant.id }">Edit</a> 
                                            <a href="DeleteApplicantServlet?id=${tempApplicant.id}">Delete</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
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
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>