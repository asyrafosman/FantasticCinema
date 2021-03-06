<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.User" %>

<%
    User adminprofile = (User)session.getAttribute("adminprofile");
    
    if (adminprofile == null) {
%>
        <jsp:forward page="adminlogout.jsp" />
<%        
    }
%>   
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Title -->
        <link rel="icon" href="../images/favicon.png">
        <title>Fantastic Cinema</title>

        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <!-- //for-mobile-apps -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" /> <!-- Wajib -->
        <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" /> <!-- Wajib -->
        <link href="../css/medile.css" rel='stylesheet' type='text/css' /> <!-- Wajib -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker3.css">

        <!-- font-awesome icons -->
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> <!-- Wajib -->
        <!-- //font-awesome icons -->

        <!-- js -->
        <script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script> <!-- Wajib -->
        <script type="text/javascript" src="../js/bootstrap-datepicker.js"></script>
        <!-- //js -->

        <!-- banner-bottom-plugin -->
        <link href="../css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- Wajib -->
        <script src="../js/owl.carousel.js"></script> <!-- Wajib -->
    </head>
    <body>
        <!-- ********************************************** header ********************************************** -->
        <div class="header">
            <div class="container">
                <!--  Fantastic href="index.jsp" Cinema Logo  -->
                <div class="fc_logo">
                    <a><h1>Fantastic <span>Cinema</span></h1></a>
                </div>
                <!--  //Fantastic Cinema Logo  -->

                <!--  Sign in & sign up  -->
                <div class="fc_sign_in_register">
                    <ul>
                        <li><i aria-hidden="true"></i>Hi, <jsp:getProperty name="adminprofile" property="fullName"/>!</li>
                        <li><a href="adminlogout.jsp" title="Logout"><span class="glyphicon glyphicon-log-out"></span></a></li>
                    </ul>
                </div>
                <!--  //Sign in & sign up  -->
                <div class="clearfix"> </div>
            </div>
        </div>
	<!-- ********************************************** Navigation ********************************************** -->
        <!--  movie navigation  -->	
        <div class="movies_nav">
            <!--  Container  -->
            <div class="container">
                <nav class="navbar navbar-default">
                    <div class="navbar-header navbar-left">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!--  Collect the nav links, forms, and other content for toggling  -->
                    <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                        <nav>
                            <ul class="nav navbar-nav">            
                                <li><a href="ViewCinemaServlet">Cinemas</a></li>
                                <li class="active"><a>Movies</a></li>
                                <li><a href="ViewBookingServlet">Bookings</a></li>
                                <li><a href="ViewCustomerServlet">Customers</a></li>
                                <li><a href="CinemaStatisticServlet">Statistic</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!--  //Collect the nav links, forms, and other content for toggling  -->
                </nav>
            </div>
            <!--  //Container  -->
        </div>
        <!-- ********************************************** //Navigation ********************************************** -->
        <!-- ********************************************** Add New Movie Form ********************************************** -->
        <div class="general">
            <div class="container">
                <ol class="breadcrumb">
                    <li><a href="ViewMovieServlet">Movies</a></li>
                    <li class="active">Add New Movie</li>
                </ol>
                <div class="well" id="wellhome">
                    <form class="form-horizontal" action="InsertMovieServlet">
                        <fieldset>
                            <legend>Add New Movie</legend>
                            <div class="form-group">
                                <label for="moviename" class="col-lg-2 control-label">Movie Name</label>
                                <div class="col-lg-10">
                                    <input class="form-control" name="moviename" placeholder="- Movie Name -" type="text" required="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-10 col-lg-offset-2">
                                    <button type="reset" class="btn btn-danger">Reset</button>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <!-- ********************************************** //Add New Movie Form ********************************************** -->
                
        <!-- ********************************************** Footer ********************************************** -->
        <div class="footer">
            <!--  Container  -->
            <div class="container">
                <!--  w3ls_footer_grid  -->
                <div class="w3ls_footer_grid">
                    <div class="col-md-6 w3ls_footer_grid_left">
                    </div>
                    <div class="col-md-6 w3ls_footer_grid_right">
                            <a href="index.html"><h2>Fantastic<span>Cinema</span></h2></a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!--  //w3ls_footer_grid  -->
                <!--  w3ls_footer_grid1_left  -->
                <div class="col-md-5 w3ls_footer_grid1_left">
                    <p>All Content Copyright &copy; 2016 Fantastic Cinema. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
                </div>
                <!--  //w3ls_footer_grid1_left  -->
                <div class="clearfix"> </div>
            </div>
            <!--  //Container  -->
        </div>
        <!-- ********************************************** //Footer ********************************************** -->
        <!--  ********************************************** Wajib **********************************************  -->
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script>
        $(document).ready(function(){
            $(".dropdown").hover(            
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
                    $(this).toggleClass('open');        
                },
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
                    $(this).toggleClass('open');       
                }
            );
        });
        </script>
        <!-- //Bootstrap Core JavaScript -->
        <!--  ********************************************** //Wajib **********************************************  -->
    </body>
</html>

