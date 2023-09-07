
<%@page import="com.appointment.project.DBAPConnection"%>
<%@page import="java.util.List"%>
<%@page import="com.appointment.project.Appointments"%>
<%@page import="com.appointment.project.AppointmentsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%
    AppointmentsDao appointmentData = new AppointmentsDao(DBAPConnection.getConnection());
    List<Appointments> appointment = appointmentData.getAllAppointments();
    request.setAttribute("APPOINTMENTS_LIST", appointment);
%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Home</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <style>
            .inner{
                margin: 15px 0;
            }
            
            label{
                padding-top: 8px;
            }
            
            button{
                margin-top: 8px;
            }
            
        </style>

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
                        <a class="nav-item nav-link active" href="index.jsp">Home</a>
                        <a class="nav-item nav-link" href="#">About US</a>
                        <a class="nav-item nav-link" href="#">Services</a>
                        <a class="nav-item nav-link" href="#">Consultants</a>
                        <a class="nav-item nav-link" href="applicantAppointment.jsp">Appointment</a>
                        <a class="nav-item nav-link" href="#">Contact</a>
                        <a class="nav-item nav-link" href="login.jsp">Login</a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Nav -->

        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-md-12">
                        <h3>
                            Schedule Appointment</h3>
                        <form action="AddAppointmentsServlet" method="post">
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
                                <label>Contact Number</label>
                                <input type="tel" class="form-control" name="number" place-holder="Contact Number" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" place-holder="Email" required>
                            </div>
                            <div class="form-group" >
                                <label>Consultant</label>
                                <select id="inputState" type="text" class="form-control" name="consultant" required>
                                    <option selected disabled>Choose Consultant</option>
                                    <option value="Mr. Nihal Kariyawasam">Mr. Nihal Kariyawasam</option>
                                    <option value="Mr. Senarath Gunasingha">Mr. Senarath Gunasingha</option>
                                    <option value="Mrs. Roshini Buddikochara">Mrs. Roshini Buddikochara</option>
                                    <option value="Mrs. Megan Fox">Mrs. Megan Fox</option>
                                </select>
                            </div>
                            <div class="form-group" >
                                <label>Specialization - Description</label>
                                <select id="inputState" type="text" class="form-control" name="description" required>
                                    <option selected disabled>Choose</option>
                                    <option value="All">All</option>
                                    <option value="Consultation">Consultation</option>
                                    <option value="Placement">Placement</option>
                                    <option value="Staffing">Staffing</option>
                                    <option value="Manpower">Manpower</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Date</label>
                                <input type="date" class="form-control" name="date" place-holder="Date" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                        </form>
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
                                <a href="#!" class="text-reset">Manpower Recruitment</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Placement Services</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Campus Placement</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Temporary Staffing</a>
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
                            <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
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

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
