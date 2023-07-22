<%@page import="com.tech.blog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>

        <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
        <style>
            .banner-background {
                clip-path: polygon(30% 0%, 70% 0%, 100% 0%, 100% 91%, 63% 100%, 22% 91%, 0 98%, 0 0);
            }
        </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>

        <!--//banner-->
        <div class="container-fluid p-0 m-0">
            <div class=" jumbotron secondary-background banner-background" style="padding-bottom: 80px;">
                <div class=" container">

                    <div class="container">

                        <div class="row">

                            <div class="col-md-6 offset-md-3">

                                <div class="card mt-3">

                                    <div class="card-header primary-background text-white text-center">
                                        <span class="fa fa-user-circle-o fa-3x"></span>
                                        <br>&nbsp;
                                        <h3>Login here</h3>

                                    </div>


                                    <%
                                        Message m = (Message) session.getAttribute("msg");
                                        if (m != null) {
                                    %>
                                    <div class="alert <%=m.getCssClass()%>" role="alert">
                                        <%= m.getContent()%>
                                    </div>
                                    <%
                                            session.removeAttribute("msg");
                                        }
                                    %>

                                    <div class="card-body">

                                        <form action="LoginServlet" method="post">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                            </div>
                                            <a href="register.jsp" class="text-center d-block mb-2">New User? Click Here</a>
                                            <div class="container text-center">
                                                <button type="submit" class="btn btn-primary primary-background">Login</button>
                                                &nbsp;<button type="reset" class="btn btn-primary primary-background">Reset</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--js-->
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/script.js" type="text/javascript"></script>
    </body>
</html>

