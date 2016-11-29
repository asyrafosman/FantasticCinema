<%-- 
    Document   : index
    Created on : Nov 29, 2016, 1:59:21 PM
    Author     : admin
--%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.Customer" %>
<% Customer customerprofile = (Customer)session.getAttribute("customerprofile"); %>
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
        <link rel="stylesheet" href="css/contactstyle.css" type="text/css" media="all" />
        <!-- font-awesome icons -->
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> <!-- Wajib -->
        <!-- //font-awesome icons -->
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script> <!-- Wajib -->
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
                        <li><i class="fa fa-phone" aria-hidden="true"></i> (+06) 012 3456 789</li>
                        <% if (customerprofile == null) { %>
                            <li><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>                   
                        <% }
                        else { %>
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
        <!--  //movie navigation  -->	
        <!-- ********************************************** //Navigation ********************************************** -->
        <!-- ********************************************** Banner carousel ********************************************** -->
        <!--  Banner  -->
        <div id="owl-fc-carousel" class="owl-carousel owl-theme">
            <div class="item"><img src="images/banner1.jpg" alt="The Last of us"></div>
            <div class="item"><img src="images/banner2.jpg" alt="GTA V"></div>
            <div class="item"><img src="images/banner3.jpg" alt="Mirror Edge"></div>
        </div>
        <!--  //Banner  -->
        <!--  ********************************************** Wajib **********************************************  -->
        <!--  Javascript banner carousel  -->
        <script type="text/javascript">
            $(document).ready(function() {

                $("#owl-fc-carousel").owlCarousel({
                    navigation : true, 		// Show next and prev buttons
                    slideSpeed : 300,			// Slide speed in milliseconds
                    paginationSpeed : 400,	// Pagination speed in milliseconds
                    singleItem:true,			// Display only one item. 
                    autoHeight:true,			// Add height to owl-wrapper-outer so you can use diffrent heights on slides. Use it only for one item per page setting.
                    autoPlay:3000				// Change to any integrer for example autoPlay : 5000 to play every 5 seconds. If you set autoPlay: true default speed will be 5 seconds.
                });
                // Hide navigation controls
                $(".owl-controls").hide();
            });
        </script>
        <!--  //Javascript banner carousel  -->
        <!--  ********************************************** //Wajib **********************************************  -->
        <!-- ********************************************** //Banner carousel ********************************************** -->
        <!-- ********************************************** Quick Book ticket ********************************************** -->
        <!--  QuickFilter  -->
        <section id="QuickFilter">
            <!--  Container  -->
            <div class="container">
                <!--  Select cinema  -->
                <div class="fc_sign_in_register">
                    <a href="BookingMovieServlet" class="btn btn-info">BOOK TICKET</a>
                </div>
                <!--  //Button buy tickets  -->
            </div>	
            <!--  //Container  -->
        </section>
        <!--  //QuickFilter  -->
        <!-- ********************************************** //Quick Book ticket ********************************************** -->
        <script type="text/javascript">
            $('.date').datepicker({
                autoclose: true,
                format:	"dd/mm/yyyy",
                todayHighlight: true,
                orientation: "bottom",
            });;
        </script>
        <!-- ********************************************** Tab panel movie list ********************************************** -->
        <!--  Display movie list  -->
        <div class="general">
            <!--  Container  -->
            <div class="container">
                <!--  Tab panel  -->
                <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                    <!--  nav-tabs list  -->
                    <ul id="myTab" class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#nowshowing" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Now Showing</a></li>
                        <li role="presentation"><a href="#comingsoon" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">Coming Soon</a></li>
                        <li role="presentation"><a href="#promotion" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">Promotion</a></li>
                    </ul>
                    <!--  //nav-tabs list  -->
                        <!--  myTabContent  -->
                    <div id="myTabContent" class="tab-content">
                        <!--  ********************************************** nowshowing tab **********************************************  -->
                        <div role="tabpanel" class="tab-pane fade active in" id="nowshowing" aria-labelledby="home-tab">
                            <!--  movie God’s Compass  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m15.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">God’s Compass</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie Jason Bourne  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m5.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">Jason Bourne</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie Rezort  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m16.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">Rezort</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie Peter  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m17.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">Peter</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie ISRA 88  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m18.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">ISRA 88</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie War Dogs  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m1.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">War Dogs</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie The Other Side  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m14.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">The Other Side</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie Civil War  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m19.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">Civil War</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie The Secret Life of Pets  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m20.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">The Secret Life of Pets</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie The Jungle Book  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m21.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">The Jungle Book</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <!--  ********************************************** //nowshowing tab **********************************************  -->
                        <!--  ********************************************** comingsoon tab **********************************************  -->
                        <div role="tabpanel" class="tab-pane fade" id="comingsoon" aria-labelledby="profile-tab">
                            <!--  movie Assassin's Creed 3  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m22.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">Assassin's Creed 3</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie Bad Moms  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m2.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">Bad Moms</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <!--  movie Central Intelligence  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m9.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">Central Intelligence</a></h6>							
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <!--  ********************************************** //comingsoon tab **********************************************  -->
                        <!--  ********************************************** promotion tab **********************************************  -->
                        <div role="tabpanel" class="tab-pane fade" id="promotion" aria-labelledby="rating-tab">
                            <div class="row">
                                <div class="col-md-3 col-md-offset-1">
                                    <img src="images/kslreborn.jpg" width="100%">
                                </div>
                                <div class="col-md-7 col-md-offset-1">
                                    <h3>
                                        MBO KSL REBORN
                                    </h3>
                                    <p>
                                        Type:Promotion
                                        Cinema:KSL CITY, JOHOR BAHRU
                                        Period:25/11/2016 - 25/11/2016
                                        The talented pop sweetie Jeryl Lee, finalist from Sing! China will be at MBO KSL JB for our grand re-opening! Join us on 25th Nov, 4PM - 7PM!

                                        We have ALLSTAR signups, cosplay appearances, The Prodigal Son Charity Screening, voucher & merchandise giveaway and more.
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 col-md-offset-1">
                                    <img src="images/moana.jpg" width="100%">
                                </div>
                                <div class="col-md-7 col-md-offset-1">
                                    <h3>
                                        MOANA COLOURING CONTEST
                                    </h3>
                                    <p>
                                        Type:Promotion
                                        Cinema:KSL CITY, JOHOR BAHRU,SUBANG PARADE, SUBANG JAYA,SETAPAK CENTRAL,THE SPRING SHOPPING MALL,KLUANG MALL, KLUANG,IMAGO MALL,CENTRAL SQUARE
                                        Period:26/11/2016 - 11/12/2016
                                        Join us at these MBO locations for Moana Colouring Contest! - happening from 26th November, check the dates and join to win STABILO and MBO merchandise.
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 col-md-offset-1">
                                    <img src="images/2d3d.jpg" width="100%">
                                </div>
                                <div class="col-md-7 col-md-offset-1">
                                    <h3>
                                        2D & 3D SAME PRICE!
                                    </h3>
                                    <p>
                                        Type:Promotion
                                        Cinema:All cinemas
                                        Period:
                                         Same ticket price for 2D & 3D movies
                                        *3D glasses sold separately & can be used for subsequent visits.
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 col-md-offset-1">
                                    <img src="images/reasons.jpg" width="100%">
                                </div>
                                <div class="col-md-7 col-md-offset-1">
                                    <h3>
                                        10 REASONS TO WATCH MOVIES AT MBO CINEMAS
                                    </h3>
                                    <p>
                                        Type:Promotion
                                        Cinema:All cinemas
                                        Period:01/01/2016
                                        10 Reasons Why MBO Cinemas is the best choice to watch your favourite movies! 
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--  ********************************************** //promotion tab **********************************************  -->
                    </div>
                    <!--  //myTabContent  -->
                </div>
                <!--  //Tab panel  -->
            </div>
            <!--  //Container  -->
        </div>
        <!--  //Display movie list  -->
        <!-- ********************************************** //Tab panel movie list ********************************************** -->
        <!-- ********************************************** Footer ********************************************** -->
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
                            <a href="index.jsp">Movies</a>
                        </li>
                        <li>
                            <a href="showtimes.jsp">Showtimes</a>
                        </li>
                        <li>
                            <a href="newspromotion.jsp">News & Promotion</a>
                        </li>
                        <li>
                            <a href="locate.jsp">Locate Us</a>
                        </li>
                        <li>
                            <a href="contact.jsp">Contact Us</a>
                        </li>
                        <li>
                            <a href="faq.jsp">FAQ</a>
                        </li>
                    </ul>
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