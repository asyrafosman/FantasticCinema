<%-- 
    Document   : viewbookings
    Created on : Nov 15, 2016, 1:49 AM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Movie" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
		<!-- Title -->
		<title>Fantastic Cinema</title>
		
		<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<!-- //for-mobile-apps -->
		<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" /> <!-- Wajib -->
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> <!-- Wajib -->
		<link href="css/medile.css" rel='stylesheet' type='text/css' /> <!-- Wajib -->
		<link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker3.css">

		<!-- font-awesome icons -->
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> <!-- Wajib -->
		<!-- //font-awesome icons -->

		<!-- js -->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script> <!-- Wajib -->
		<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
		<!-- //js -->

		<!-- banner-bottom-plugin -->
		<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- Wajib -->
		<script src="js/owl.carousel.js"></script> <!-- Wajib -->
	</head>
    <body>
        <!-- ********************************************** header ********************************************** -->
        <div class="header">
            <div class="container">
                <!--  Fantastic Cinema Logo  -->
                <div class="fc_logo">
                    <a href="index.jsp"><h1>Fantastic <span>Cinema</span></h1></a>
                </div>
                <!--  //Fantastic Cinema Logo  -->

                <!--  Sign in & sign up  -->
                <div class="fc_sign_in_register">
                    <ul>
                        <li><i aria-hidden="true"></i>Hi, <jsp:getProperty name="adminprofile" property="fullName"/>!</li>
                        <li><a href="adminlogout.jsp">Logout</a></li>
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
                                <li id="lihome"><a href="admin/adminhome.jsp" id="home">Home</a></li>   
                                <li class="active" id="limovies"><a href="#" id="about">Movies</a></li>
                                <li id="lipromotionnnews"><a href="promotionnewsmanagement.jsp">Promotion & News</a></li>     																			
                                <li><a href="locate.html">Locate Us</a></li>
                                <li><a href="contact.html">Contact Us</a></li>
                                <li><a href="faq.html">FAQ</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!--  //Collect the nav links, forms, and other content for toggling  -->
                </nav>
            </div>
            <!--  //Container  -->
        </div>
        <!-- ********************************************** //Navigation ********************************************** -->
        <!--  Display movie list  -->
        <div class="general">
    <div class="container">
      <div class="well" id="wellhome">
        <h1>View Movies</h1>
        <div class="row">
          <div class="col-md-12">
            <table class="table table-striped table-hover ">
              <thead>
                <tr>
                  <th>#</th>
                  <th>ID</th>
                  <th>Movie Name</th>
                  <th>Image</th>
                  <th>Status</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${sessionScope.movies}" var="currentmovie" varStatus="loop">
                  <tr>
                    <td><c:out value="${loop.index + 1}" /></td>
                    <td><c:out value="${currentmovie.id}" /></td>
                    <td><c:out value="${currentmovie.moviename}" /></td>
                    <td><c:out value="${currentmovie.image}" /></td>
                    <td><c:out value="${currentmovie.status}" /></td>

                    <c:url value="DeleteBookingServlet" var="DeleteBookingServletURL">
                        <c:param name="id"   value="${currentmovie.id}" />
                    </c:url>    
                    <c:choose>
                        <c:when test="${currentmovie.status == 0}">
                            <td><c:out value="deactivate" /></td>
                        </c:when>
                            
                        <c:when test="${currentmovie.status == 1}">
                            <td><c:out value="active" /></td>
                        </c:when>
                    </c:choose>  
                            
                    <td>
                        &nbsp;
                        <a href="<c:out value='${DeleteMovieServletURL}' />"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
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

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-datetimepicker.min.js"></script>    
    <script src="js/app.js"></script>
  </body>
</html>
