
<%@page import="com.tech.blog.entities.User"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>

        <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  

        <style>
            body{
                background: url(img/bg3.jpg);
                background-size:cover;
                background-attachment: fixed;
            }

            h1 {
                text-align: center;
            }

            .contact-container {
                max-width: 400px;
                margin: 0 auto;
                margin-top: 50px;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #9FA8DA;
                font-size: 20px; /* Increase the font size as desired */
            }

            .contact-info {
                margin-top: 20px;
            }

            .contact-info p {
                margin: 10px 0;
            }

            p strong {
                margin-right: 5px;
            }

        </style>

    </head>
    <body>

       <!--navbar-->
        <%@include file="navbar.jsp" %>

        <!--main-->
        <div class="contact-container">
            <h1>Contact Details</h1>
            <div class="contact-info">
                <p><strong>Name :</strong> Abhishek Das</p>
                <p><strong>Email :</strong> abhishekdas82400@gmail.com</p>
                <p><strong>Phone :</strong> +91 8240083883</p>
                <p><strong>Address :</strong> J-305/B, Paharpur Road, Kolkata, West Bengal, 700024</p>
            </div>
        </div>

    </body>
</html>
