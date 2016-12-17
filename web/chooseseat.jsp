<%-- 
    Document   : chooseseat
    Created on : Dec 14, 2016, 10:30:14 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% User customerprofile = (User)session.getAttribute("customerprofile"); 
    if (customerprofile == null) {
%>
        <jsp:forward page="index.jsp" />
<%        
    }
%>  
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
        <script type="text/javascript" src="js/jquery.seat-charts.min.js"></script>
        <!-- //js -->
        
        <!-- banner-bottom-plugin -->
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> <!-- Wajib -->
        <script src="js/owl.carousel.js"></script> <!-- Wajib -->
        
        <% 
            session.setAttribute("cinema", request.getParameter("cinema"));
            session.setAttribute("moviename", request.getParameter("moviename"));
            session.setAttribute("moviedate", request.getParameter("moviedate"));
            session.setAttribute("movietime", request.getParameter("movietime"));
        %>
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
                        <% if (customerprofile == null) { %>
                            <li><i aria-hidden="true"></i>Guest</li>
                            <li><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>                   
                        <% }
                        else { %>
                            <li><i aria-hidden="true"></i><jsp:getProperty name="customerprofile" property="fullName"/></li>
                            <li><a href="viewprofile.jsp" title="User Profile"><span class="glyphicon glyphicon-user"></span></a></li>
                            <li><a href="ViewHistoryServlet" title="History"><span class="glyphicon glyphicon-time"></span></a></li>
                            <li><a href="CustomerLogoutServlet" title="Logout"><span class="glyphicon glyphicon-log-out"></span></a></li>
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
                                <li class="active"><a href="index.jsp">Movies</a></li>
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
        <div class="section">
            <div style="text-align:center;">
                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <!-- goocode-728*90 -->
                <ins class="adsbygoogle"
                    style="display:inline-block;width:728px;height:90px"
                    data-ad-client="ca-pub-3762305523564574"
                    data-ad-slot="6959772397"></ins>
                <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
            </div>	

        <style type="text/css">
        .demo{width:900px; margin:40px auto 0 auto; min-height:500px; height: auto}
        @media screen and (max-width: 360px) {.demo {width:340px}}

        .front{width: 300px;margin: 5px 32px 45px 32px;background-color: #f0f0f0;	color: #666;text-align: center;padding: 3px;border-radius: 5px;}
        .booking-details {float: right;position: relative;width:450px;height: 450px; }
        .booking-details h3 {margin: 5px 5px 0 0;font-size: 16px;}
        .booking-details p{line-height:26px; font-size:16px; color:#999}
        .booking-details p span{color:#666}
        div.seatCharts-cell {color: #fff;height: 25px;width: 25px;line-height: 25px;margin: 3px;float: left;text-align: center;outline: none;font-size: 13px;}
        div.seatCharts-seat {color: #fff;cursor: pointer;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;}
        div.seatCharts-row {height: 35px;}
        div.seatCharts-seat.available {background-color: #00bc8c;}
        div.seatCharts-seat.focused {background-color: #008966;border: none;}
        div.seatCharts-seat.selected {background-color: #f39c12;}
        div.seatCharts-seat.unavailable {background-color: #d62c1a;cursor: not-allowed;}
        div.seatCharts-container {border-right: 1px dotted #adadad;width: 400px;padding: 20px;float: left;}
        div.seatCharts-legend {padding-left: 0px;position: absolute;bottom: 16px;}
        ul.seatCharts-legendList {padding-left: 0px;}
        .seatCharts-legendItem{float:left; width:90px;margin-top: 10px;line-height: 2;}
        span.seatCharts-legendDescription {margin-left: 5px;line-height: 30px;}
        .checkout-button {display: block;width:80px; height:24px; line-height:20px;margin: 10px auto;border:1px solid #999;font-size: 14px; cursor:pointer}
        #selected-seats {max-height: 150px;overflow-y: auto;overflow-x: none;width: 200px;}
        #selected-seats li{float:left; width:72px; height:26px; line-height:26px; border:1px solid #d3d3d3; background:#375a7f; margin:6px; font-size:14px; font-weight:bold; text-align:center}
        </style>
        <div class="general">
            <div class="container">
                <div class="jumbotron">
                    <div class="demo">
                        <div id="seat-map">
                            <div class="front">SCREEN</div>
                        </div>
                        <div class="booking-details">
                            <form class="form-horizontal" action="InsertBookingServlet">
                                <fieldset>
                                    <legend>Booking Details</legend>
                                    <input type="hidden" class="form-control" id="username" name="username" value="${customerprofile.username}">
                                    <div class="form-group">
                                        <label for="select" class="col-lg-2 control-label">Cinema</label>
                                        <input type="hidden" class="form-control" id="cinema" name="cinema" value="${sessionScope.cinema}">
                                        <div class="col-lg-10">
                                            <span class="help-block"><c:out value="${sessionScope.cinema}"/></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="select" class="col-lg-2 control-label">Movie</label>
                                        <input type="hidden" class="form-control" id="moviename" name="moviename" value="${sessionScope.moviename}">
                                        <div class="col-lg-10">
                                            <span class="help-block"><c:out value="${sessionScope.moviename}"/></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="select" class="col-lg-2 control-label">Show Date</label>
                                        <input type="hidden" class="form-control" id="moviedate" name="moviedate" value="${sessionScope.moviedate}">
                                        <div class="col-lg-10">
                                            <span class="help-block"><c:out value="${sessionScope.moviedate}"/></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="select" class="col-lg-2 control-label">Show Time</label>
                                        <input type="hidden" class="form-control" id="movietime" name="movietime" value="${sessionScope.movietime}">
                                        <div class="col-lg-10">
                                            <span class="help-block"><c:out value="${sessionScope.movietime}"/></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="select" class="col-lg-2 control-label">Seat</label>
                                        <div class="col-lg-10">
                                            <ul id="selected-seats"></ul>
                                        <input type="hidden" class="form-control" id="seat" name="seat">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="select" class="col-lg-2 control-label">Total</label>
                                        <div class="col-lg-10">
                                            <span class="help-block"><b>RM&nbsp<span id="total">0</span></b></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-lg-10 col-lg-offset-2">
                                            <button type="reset" class="btn btn-danger">Cancel</button>
                                            <button type="submit" class="btn btn-success">Checkout</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                        <div style="clear:both"></div>
                    </div>
                </div>

                <script type="text/javascript">
                var price = 10; //price
                $(document).ready(function() {
                    var $cart = $('#selected-seats'), //Sitting Area
                    $counter = $('#counter'), //Votes
                    $total = $('#total'); //Total money

                    var sc = $('#seat-map').seatCharts({
                        map: [  //Seating chart
                                'aaaaaaaaaa',
                                'aaaaaaaaaa',
                                'aaaaaaaaaa',
                                'aaaaaaaaaa',
                                'aaaaaaaaaa',
                                'aaaaaaaaaa',
                                'aaaaaaaaaa',
                                'aaaaaaaaaa',
                                'aaaaaaaaaa',
                                'aaaaaaaaaa'
                            ],
                            naming : {
                                    top : false,
                                    getLabel : function (character, row, column) {
                                            return column;
                                    }
                            },
                            legend : { //Definition legend
                                    node : $('#legend'),
                                    items : [
                                            [ 'a', 'available',   'Option' ],
                                            [ 'a', 'unavailable', 'Sold']
                                    ]					
                            },
                            click: function () { //Click event
                                    if (this.status() == 'available') { //optional seat
                                            $('<li>R'+(this.settings.row+1)+' S'+this.settings.label+'</li>')
                                                    .attr('id', 'cart-item-'+this.settings.id)
                                                    .data('seatId', this.settings.id)
                                                    .appendTo($cart);

                                            $counter.text(sc.find('selected').length+1);
                                            $total.text(recalculateTotal(sc)+price);
                                            document.getElementById('seat').value='R'+(this.settings.row+1)+' S'+this.settings.label ; 

                                            return 'selected';
                                    } else if (this.status() == 'selected') { //Checked
                                                    //Update Number
                                                    $counter.text(sc.find('selected').length-1);
                                                    //update totalnum
                                                    $total.text(recalculateTotal(sc)-price);

                                                    //Delete reservation
                                                    $('#cart-item-'+this.settings.id).remove();
                                                    //optional
                                                    return 'available';
                                    } else if (this.status() == 'unavailable') { //sold
                                            return 'unavailable';
                                    } else {
                                            return this.style();
                                    }
                            }
                    });
                        //sold seat
                        sc.get(['1_2', '4_4','4_5','6_6','6_7','8_5','8_6','8_7','8_8', '10_1', '10_2']).status('unavailable');
                });
                //sum total money
                function recalculateTotal(sc) {
                        var total = 0;
                        sc.find('selected').each(function () {
                                total += price;
                        });
                        return total;
                }
                </script>
  	
                <div style="text-align:center;">
                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <!-- goocode-728*90 -->
                    <ins class="adsbygoogle"
                            style="display:inline-block;width:728px;height:90px"
                            data-ad-client="ca-pub-3762305523564574"
                            data-ad-slot="6959772397"></ins>
                    <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>	
            </div>
        </div>
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
        </div>

        <div style="display:none"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1253486628'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/stat.php%3Fid%3D1253486628%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script></div>

        <script type="text/javascript">/* <![CDATA[ */(function(d,s,a,i,j,r,l,m,t){try{l=d.getElementsByTagName('a');t=d.createElement('textarea');for(i=0;l.length-i;i++){try{a=l[i].href;s=a.indexOf('/cdn-cgi/l/email-protection');m=a.length;if(a&&s>-1&&m>28){j=28+s;s='';if(j<m){r='0x'+a.substr(j,2)|0;for(j+=2;j<m&&a.charAt(j)!='X';j+=2)s+='%'+('0'+('0x'+a.substr(j,2)^r).toString(16)).slice(-2);j++;s=decodeURIComponent(s)+a.substr(j,m-j)}t.innerHTML=s.replace(/</g,'&lt;').replace(/>/g,'&gt;');l[i].href='mailto:'+t.value}}catch(e){}}}catch(e){}})(document);/* ]]> */</script>
    </body>
</html>
