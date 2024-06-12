

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>MyHotel - Hotel Booking and Room Booking Online Html Responsive Template</title>
    <!-- META TAGS -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- FAV ICON(BROWSER TAB ICON) -->
    <link rel="shortcut icon" href="images/fav.ico" type="image/x-icon">
    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:500,700" rel="stylesheet">
    <!-- FONTAWESOME ICONS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <!-- ALL CSS FILES -->
    <link href="${pageContext.request.contextPath}/css/materialize.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- RESPONSIVE.CSS ONLY FOR MOBILE AND TABLET VIEWS -->
    <link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet">
<link rel="stylesheet"
              href="${pageContext.request.contextPath}/css/home.css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body data-ng-app="">
    <!--MOBILE MENU-->
    <section>
        <div class="mm">
            <div class="mm-inn">
                <div class="mm-logo">
                    <a href="main.html"><img src="images/logo.png" alt=""></a>
                </div>
                <div class="mm-icon"><span><i class="fa fa-bars show-menu" aria-hidden="true"></i></span></div>
                <div class="mm-menu">
                    <div class="mm-close"><span><i class="fa fa-times hide-menu" aria-hidden="true"></i></span></div>
                    <ul>
                        <!-- List items here -->
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!--HEADER SECTION-->
    <section>
        <%@include file="../includes/header.jsp" %>
        <div class="inn-body-section inn-detail">
            <div class="container">
                <div class="row">
                    <div class="inn-bod">
                        <div class="inn-detail-p1 inn-com">
                            <h2>Master Suite Room</h2>
                            <div class="r2-ratt"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <img src="images/h-trip.png" alt=""> <span>Excellent 4.5 / 5</span> </div>
                            <p>Discover two of South America’s greatest cities, Rio de Janeiro and Buenos Aires, at a leisurely pace...</p>
                            <p>Brazil’s view takes you through clouds of mist and the opportunity to see these 275 falls...</p>
                        </div>
                        <div class="inn-detail-p1 inn-com inn-com-list-point">
                            <div class="detail-title">
                                <h2>Room Amenities</h2>
                                <p>a procedure intended to establish the quality, performance, or reliability of something...</p>
                            </div>
                            <ul>
                                <li><i class="fa fa-check" aria-hidden="true"></i> Airport transportation (surcharge)</li>
                                <!-- Other list items here -->
                            </ul>
                        </div>
                        <div class="inn-detail-p1 inn-com inn-com-form">
                            <div class="detail-title">
                                <h2>Book This Room</h2>
                                <p>a procedure intended to establish the quality, performance, or reliability of something...</p>
                            </div>
                            <form class="col s12">
                                <div class="row">
                                    <div class="input-field col s6">
                                        <input type="text" class="validate">
                                        <label>First Name</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <input type="text" class="validate">
                                        <label>Last Name</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <input type="text" class="validate">
                                        <label>Phone</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <input type="text" class="validate">
                                        <label>Email</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <input type="text" class="validate">
                                        <label>Check In</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <input type="text" class="validate">
                                        <label>Check Out</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <input type="text" class="validate">
                                        <label>Adults</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <input type="text" class="validate">
                                        <label>Children</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <textarea id="textarea1" class="materialize-textarea"></textarea>
                                        <label for="textarea1">Textarea</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <input type="submit" value="Submit" class="waves-effect waves-light full-btn">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="inn-detail-p1 inn-com inn-com-price">
                            <div class="detail-title">
                                <h2>Today Price</h2>
                                <p>a procedure intended to establish the quality, performance, or reliability of something...</p>
                            </div>
                            <h4>Price For 1 Night</h4>
                            <p>a procedure intended to establish the quality, performance, or reliability of something...</p>
                            <span>Non Refundable</span> <span class="inn-room-price">Rs.6,030</span>
                        </div>
                        <div class="inn-detail-p1 inn-com">
                            <div class="detail-title">
                                <h2>Photo Gallery</h2>
                                <p>a procedure intended to establish the quality, performance, or reliability of something...</p>
                            </div>
                            <div class="room-photo-all">
                                <div class="col-md-3 room-photo">
                                    <div class="gall-grid room-photo-gal"> <img class="materialboxed" data-caption="A picture of a way with a group of trees in a park" src="images/room/1.jpg" alt="" /> </div>
                                </div>
                                <!-- Other photo items here -->
                            </div>
                        </div>
                        <div class="inn-detail-p1 inn-com">
                            <div class="detail-title">
                                <h2>Related Rooms</h2>
                                <p>a procedure intended to establish the quality, performance, or reliability of something...</p>
                            </div>
                            <div class="re-room">
                                <ul>
                                    <li>
                                        <div class="re-room-list">
                                            <div class="col-md-3 re-room-list-1"><img src="images/room/1.jpg" alt=""></div>
                                            <div class="col-md-6 re-room-list-2">
                                                <h4>Ultra Deluxe</h4>
                                                <p><b>Amenities: </b>Television, Wi-Fi, Hair dryer, Towels, Dining, Music, GYM and more..</p>
                                                <span><b>Includes</b>: Free Parking, Breakfast, VAT</span>
                                                <span><b>Maximum</b>: 4 Persons</span>
                                            </div>
                                            <div class="col-md-3 re-room-list-3">
                                                <span class="hot-list-p3-1">Price Per Night</span>
                                                <span class="hot-list-p3-2">$940</span>
                                                <a href="booking.html" class="hot-page2-alp-quot-btn spec-btn-text">Book Now</a>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- Other related rooms items here -->
                                </ul>
                            </div>
                        </div>
                        <div class="inn-detail-p1 inn-com">
                            <div class="detail-title">
                                <h2>User Reviews</h2>
                                <p>a procedure intended to establish the quality, performance, or reliability of something...</p>
                            </div>
                            <div class="room-rat-inn room-rat-bor">
                                <div class="row">
                                    <div class="col-md-12 room-rat-body">
                                        <div class="room-rat-img">
                                            <img src="images/users/2.png" alt="">
                                            <p>Orange Fab &amp; Weld <span>19th January, 2017</span></p>
                                        </div>
                                        <div class="dir-rat-star">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </div>
                                        <p>Michael &amp; his team have been helping us with our equipment finance for the past 5 years...</p>
                                        <ul>
                                            <li><a href="#"><span>Like</span><i class="fa fa-thumbs-o-up"></i></a></li>
                                            <li><a href="#"><span>Dislike</span><i class="fa fa-thumbs-o-down"></i></a></li>
                                            <li><a href="#"><span>Report</span><i class="fa fa-flag-o"></i></a></li>
                                            <li><a href="#"><span>Comments</span><i class="fa fa-commenting-o"></i></a></li>
                                            <li><a href="#"><span>Share Now</span><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Other reviews here -->
                        </div>
                        <div class="inn-detail-p1 inn-com room-soc-share">
                            <div class="detail-title">
                                <h2>Share this Room</h2>
                                <p>a procedure intended to establish the quality, performance, or reliability of something...</p>
                            </div>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i> Google+</a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i> Twitter</a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i> LinkedIn</a></li>
                                <li><a href="#"><i class="fa fa-whatsapp" aria-hidden="true"></i> WhatsApp</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Section -->
        <div class="hom-footer-section">
            <div class="container">
                <div class="row">
                    <div class="foot-com foot-1">
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="foot-com foot-2">
                        <h5>Phone: (+404) 142 21 23 78</h5>
                    </div>
                    <div class="foot-com foot-3">
                        <a class="waves-effect waves-light" href="booking.html">Room Reservation</a>
                    </div>
                    <div class="foot-com foot-4">
                        <a href="#"><img src="images/card.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--END HEADER SECTION-->
    <footer class="site-footer clearfix">
        <div class="sidebar-container">
            <div class="sidebar-inner">
                <div class="widget-area clearfix">
                    <div class="widget widget_azh_widget">
                        <div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12 col-md-3 foot-logo">
                                        <img src="images/logo1.png" alt="logo">
                                        <p class="hasimg">Hotels worldwide incl. Infos, Ratings and Photos. Make your Hotel Reservation cheap.</p>
                                        <p class="hasimg">The top-rated hotel booking services.</p>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <h4>Support &amp; Help</h4>
                                        <ul class="two-columns">
                                            <li><a href="dashboard.html">Dashboard</a></li>
                                            <li><a href="db-activity.html">DB Activity</a></li>
                                            <li><a href="booking.html">Booking</a></li>
                                            <li><a href="contact-us.html">Contact Us</a></li>
                                            <li><a href="about-us.html">About Us</a></li>
                                            <li><a href="aminities.html">Amenities</a></li>
                                            <li><a href="blog.html">Blog</a></li>
                                            <li><a href="menu1.html">Food Menu</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <h4>Cities Covered</h4>
                                        <ul class="two-columns">
                                            <li><a href="#!">Sydney</a></li>
                                            <li><a href="#!">Basel</a></li>
                                            <li><a href="#!">Copenhagen</a></li>
                                            <li><a href="#!">Frankfurt</a></li>
                                            <li><a href="#!">Vancouver</a></li>
                                            <li><a href="#!">Auckland</a></li>
                                            <li><a href="#!">Vienna</a></li>
                                            <li><a href="#!">Los Angeles</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-12 col-md-3">
                                        <h4>Address</h4>
                                        <p>28800 Orchard Lake Road, Suite 180 Farmington Hills, U.S.A. Landmark: Next To Airport</p>
                                        <p><span class="foot-phone">Phone: </span><span class="foot-phone">+01 1245 2541</span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="foot-sec2">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12 col-md-3">
                                        <h4>Payment Options</h4>
                                        <p class="hasimg"><img src="images/payment.png" alt="payment"></p>
                                    </div>
                                    <div class="col-sm-12 col-md-4">
                                        <h4>Subscribe Now</h4>
                                        <form>
                                            <ul class="foot-subsc">
                                                <li><input type="text" placeholder="Enter your email id"></li>
                                                <li><input type="submit" value="Submit"></li>
                                            </ul>
                                        </form>
                                    </div>
                                    <div class="col-sm-12 col-md-5 foot-social">
                                        <h4>Follow with us</h4>
                                        <p>Join the thousands of other There are many variations of passages of Lorem Ipsum available</p>
                                        <ul>
                                            <li><a href="#!"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#!"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                            <li><a href="#!"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#!"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                            <li><a href="#!"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                            <li><a href="#!"><i class="fa fa-whatsapp" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- .widget-area -->
            </div>
            <!-- .sidebar-inner -->
        </div>
        <!-- #quaternary -->
    </footer>
    <section class="copy">
        <div class="container">
            <p>copyrights © 2017 RN53Themes.net. &nbsp;&nbsp;All rights reserved.</p>
        </div>
    </section>
    <section>
        <!-- LOGIN SECTION -->
        <div id="modal1" class="modal fade" role="dialog">
            <div class="log-in-pop">
                <div class="log-in-pop-left">
                    <h1>Hello... <span>{{ name}}</span></h1>
                    <p>Don't have an account? Create your account. It takes less than a minute</p>
                    <h4>Login with social media</h4>
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
                        <li><a href="#"><i class="fa fa-google"></i> Google+</a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
                    </ul>
                </div>
                <div class="log-in-pop-right">
                    <a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.png" alt=""></a>
                    <h4>Login</h4>
                    <p>Don't have an account? Create your account. It takes less than a minute</p>
                    <form class="s12">
                        <div>
                            <div class="input-field s12">
                                <input type="text" data-ng-model="name" class="validate">
                                <label>User name</label>
                            </div>
                        </div>
                        <div>
                            <div class="input-field s12">
                                <input type="password" class="validate">
                                <label>Password</label>
                            </div>
                        </div>
                        <div>
                            <div class="s12 log-ch-bx">
                                <p>
                                    <input type="checkbox" id="test5" />
                                    <label for="test5">Remember me</label>
                                </p>
                            </div>
                        </div>
                        <div>
                            <div class="input-field s4">
                                <input type="submit" value="Login" class="waves-effect waves-light log-in-btn">
                            </div>
                        </div>
                        <div>
                            <div class="input-field s12">
                                <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#modal3">Forgot password</a> | 
                                <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#modal2">Create a new account</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- REGISTER SECTION -->
        <div id="modal2" class="modal fade" role="dialog">
            <div class="log-in-pop">
                <div class="log-in-pop-left">
                    <h1>Hello... <span>{{ name1}}</span></h1>
                    <p>Don't have an account? Create your account. It takes less than a minute</p>
                    <h4>Login with social media</h4>
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
                        <li><a href="#"><i class="fa fa-google"></i> Google+</a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
                    </ul>
                </div>
                <div class="log-in-pop-right">
                    <a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.png" alt=""></a>
                    <h4>Create an Account</h4>
                    <p>Don't have an account? Create your account. It takes less than a minute</p>
                    <form class="s12">
                        <div>
                            <div class="input-field s12">
                                <input type="text" data-ng-model="name1" class="validate">
                                <label>User name</label>
                            </div>
                        </div>
                        <div>
                            <div class="input-field s12">
                                <input type="email" class="validate">
                                <label>Email id</label>
                            </div>
                        </div>
                        <div>
                            <div class="input-field s12">
                                <input type="password" class="validate">
                                <label>Password</label>
                            </div>
                        </div>
                        <div>
                            <div class="input-field s12">
                                <input type="password" class="validate">
                                <label>Confirm password</label>
                            </div>
                        </div>
                        <div>
                            <div class="input-field s4">
                                <input type="submit" value="Register" class="waves-effect waves-light log-in-btn">
                            </div>
                        </div>
                        <div>
                            <div class="input-field s12">
                                <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#modal1">Are you already a member? Login</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- FORGOT SECTION -->
        <div id="modal3" class="modal fade" role="dialog">
            <div class="log-in-pop">
                <div class="log-in-pop-left">
                    <h1>Hello... <span>{{ name3}}</span></h1>
                    <p>Don't have an account? Create your account. It takes less than a minute</p>
                    <h4>Login with social media</h4>
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i> Facebook</a></li>
                        <li><a href="#"><i class="fa fa-google"></i> Google+</a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i> Twitter</a></li>
                    </ul>
                </div>
                <div class="log-in-pop-right">
                    <a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.png" alt=""></a>
                    <h4>Forgot password</h4>
                    <p>Don't have an account? Create your account. It takes less than a minute</p>
                    <form class="s12">
                        <div>
                            <div class="input-field s12">
                                <input type="text" data-ng-model="name3" class="validate">
                                <label>User name or email id</label>
                            </div>
                        </div>
                        <div class="input-field s4">
                            <input type="submit" value="Submit" class="waves-effect waves-light log-in-btn">
                        </div>
                        <div class="input-field s12">
                            <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#modal1">Are you already a member? Login</a> | 
                            <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#modal2">Create a new account</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!--ALL SCRIPT FILES-->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/js/angular.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/materialize.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.mixitup.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/custom.js"></script>
</body>

</html>
