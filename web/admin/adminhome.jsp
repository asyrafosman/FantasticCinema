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
                                <li class="active" id="lihome"><a href="admin/adminhome.jsp" id="home">Home</a></li>            
                                <li id="limovies"><a href="/FantasticCinema/ViewMovieServlet" id="about">Movies</a></li>
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
                        <li role="presentation"><a href="#news" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">News</a></li>
                    </ul>
                    <!--  //nav-tabs list  -->
                    <!--  myTabContent  -->
                    <div id="myTabContent" class="tab-content">
                        <!--  ********************************************** nowshowing tab **********************************************  -->
                        <div role="tabpanel" class="tab-pane fade active in" id="nowshowing" aria-labelledby="home-tab">
                            <!--  movie God?s Compass  -->
                            <div class="col-md-2 w3l-movie-gride-agile">
                                <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m15.jpg" title="movie-name" class="img-responsive" alt=" " />
                                    <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
                                </a>
                                <div class="mid-1 agileits_w3layouts_mid_1_home">
                                    <div class="w3l-movie-text">
                                        <h6><a href="single.html">God?s Compass</a></h6>							
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
                        <!--  ********************************************** news tab **********************************************  -->
                        <div role="tabpanel" class="tab-pane fade" id="news" aria-labelledby="home-tab">
                            <div class="row">
                                <div class="col-md-3 col-md-offset-1">
                                    <img src="images/blooddonation.png" width="100%">
                                </div>
                                <div class="col-md-7 col-md-offset-1">
                                    <h3>
                                        BLOOD DONATION 3.0 PRESS CONFERENCE
                                    </h3>
                                    <p>
                                        MBO SJAM Blood Donation Drive 3.0 Press Conference @MBO Citta Mall
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 col-md-offset-1">
                                    <img src="images/blooddonation.jpg" width="100%">
                                </div>
                                <div class="col-md-7 col-md-offset-1">
                                    <h3>
                                        BLOOD DONATION PRESS CONFERENCE (2014)
                                    </h3>
                                    <p>
                                        Published on : 5 September 2014

                                        Read from - http://www.nst.com.my/node/30173
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3 col-md-offset-1">
                                    <img src="images/kosmogaraj.jpg" width="100%">
                                </div>
                                <div class="col-md-7 col-md-offset-1">
                                    <h3>
                                        KOSMO, GARAJ, SCRATCH WINS CONTEST NEWS ON 240514, PG 34
                                    </h3>
                                    <p>

                                    </p>
                                </div>
                            </div>
                        </div>
                        <!--  ********************************************** //news tab **********************************************  -->
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