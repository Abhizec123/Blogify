
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
        <style>
            .banner-background {
                clip-path: polygon(30% 0%, 70% 0%, 100% 0%, 100% 91%, 63% 100%, 22% 91%, 0 98%, 0 0);
            }
            body{
                background: url(img/bg3.jpg);
                background-size:cover;
                background-attachment: fixed;
            }
        </style>


    </head>
    <body>

        <!--navbar-->
        <%@include file="navbar.jsp" %>

        <!--//banner-->
        <div class="container-fluid p-0 m-0">
            <div class=" jumbotron secondary-background banner-background">
                <div class=" container">
                    <h3 class=" display-3"><strong>Welcome to Blogify </strong></h3>
                    <br>
                    <p style="font-size: 18px;">Welcome to TechTravFood Blog, your one-stop destination for the perfect blend of technology, travel, and delightful food experiences!</p>
                    <p style="font-size: 18px;">Embark on a digital journey with us as we explore the latest advancements in the ever-evolving world of technology. From cutting-edge gadgets and innovative tech trends to insightful reviews and practical tips, we've got you covered. Whether you're a tech enthusiast or a casual user, our blog caters to all levels of tech-savviness.</p>

                    <a href="register.jsp" class="btn btn-outline-dark btn-lg"><span class="fa fa-user-plus"></span> Start ! its Free</a>
                    &nbsp;<a href="login.jsp" class="btn btn-outline-dark btn-lg"><span class="fa fa-user-circle-o"></span> Login</a>   
                </div>
            </div>

            <!--cards-->
            <div class="container text-center bg-photo">
                <div class="container text-center" id="loader">
                    <i class="fa fa-refresh fa-4x fa-spin" ></i>
                    <h3 class="mt-2">Loading ....</h3>
                </div>
                <div class="container-fluid" id="post-container">
                </div>
            </div>





            <!--js-->
            <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="js/script.js" type="text/javascript"></script>

            <script>
                function getPosts(catId, temp) {
                    $("#loader").show();
                    $("#post-container").hide()
                    $(".c-link").removeClass('active')
                    $.ajax({
                        url: "load_page_home.jsp",
                        data: {cid: catId},
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);

                            $("#loader").hide();

                            $("#post-container").show();
                            $('#post-container').html(data);
                            $(temp).addClass('active')
                        }
                    })



                }
                $(document).ready(function (e) {
                    let allPostRef = $('.c-link')[0]
                    getPosts(0, allPostRef)
                })

            </script>


    </body>
</html>
