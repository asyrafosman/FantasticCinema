<%-- 
    Document   : viewbookings
    Created on : Nov 15, 2016, 1:49 AM
    Author     : FANTASTIC CINEMA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Booking" %>
<%@ page import="bean.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <!--  Fantastic Cinema Logo  -->
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
                                <li><a href="ViewMovieServlet">Movies</a></li>
                                <li class="active"><a>Bookings</a></li>
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
        <div class="general">
            <div class="container">
                <div class="well" id="wellhome">
                    <h1>View Bookings</h1>
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped table-hover ">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Username</th>
                                        <th>Cinema</th>
                                        <th>Movie Name</th>
                                        <th>Movie Date</th>
                                        <th>Movie Time</th>
                                        <th>Booking Date</th>
                                        <th>Seat</th>
                                        <th>Status</th>
                                        <th>Operations</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${sessionScope.bookings}" var="currentbooking" varStatus="loop">
                                        <tr>
                                            <td><c:out value="${loop.index + 1}" /></td>
                                            <td><c:out value="${currentbooking.username}" /></td>
                                            <td><c:out value="${currentbooking.cinema}" /></td>
                                            <td><c:out value="${currentbooking.moviename}" /></td>
                                            <td><c:out value="${currentbooking.moviedate}" /></td>
                                            <td><c:out value="${currentbooking.movietime}" /></td>
                                            <td><c:out value="${currentbooking.bookingdate}" /></td>
                                            <td><c:out value="${currentbooking.seat}" /></td>

                                            <c:url value="DeleteBookingServlet" var="DeleteBookingServletURL">
                                                <c:param name="id"   value="${currentbooking.id}" />
                                            </c:url>    
                                            <c:url value="ApprovedBookingServlet" var="ApprovedBookingServletURL">
                                                <c:param name="id"   value="${currentbooking.id}" />
                                            </c:url>                      
                                                               
                                            <c:choose>
                                                <c:when test="${currentbooking.status == 0}">
                                                    <td><c:out value="in process" /></td>
                                                </c:when>

                                                <c:when test="${currentbooking.status == 1}">
                                                    <td><c:out value="approved" /></td>
                                                </c:when>

                                                <c:when test="${currentbooking.status == 2}">
                                                    <td><c:out value="cancelled" /></td>
                                                </c:when>

                                                <c:when test="${currentbooking.status == 3}">
                                                    <td><c:out value="paid" /></td>
                                                </c:when>   

                                                <c:when test="${currentbooking.status == 4}">
                                                    <td><c:out value="done" /></td>
                                                </c:when>    
                                            </c:choose>

                                            <td>
                                                <c:choose>
                                                    <c:when test="${currentbooking.status == 3}">
                                                        <a href="<c:out value='${ApprovedBookingServletURL}' />"><span class="glyphicon glyphicon-ok" aria-hidden="true" title="Approve"></span></a>
                                                    </c:when>
                                                    <c:when test="${currentbooking.status == 1}">
                                                        <a><span class="glyphicon glyphicon-ok" aria-hidden="true" style="color:greenyellow;"></span></a>
                                                    </c:when> 
                                                    <c:otherwise>
                                                        <a><span class="glyphicon glyphicon-ok" aria-hidden="true" style="color:grey;"></span></a>
                                                    </c:otherwise> 
                                                </c:choose>
                                                &nbsp;&nbsp;
                                                <c:choose>
                                                    <c:when test="${currentbooking.status == 2}">
                                                        <a href="<c:out value='${DeleteBookingServletURL}' />"><span class="glyphicon glyphicon-trash" aria-hidden="true" title="Delete"></span></a>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a><span class="glyphicon glyphicon-trash" aria-hidden="true" style="color:grey;"></span></a>
                                                    </c:otherwise>
                                                </c:choose>
                                            </td>   
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div> <!-- /row -->
                </div> <!-- /well -->
            </div> <!-- /container -->
        </div>
        <!-- ********************************************** Footer ********************************************** -->
        <div class="footer">
            <!--  Container  -->
            <div class="container">
                <!--  w3ls_footer_grid  -->
                <div class="w3ls_footer_grid">
                    <div class="col-md-6 w3ls_footer_grid_left">
                    </div>
                    <div class="col-md-6 w3ls_footer_grid_right">
                        <a><h2>Fantastic<span>Cinema</span></h2></a>
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
    </body>
</html>
