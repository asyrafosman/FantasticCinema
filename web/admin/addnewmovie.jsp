<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
						<li><i class="fa fa-phone" aria-hidden="true"></i> (+06) 012 3456 789</li>
						
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
                                                             <li class="dropdown">
                                                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="movie">Movie Management<span class="caret"></span></a>
                                                                        <ul class="dropdown-menu" aria-labelledby="themes">
                                                                          <li><a href="addnewmovie.jsp">Add Movie</a></li>
                                                                          <li class="divider"></li>
                                                                          <li><a href="editmovie.jsp">Edit Movie</a></li>
                                                                          <li class="divider"></li>
                                                                          <li><a href="deletemovie.jsp">Delete Movie</a></li>
                                                                          <li class="divider"></li>                                                               
                                                                        </ul>
                                                                      </li>
                                                            <ul class="nav navbar-nav">
                                                             <li class="dropdown">
                                                                <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="movie">Promotion & News Management<span class="caret"></span></a>
                                                                        <ul class="dropdown-menu" aria-labelledby="themes">
                                                                          <li><a href="addnewpromotion.jsp">Add Promotion & News</a></li>
                                                                          <li class="divider"></li>
                                                                          <li><a href="editpromotion.jsp">Edit Promotion & News</a></li>
                                                                          <li class="divider"></li>
                                                                          <li><a href="deletepromotion.jsp">Delete Promotion & News</a></li>
                                                                          <li class="divider"></li>                                                               
                                                                        </ul>
                                                                      </li>        																			
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
                <!-- ********************************************** Add New Movie Form ********************************************** -->
                <div class="bs-docs-section" >
                <div class="row">
                <div class="col-lg-12">
                <div class="page-header"  align="center">
                <h1 id="forms">Add New Movie Form</h1>
                 </div>
                 </div>
                 </div>
        
        <div class="row" >
            <div class="col-md-8 col-md-offset-2">
        
            <div class="well bs-component" >
              <form class="form-horizontal" action="InsertMovieServlet" >
                <fieldset>
                  <legend>Movies Details</legend>
                  
                                    
                  <!--  Enter Movie Name  -->
                  <div class="form-groName" class="col-lg-2 control-label">Movie Name</label>
                    <div class="col-lg-10">
                      <input type="text" class="form-control" name="moviename" placeholder="moviename">
                    </div>
                  </div>
                  <!--// Enter Movie Name  -->
                  
                  <!--Enter Movie Descriptions  -->
                    <div class="form-group" align="left">
                    <label for="inputDescription" class="col-lg-2 control-label">Movie Description</label>
                    <div class="col-lg-10">
                      <textarea class="form-control" rows="3" name="description" placeholder="description"></textarea>
                      <span class="help-block"></span>
                    </div>
                    </div>
                    <!--//Enter Movie Descriptions  -->

                           
                    <!--  Select Start Date  -->
                     <div class="form-group"  >
                     <label for="inputStartDate" class="col-lg-2 control-label">Start Date</label>
								
                                            
                                            <div class="input-group date" data-provide="datepicker">
                                               
                                               <div class="input-group-addon">
                                                    <span class="fa fa-th"></span>
                                                </div> 
                                                <input name="startdate" type="text" class="form-control" value="startdate">
                                               
                                            </div>
                                        <!--<select name="DLePaymentDates" onchange="javascript:setTimeout('__doPostBack(\'DLePaymentDates\',\'\')', 0)" id="DLePaymentDates" class="form-control">
                                                    <option selected="selected" value="-">DATE</option>
                                            </select>-->                                  
                                    </div>&nbsp
                    <!--  //Select Start Date  -->
                    
                     <!--  Select End Date  -->
                     <div class="form-group"  >
                     <label for="inputEndDate" class="col-lg-2 control-label">End Date</label>
								
                                  
                                            <div class="input-group date" data-provide="datepicker">
                                               
                                               <div class="input-group-addon">
                                                    <span class="fa fa-th"></span>
                                                </div> 
                                                <input name="enddate" type="text" class="form-control" value="enddate">
                                               
                                            </div>
                                        <!--<select name="DLePaymentDates" onchange="javascript:setTimeout('__doPostBack(\'DLePaymentDates\',\'\')', 0)" id="DLePaymentDates" class="form-control">
                                                    <option selected="selected" value="-">DATE</option>
                                            </select>-->                                  
                                    </div>&nbsp
                    <!--  //Select End Date  -->
                    
                   <!--<div class="form-group">
                    <label for="filetoupload" class="col-lg-2 control-label">Choose File to Upload</label>
                    <div class="col-lg-10">
                      <input type="file" name="filetoupload" id="filetoupload" size="50" />
                    </div>
                  </div>-->
                    
                    <!-- Cancel&Submit  --> 
                  <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                      <button type="reset" class="btn btn-default">Cancel</button>
                      <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                  </div>
                    <!--//Cancel&Submit  --> 
                </fieldset>
              </form>
            </div> 
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
					
					
				</div>
				<!--  //w3ls_footer_grid  -->


				<!--  w3ls_footer_grid1_left  -->
				<div class="col-md-5 w3ls_footer_grid1_left">
					<p>All Content Copyright &copy; 2016 Fantastic Cinema. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
				</div>
				<!--  //w3ls_footer_grid1_left  -->
                                </div>
				<div class="clearfix"> </div>
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

