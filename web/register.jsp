
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

        <!--<div class="container-fluid p-0 m-0">-->
        <div class=" jumbotron secondary-background banner-background" style="padding-bottom: 80px;">
            <div class=" container-fluid">
                <div class="row  mt-4">
                    <div class="col-md-6 offset-md-3"> 
                        <div class="card">

                            <div class="card-header primary-background text-white text-center">
                                <span class="fa fa-user-plus fa-3x"></span>
                                <br>&nbsp;
                                <h3>Sign up here !!</h3>
                            </div>

                            <div class="card-body" px-5>

                                <form id="reg_form" action="RegisterServlet" method="post">
                                    <div class="form-group">
                                        <label for="username">Name</label>
                                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter here" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter here" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter here" required>
                                    </div>

                                    <div class="form-group">
                                        <label for="gender">Select Gender</label>
                                        <br>
                                        <input type="radio"  id="gender" name="gender" value="male">Male
                                        <input type="radio"  id="gender" name="gender" value="female">Female

                                    </div>

                                    <div class="form-group">
                                        <label for="address">Write about yourself</label>
                                        <textarea style="height: 50px;" class="form-control" id="address" name="about" placeholder="Enter here" required></textarea>
                                    </div>

                                    <div class="form-check">
                                        <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1"> 
                                        <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
                                    </div>

                                    <div class="container text-center">
                                        <button class="btn btn-outline-success">Register</button> 
                                        <button class="btn btn-outline-warning">Reset</button>
                                    </div>
                                </form>

                            </div>            
                        </div>
                    </div>
                </div>
            </div>       
        </div>
        <!--</div>-->




        <!--js-->
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/script.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script>
            $(document).ready(function () {
                console.log("loaded")
                $('#reg_form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $("#submit-btn").hide();
                    $("#loader").show();
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if (data.trim() === 'done') {

                                swal("Register Successfully...Redirecting to Login Page")
                                        .then((value) => {
                                            window.location = "login.jsp";
                                        });
                            } else {
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            swal("Something went wrong try again")

                        },
                        processData: false,
                        contentType: false
                    });
                });
            });
        </script>
        
    </body>
</html>
