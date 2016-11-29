<%-- 
    Document   : booking
    Created on : Nov 26, 2016, 9:33:50 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Movie" %>
<%@ page import="bean.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% Customer customerprofile = (Customer)session.getAttribute("customerprofile"); %>
<!DOCTYPE html>
<html>
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
                    <a href="index.html"><h1>Fantastic <span>Cinema</span></h1></a>
                </div>
                <!--  //Fantastic Cinema Logo  -->
                <!--  Sign in & sign up  -->
                <div class="fc_sign_in_register">
                    <ul>
                        <% if (customerprofile == null) { %>
                            <li><i aria-hidden="true"></i>Guest</li>
                            <li><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>                   
                        <% }
                        else { %>
                            <li><i aria-hidden="true"></i><jsp:getProperty name="customerprofile" property="fullName"/></li>
                            <li><a href="CustomerLogoutServlet">Logout</a></li>
                        <% } %>
                    </ul>
                </div>
                <!--  //Sign in & sign up  -->
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- ********************************************** //header ********************************************** -->
        <!-- ********************************************** Modal pop-p sign in & sign up ********************************************** -->
        <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
            <!--  Modal Dialog  -->
            <div class="modal-dialog" role="document">
                <!--  Modal Content  -->
                <div class="modal-content">
                    <!--  Modal Header  -->
                    <div class="modal-header">
                        Sign In & Sign Up
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <!--  //Modal Header  -->
                    <section>
                        <!--  Modal Body  -->
                        <div class="modal-body">
                            <!--  class w3_login_module  -->	
                            <div class="w3_login_module">
                                <!--  class module form-module  -->	
                                <div class="module form-module">
                                    <!--  Toggle button  -->	
                                    <div class="toggle"><i class="fa fa-times fa-pencil"></i>
                                        <div class="tooltip">Click Me</div>
                                    </div>
                                    <!--  //Toggle button  -->	
                                    <!--  Sign in  -->
                                    <div class="form">
                                        <h3>Login to your account.</h3>
                                        <form action="CustomerLoginServlet" method="post">
                                            <input type="text" name="username" placeholder="Username" required="">
                                            <input type="password" name="password" placeholder="Password" required="">
                                            <input type="hidden" name="from" value="${pageContext.request.requestURI}">
                                            <input type="submit" value="Login">
                                        </form>
                                    </div>
                                    <!--  //Sign in  -->
                                    <!--  Sign up  -->
                                    <div class="form">
                                        <h3>Create an account.</h3>
                                        <form action="CustomerRegisterServlet" method="post">
                                            <input type="text" name="username" placeholder="Username" required="">
                                            <input type="password" name="password" placeholder="Password" required="">
                                            <input type="text" name="fullName" placeholder="Full Name" required="">
                                            <input type="email" name="email" placeholder="Email Address" required="">
                                            <input type="text" name="mobileNum" placeholder="Phone Number" required="">
                                            <input type="hidden" name="from" value="${pageContext.request.requestURI}">
                                            <input type="submit" value="Register">
                                        </form>
                                    </div>
                                    <!--  //Sign up  -->
                                    <!--  Forget password  -->
                                    <div class="cta"><a href="#">Forgot your password?</a></div>
                                </div>
                                <!--  //class module form-module  -->	
                            </div>
                            <!--  //class w3_login_module  -->
                        </div>
                        <!--  //Modal Body  -->
                    </section>
                </div>
                <!--  //Modal Content  -->
            </div>
            <!--  //Modal Dialog  -->
        </div>
        <!--  ********************************************** Wajib **********************************************  -->
        <!--  javascript modal popup  -->	
        <script>
            $('.toggle').click(function(){
                // Switches the Icon
                $(this).children('i').toggleClass('fa-pencil');
                // Switches the forms  
                $('.form').animate({
                    height: "toggle",
                    'padding-top': 'toggle',
                    'padding-bottom': 'toggle',
                    opacity: "toggle"
                }, "slow");
            });
        </script>
        <!--  //javascript modal popup  -->
        <!--  ********************************************** //Wajib **********************************************  -->	
        <!-- ********************************************** //Modal pop-p sign in & sign up ********************************************** -->
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
                                <li><a href="index.jsp">Movies</a></li>
                                <li><a href="showtimes.jsp">Showtimes</a></li>								
                                <li><a href="newspromotion.jsp">News & Promotion</a></li>
                                <li><a href="locate.jsp">Locate Us</a></li>
                                <li><a href="contact.jsp">Contact Us</a></li>
                                <li><a href="faq.jsp">FAQ</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!--  //Collect the nav links, forms, and other content for toggling  -->
                </nav>
            </div>
            <!--  //Container  -->
        </div>
        <section id="QuickFilter">
            <div class="container">
                <% if (customerprofile == null) { %>
                    <div class="jumbotron">
                        <h2>ONLINE TICKETING</h2>
                        <h1>MEMBERS ONLY</h1>
                        <p>Please login or sign up if you are not a member</p>
                    </div>                    
                <% }
                else { %>
                    <div class="jumbotron">
                        <form class="form-horizontal" action="InsertBookingServlet">
                            <fieldset>
                                <legend>Book a ticket</legend>
                                <div class="form-group">
                                    <label for="select" class="col-lg-2 control-label">Cinema</label>
                                    <div class="col-lg-10">
                                        <select name="cinema" class="form-control" id="cinema">
                                            <option selected="selected" value="-">- Select Cinema -</option>
                                            <option value="1 Utama"> 1 Utama</option>
                                            <option value="IOI Mall (Puchong)"> IOI Mall (Puchong)</option>
                                            <option value="Summit USJ"> Summit USJ</option>
                                            <option value="Setia City Mall"> Setia City Mall</option>
                                            <option value="Klang Parade"> Klang Parade</option>
                                            <option value="Alamanda"> Alamanda</option>
                                            <option value="Dataran Pahlawan"> Dataran Pahlawan</option>
                                            <option value="Aeon Bandaraya Melaka"> Aeon Bandaraya Melaka</option>
                                            <option value="East Coast Mall"> East Coast Mall</option>
                                            <option value="1Borneo"> 1Borneo</option>
                                            <option value="Suria Sabah Mall"> Suria Sabah Mall</option>
                                            <option value="CityONE Megamall (Kuching)"> CityONE Megamall (Kuching)</option>
                                            <option value="Bintang Megamall"> Bintang Megamall</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="select" class="col-lg-2 control-label">Movie</label>
                                    <div class="col-lg-10">
                                        <select name="moviename" class="form-control" id="moviename">
                                            <option selected="selected" value="-">- Select Movie -</option>
                                            <c:forEach items="${sessionScope.movies}" var="currentbooking" varStatus="loop">
                                                <option><c:out value="${currentbooking.moviename}" /></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="select" class="col-lg-2 control-label">Show Date</label>
                                    <div class="col-lg-10">
                                        <div class="input-group date" data-provide="datepicker">
                                            <input name="moviedate" type="text" class="form-control" value="- Select Date -">
                                            <div class="input-group-addon">
                                                <span class="fa fa-th"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="select" class="col-lg-2 control-label">Show Time</label>
                                    <div class="col-lg-10">
                                        <select name="movietime" class="form-control" id="movietime">
                                            <option value="-">- Select Time -</option>
                                            <option value="10AM">10AM</option>
                                            <option value="12PM">12PM</option>
                                            <option value="2PM">2PM</option>
                                            <option value="4PM">4PM</option>
                                            <option value="6PM">6PM</option>
                                            <option value="8PM">8PM</option>
                                            <option value="10PM">10PM</option>
                                            <option value="12AM">12AM</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-10 col-lg-offset-2">
                                        <button type="reset" class="btn btn-danger">Cancel</button>
                                        <button type="submit" class="btn btn-success">Book</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                <% } %>
            </div>
        </section>
        
        <script type="text/javascript">
            $('.date').datepicker({
                autoclose: true,
                format:	"dd/mm/yyyy",
                todayHighlight: true,
                orientation: "bottom"
            });;
        </script>
        <div class="footer">
            <!--  Container  -->
            <div class="container">
                <!--  w3ls_footer_grid  -->
                <div class="w3ls_footer_grid">
                    <div class="col-md-6 w3ls_footer_grid_left">
                        <div class="w3ls_footer_grid_left1">
                            <h2>Subscribe to us</h2>
                            <div class="w3ls_footer_grid_left1_pos">
                                <form action="#" method="post">
                                    <input type="email" name="email" placeholder="Your email..." required="">
                                    <input type="submit" value="Send">
                                </form>
                            </div>
                        </div>
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
                <!--  w3ls_footer_grid1_left  -->
                <div class="col-md-7 w3ls_footer_grid1_right">
                    <ul>
                        <li>
                            <a href="index.html">Movies</a>
                        </li>
                        <li>
                            <a href="showtimes.html">Showtimes</a>
                        </li>
                        <li>
                            <a href="newspromotion.html">News & Promotion</a>
                        </li>
                        <li>
                            <a href="locate.html">Locate Us</a>
                        </li>
                        <li>
                            <a href="contact.html">Contact Us</a>
                        </li>
                        <li>
                            <a href="faq.html">FAQ</a>
                        </li>
                    </ul>
                </div>
                <!--  //w3ls_footer_grid1_left  -->
                <div class="clearfix"> </div>
            </div>
            <!--  //Container  -->
        </div>
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
