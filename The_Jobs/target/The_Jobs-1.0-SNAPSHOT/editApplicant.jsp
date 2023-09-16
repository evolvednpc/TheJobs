

<%@page import="com.applicant.project.DBAConnection"%>
<%@page import="java.util.List"%>
<%@page import="com.applicant.project.Applicants"%>
<%@page import="com.applicant.project.ApplicantsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<%
    ApplicantsDao applicantData = new ApplicantsDao(DBAConnection.getConnection());
    List<Applicants> applicant = applicantData.getAllApplicants();
    request.setAttribute("APPLICANT_LIST", applicant);
%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <title>Edit Applicant Data</title>
        <style>
            .inner{
                position: relative;
                margin: 0 auto;
                width: 650px;
                display: block;
                padding: 50px 0;
            }
            h3{
                text-align: center;
                border-bottom: 2px solid midnightblue;
                margin-bottom: 20px;
            }
            nav li a{
                font-size: 25px;
                font-weight: 500;
            }
            a{
                color: #fff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div  class="container-fluid">
            <nav class="navbar navbar-light">
                <a class="navbar-brand">Edit Applicant</a>
                <ul class="navbar-nav ml-auto mt-3 mx-5">
                    <li class="nav-item">
                        <a class="nav-link active" href="applicant.jsp">Applicant</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="inner">
            <div class=" container">
                <div class="row">
                    <div class="col-12">
                        <h3>
                            Edit Applicant Details</h3>
                        <form action="EditApplicantServlet" method="put">
                            <div class="form-group">
<!--                                <label>Applicant ID</label>-->
                                <input class="form-control" type="hidden" name="pid" value="${EditApplicant.id }" required>
                            </div>
                            <div class="form-group">
                                <label>Applicant Number</label>
                                <input class="form-control" type="text" name="pnumber" value="${EditApplicant.pnumber }" required>
                            </div>
                            <div class="form-group">
                                <label>Applicant Name</label>
                                <input class="form-control" type="text" name="name" value="${EditApplicant.name }" required>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input class="form-control" type="text" name="age" value="${EditApplicant.age }" required>
                            </div>
                            <div class="form-group" >
                                <label>Gender</label>
                                <select id="inputState" type="text" class="form-control" name="gender" value="${EditApplicant.gender }" required>
                                    <option selected disabled>Choose Gender</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>NIC Number</label>
                                <input class="form-control" type="text" name="nic" value="${EditApplicant.nic }" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input class="form-control" type="text" name="address" value="${EditApplicant.address }" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" value="${EditApplicant.email }" required>
                            </div>
                            <div class="form-group">
                                <label>Contact Number</label>
                                <input type="tel" class="form-control" name="cnumber" value="${EditApplicant.cnumber }" required>
                            </div>
                            <div class="form-group" >
                                <label>Nationality</label>
                                <select id="inputState" type="text" class="form-control" name="nationality" value="${EditApplicant.nationality }" required>
                                    <option selected disabled>Choose Nationality</option>
                                    <option value="Sinhalese">Sinhalese</option>
                                    <option value="Sri Lankan Tamils">Sri Lankan Tamils</option>
                                    <option value="Moors">Moors</option>
                                    <option value="Indian Tamils">Indian Tamils</option>
                                </select>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button  class="btn btn-primary"><a href="applicant.jsp">Cancel</a></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    </body>
</html>
