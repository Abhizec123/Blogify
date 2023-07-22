

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>About - E-commerce Project</title>

        <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  

        <style>
            body{
                background: url(img/bg4.jpg);
                background-size:cover;
                background-attachment: fixed;
            }
            body {
                font-family: Arial, Helvetica, sans-serif;
                margin: 0;
            }

            html {
                box-sizing: border-box;
            }

            *, *:before, *:after {
                box-sizing: inherit;
            }

            .column {
                float: left;
                width: 33.3%;
                margin-bottom: 16px;
                padding: 0 8px;
            }

            .card {
                height: 450px;
                width: 250px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                margin: 8px;
                display: flex;
                flex-direction: column;
                align-items: center; /* Center horizontally */
                background-color: #9FA8DA;
            }


            .about-section {
                padding: 50px;
                text-align: center;
                background-color: #9FA8DA;
                color: black;
            }

            .container {
                padding: 0 16px;
            }

            .container::after, .row::after {
                content: "";
                clear: both;
                display: table;
            }

            .title {
                color: grey;
            }

            .button {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color: white;
                background-color: #000;
                text-align: center;
                cursor: pointer;
                width: 100%;
            }

            .button:hover {
                background-color: #555;
            }

            .row {
                display: flex;
                justify-content: center; /* Center vertically */
                align-items: center; /* Center horizontally */
            }

            @media screen and (max-width: 650px) {
                .column {
                    width: 100%;
                    display: block;
                }
            }
            .row {
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 10px; /* Adjust the margin as needed */
            }

            .about-section {
                margin-top: 20px;
            }


        </style>
    </head>
    <body>

        <!--navbar-->
        <%@include file="navbar.jsp" %>

        <!--main content-->
        <div class="container-fluid">
            <div class="about-section">
                <h1><strong>About Us Page</strong></h1>
                <br>
                <p style="font-size: 18px;">
                    Hello! My name is Abhishek Das, and I am a CS'24 undergrad. I am excited to kickstart my career in the tech industry.
                    <br>I am a dedicated individual with a passion for problem-solving, a strong communicator and collaborator, and am able to work effectively in a team environment.
                </p>
            </div>

            <h2 style="text-align: center; margin-top: 20px; margin-bottom: 30px; font-weight: bold; color: black;">OUR TEAM</h2>


            <div class="row">

                <div class="col-md-3 d-flex justify-content-center">
                    <div class="card">
                        <div class="container d-flex justify-content-center" style="margin-top: 20px;"> <!-- Add 20 pixels of space from the top -->
                            <img src="img/Abhizec.png" class="img-fluid" style="border-radius:50%; max-width: 150px;">
                        </div>

                        <br>
                        <div class="container">
                            <h2>Abhishek Das</h2>
                            <p class="title" style="color: #1B5E20; font-weight: bold;">Backend (Java)</p>
                            <p>Hello! My name is Abhishek Das, and I am a Backend Java Developer.</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 d-flex justify-content-center">
                    <div class="card">
                        <div class="container d-flex justify-content-center" style="margin-top: 20px;"> <!-- Add 20 pixels of space from the top -->
                            <img src="img/Debajyoti.png" class="img-fluid" style="border-radius:50%; max-width: 150px;">
                        </div>

                        <br>
                        <div class="container">
                            <h2>Debajyoti Jana</h2>
                            <p class="title" style="color: #1B5E20; font-weight: bold;">Backend (Java)</p>
                            <p>Hello! My name is Debajyoti Jana, and I am currently working hard day and night to get highest On Campus Package.</p>
                        </div>
                    </div>
                </div>  

                <div class="col-md-3 d-flex justify-content-center">
                    <div class="card">
                        <div class="container d-flex justify-content-center" style="margin-top: 20px;"> <!-- Add 20 pixels of space from the top -->
                            <img src="img/Abhinandan.png" class="img-fluid" style="border-radius:50%; max-width: 150px;">
                        </div>

                        <br>
                        <div class="container">
                            <h2>Abhinandan Sinha</h2>
                            <p class="title" style="color: #1B5E20; font-weight: bold;">Backend (Java)</p>
                            <p>Hello! My name is Abhinandan Sinha, and I am soon going to be placed in FAANG.</p>
                        </div>
                    </div>
                </div>  

                <div class="col-md-3 d-flex justify-content-center">
                    <div class="card">
                        <div class="container d-flex justify-content-center" style="margin-top: 20px;"> <!-- Add 20 pixels of space from the top -->
                            <img src="img/Aishik.png" class="img-fluid" style="border-radius:50%; max-width: 150px;">
                        </div>

                        <br>
                        <div class="container">
                            <h2>Aishik Makur</h2>
                            <p class="title" style="color: #1B5E20; font-weight: bold;">Backend (Java)</p>
                            <p>Hello! My name is Aishik Makur, and I am technology mad.</p>
                        </div>
                    </div>
                </div>  


            </div>
        </div>
    </body>
</html>

