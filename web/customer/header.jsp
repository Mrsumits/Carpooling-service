<%@page import="me.UserName"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>TransportYourWorld</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css"  rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="      ">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href=foot.css"  rel="stylesheet">

        <!------ Include the above in your HEAD tag ---------->
        <script language="java script">
            $(document).ready(function () {
                $('#myCarousel').carousel({
                    interval: 4000
                });

                var clickEvent = false;
                $('#myCarousel').on('click', '.nav a', function () {
                    clickEvent = true;
                    $('.nav li').removeClas s('active');
                    $(this).parent().addClass('active');
                }).on('slid.bs.carousel', function (e) {
                    if (!clickEvent) {
                        var count = $('.nav').children().length - 1;
                        var current = $('.nav li.active');
                        current.removeClass('active').next().addClass('active');
                        var id = parseInt(current.data('slide-to'));
                        if (count == id) {
                            $('.nav li').first().addClass('active');
                        }
                    }
                    clickEvent = false;
                });
            });
        </script>
    </head>
    <body>
        <div class="container">
            <!-- Topper w/ logo -->
            <div class="row hidden-xs topper">
                <div class="col-xs-3 col-sm-3">
                    <a><img am-TopLogo alt="SECUREVIEW"  src="Image/logo.png" class="img-responsive"></a>
                </div>
                <!--<div class="col-xs-7 col-xs-offset-1 col-sm-7 col-sm-offset-0 text-right ">
              
                </div>-->
            </div> <!-- End Topper -->
            <!-- Navigation -->
            <div class="row">
                <nav class="navbar navbar-inverse" role="navigation">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand visible-xs-inline-block nav-logo" href="/"><img src="/images/logo-dark-inset.png" class="img-responsive" alt=""></a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse navbar-ex1-collapse">
                            <ul class="nav navbar-nav js-nav-add-active-class">
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="userDetail.jsp">Details</a></li>
                                
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Booking<b class="caret"></b></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="bookride.jsp">Book Ride</a></li>
                                        <li><a href="http://localhost:8084/TransportYourWorld/BookRideModify">Modify The Booking</a></li>  
                                                                                
                                    </ul>
                                </li>
                                
                                <li><a href="http://localhost:8084/TransportYourWorld/CarDetailsClient">Car List</a></li>
                             


                            </ul>
                            <ul class="nav navbar-nav navbar-right hidden-xs">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:blue;font-size: 20px;"><% 
                                        
                                        UserName.setUsername(session.getAttribute("userNameMain").toString());
                                        out.print(session.getAttribute("userNameMain")); 
                                    
                                    %><b class="caret"></b>                  </a>

                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="/TransportYourWorld/LogOutServlet">logout</a></li>

                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>


        </div>
    </div> 
</div>




<link href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<div style="width:80%;margin-left: auto;margin-right: auto;">
    <!--footer start from here-->
