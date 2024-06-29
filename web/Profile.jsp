<%-- 
    Document   : Profile
    Created on : 22-Dec-2022, 7:57:59 AM
    Author     : bilal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*;" %>
<%@page import="UserTableClass.UserTable;" %>
<%@page import="jakarta.servlet.http.HttpServletRequest;" %>
<%@page import="jakarta.servlet.http.HttpServletResponse;" %>
<%@page import="java.io.*;" %>
<%@page import="java.sql.*;" %>


<!doctype html>
<html lang="en">

<head>
    <title>Build and Furnish</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
  <!--CSS stylesheet-->
  <link rel="stylesheet" href="css/style.css" type="text/css" />
</head>

<body class="bg-back">
    <main>
        <!--Navbar section-->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-bg sticky-top shadow-5-strong">
            <div class="container">
                <img class="navbar-heading rounded" src="img/logo2.jfif" alt="Logo" width="30px" height="24px"
                    class="d-inline-block align-text-top" />
                <a class="navbar-brand p-2 fw-bolder" href="index">Build and Furnish</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation"><span
                        class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0 fw-bolder">
                        <li class="nav-item"><a class="nav-link" aria-current="page" href="index2.html">Home</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown"
                                aria-expanded="false">Manage</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="Profile.html">Profile</a></li>
                                <li><a class="dropdown-item" href="Appointments.html">Appointments</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <section class="dashboard">
            <div class="container-xl px-4 mt-4">
                <!-- Account page navigation-->
                <hr class="mt-0 mb-4">
                <div class="row">
                    <div class="col-xl-4">
                        <!-- Profile picture card-->
                        <div class="card mb-4 mb-xl-0">
                            <div class="card-header">Profile Picture</div>
                            <div class="card-body text-center">
                                <!-- Profile picture image-->
                                <img class="img-account-profile rounded-circle mb-2"
                                    src="http://bootdey.com/img/Content/avatar/avatar1.png" alt="" height="200" width="200"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8">
                        <!-- Account details card-->
                        <%
                            HashMap<String,String> hash=new HashMap<String,String>();
                            hash=(HashMap<String,String>)request.getAttribute("data");
                        %>
                        
                        <div class="card mb-4">
                            <div class="card-header">Account details</div>
                            <div class="card-body">
                                <% 
                                    for(Map.Entry m : hash.entrySet()){
                                %>
                                <div>
                                    <label for="Name"><%=m.getKey()%> :- <%=m.getValue()%></label>
                                </div>
                                <%}%>
<!--                               <div>
                                    <label for="e-mail">E-mail :-bilalstp4@gmail.com </label>
                               </div>
                               <div>
                                    <label for="number">Mobile number :-47589454911</label>
                               </div>-->
                            </div>
                            <div class="mx-2 my-2">
                                   <% 
                                       String type=request.getParameter("type");
                                       String old_email=hash.get("email");
                                       String Fetch="UserUpdate?type="+type+"&old_email="+old_email;
                                       //String
                                   %>
                                 <%//=old_email%> 
                                <a href=<%=Fetch%>>Edit your Account details here</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </main>


     <footer class="black-section footerHome" id="footer">
            <div class="footer fw-bolder mt-5"><br>
                <div class="container-fluid">
                    <p>© Copyright 2022 </p>
                    <p>Build and Furnish</p>
                </div>
            </div>
        </footer>

    <!-- Bootstrap JavaScript Libraries -->

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>

</html>
