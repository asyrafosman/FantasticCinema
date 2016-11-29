<%-- 
    Document   : managemovie
    Created on : Nov 22, 2016, 9:12:03 AM
    Author     : PCUSER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Movie" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>My Project</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">    

    <!-- Custom styles for this template -->
    <link href="css/navbar-fixed-top.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li id="lihome"><a href="home.html" id="home">Home</a></li>
            <li id="libookings"><a href="ViewBookingServlet" id="about">Bookings</a></li>
            <li class="active" id="lidestination"><a href="GetDestinationsServlet" id="about">Destination</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Navbar example</h1>
        <p>Fixed to top navbar</p>
      </div>

      <div class="well" id="wellhome">
        <h1>View Destinations</h1>
        <div class="row">
          <div class="col-md-6">
            <a href="addnewmovie.jsp" class="btn btn-default"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add New Destinations</a> 
            <p></p>
            <table class="table table-striped table-hover ">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                  <th>Image</th>
                  <th>Delete</th>
                  <th>Enable/Disable</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${sessionScope.destinations}" var="currentdestination" varStatus="loop">
                  <tr>
                    <td><c:out value="${loop.index + 1}" /></td>
                    
                    <c:url value="editdestinations.jsp" var="editdestinationsURL">
                        <c:param name="id"   value="${currentdestination.id}" />
                        <c:param name="name"   value="${currentdestination.name}" />
                    </c:url>
                    <td><a href="<c:out value='${editdestinationsURL}' />"><c:out value="${currentdestination.name}" /></a></td>                    
                    
                    <c:url value="changedestinationimage.jsp" var="changeImageURL">
                        <c:param name="id"   value="${currentdestination.id}" />
                        <c:param name="image"   value="${currentdestination.image}" />
                    </c:url>
                    <td><a href="<c:out value='${changeImageURL}' />"><img src="img/<c:out value="${currentdestination.image}" />" width="50"/></a></td>
                    
                    <c:url value="DeleteDestinationServlet" var="deleteDestinationURL">
                        <c:param name="id"   value="${currentdestination.id}" />
                    </c:url>
                    <td><a href="<c:out value='${deleteDestinationURL}' />"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
                    
                    <c:url value="DestinationActivationServlet" var="DestinationActivationURL">
                        <c:param name="id"   value="${currentdestination.id}" />
                        <c:param name="status"   value="${currentdestination.status}" />
                    </c:url>
                    <td><a href="<c:out value='${DestinationActivationURL}' />"><span class="glyphicon glyphicon-wrench" aria-hidden="true"></span></a></td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </div> <!-- /row -->
      </div> <!-- /well -->

    </div> <!-- /container -->


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
