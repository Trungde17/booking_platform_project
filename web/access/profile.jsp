<%@page import="model.Account"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="keywords" content="home stay, booking, platform, DaNang">
        <meta name="description" content="HealingLand - DaNang Booking HomeStay Platform">
        <title>HealingLand - DaNang Booking HomeStay Platform</title>
        <!--favicon-->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/logo/project_logo.png">
        <!--bootstrap css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <!--owl carousel css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
        <!--magnific popup css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup.css">
        <!--icofont css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/icofont.min.css">
        <!--font awesome css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
        <!--meanmenu css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/meanmenu.css">
        <!--animate css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/animate.css">
        <!--main css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
        <!--responsive css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/responsive.css">
    </head>

    <body>
        <%
            Account acc = (Account)session.getAttribute("account");
        %>


        <!-- start header-top-area -->
        <header class="header-area">
            <div class="header-top-area">
                <div class="container">
                    <div class="header-top-wrap">
                        <!--start course search-->
                        <div class="header-course-search">
                            <input type="text" placeholder="Search Courses" class="form-control">
                            <span><i class="fa fa-search"></i></span>
                        </div>
                        <!--end course search-->
                        <!--start header contact info-->
                        <div class="header-contact-info text-right">
                            <ul>
                                <li><i class="fa fa-envelope"></i> <a href="mailto:info@healingland.com">info@healingland.com</a></li>
                                <li><i class="fa fa-phone"></i> +98 012345 6789</li>
                            </ul>
                        </div>
                        <!--end header contact info-->
                        <!--start header-top-social-->
                        <div class="header-top-social text-right">
                            <ul>
                                <li><a href="https://www.facebook.com/q.huy2208"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                        <!--end header-top-social-->
                    </div>
                </div>
            </div>
            <!--end header-top-area-->

            <!--start header-btm-area-->
            <div class="header-btm-area">
                <div class="container">
                    <div class="main-menu-wrap">
                        <!--start site logo-->
                        <div class="site-logo">
                            <a class="logo" href="index-2.html"><img src="${pageContext.request.contextPath}/img/logo/project_logo.png" alt="logo"></a>
                        </div>
                        <!--end site logo-->

                        <!--start mainmenu-->
                        <div class="main-menu-area text-right">
                            <nav class="mainmenu">
                                <ul>
                                    <li>
                                        <a href="index-2.html">Home</a>
                                        <ul class="sub-menu">
                                            <li><a href="index-2.html">View Home Page</a></li>
                                            <li><a href="index-3.html">View Room</a></li>

                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Pages</a>
                                        <ul class="sub-menu">
                                            <li><a href="about-us.html">About Us</a></li>
                                            <li><a href="membership-plans.html">Membership Plans</a></li>
                                            <li><a href="instructor.html">Instructors</a></li>

                                        </ul>
                                    </li>

                                    <li>
                                        <a href="upcoming-webinars.html">FeedBack</a>
                                        <ul class="sub-menu">
                                            <li><a href="upcoming-webinars.html">FeedBack Room </a></li>
                                            <li><a href="web-programming-career-guideline.html">FeedBack HomeStay</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="blog-page.html">Blog Page</a>

                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!--end mainmenu-->

                        <!--start cart icon-->
                        <div class="header-cart text-center">
                            <ul>
                                <li>
                                    <a href="#"><i class="fa fa-shopping-cart"></i>
                                        <span class="cart-total-number">0</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!--end cart icon-->

                        <!--start login registration btn-->
                        <div class="header-log-reg text-right">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/access/login.jsp">Login</a></li>
                                <li><small>|</small></li>
                                <li><a href="${pageContext.request.contextPath}/access/signup.jsp">Register</a></li>
                            </ul>
                        </div>
                        <!--end login registration btn-->
                    </div>
                </div>
            </div>
            <!--end header-btm-area-->
        </header>
        <!--end header-->

        <!--start hero area-->
        <section class="page-banner-area">
            <div class="container">
                <div class="row">
                    <!--start heading-->
                    <div class="col-lg-10 offset-lg-1">
                        <div class="banner-content text-center">
                            <h1>Instructor Profile</h1>
                            <p><a href="index-2.html">Home</a> <span> > </span>Instructor Profile</p>
                        </div>
                    </div>
                    <!--end heading-->
                </div>
            </div>
        </section>
        <!--end hero area-->

        <!--start instructor profile area-->
        <section class="inst-profile-area">
            <div class="container">
                <div class="row">
                    <!--start profile-->
                    <div class="col-lg-4">
                        <div class="instructor-info">
                            <div class="instructor-img">
                                <img src="${pageContext.request.contextPath}/img/QuangHuy.jpg" alt="image" class="img-fluid">


                            </div>
                            <div class="info">
                                <ul class="social-links">
                                    <li><a href="https://www.facebook.com/q.huy2208"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--end profile-->

                    <!--start instructor bio-->
                    <div class="col-lg-8">
                        <div class="inst-bio">
                            <h3>Profile of User</h3>
                            <div class="info_user">
                                <div>
                                    Last Name: <%=acc.getLast_name()%>
                                </div>
                                <div>
                                    First Name: <%=acc.getFirst_name()%>
                                </div>
                                <div>
                                    Email: <%=acc.getEmail()%>
                                </div>
                                <div>
                                    Registration Date: <%=acc.getRegistration_date()%>  
                                </div>
                            </div>    


                        </div>
                    </div>
                    <!--end instructor bio-->
                </div>

                <div class="row">
                    <div class="col-lg-12">

                    </div>
                    <!--end tab content-->
                </div>
            </div>
        </div>
    </div>
</section>
<!--end instructor profile area-->

<!-- start footer -->
<footer class="footer-area">
    <div class="footer-top-area">
        <div class="container">
            <div class="row">
                <!--start footer-widget-->
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-widget">
                        <div class="logo">
                            <a href="index-2.html">
                                <img src="${pageContext.request.contextPath}/img/logo/project_logo.png" alt="image" class="img-fluid">
                            </a>
                        </div>
                        <p>HealingLand is a leading platform for booking homestays in DaNang. We provide top-notch accommodations and experiences.</p>
                    </div>
                </div>
                <!--end footer-widget-->

                <!--start footer-widget-->
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-widget">
                        <h4>Quick Links</h4>
                        <ul>
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                            <li><a href="blog-page.html">Blog</a></li>
                        </ul>
                    </div>
                </div>
                <!--end footer-widget-->

                <!--start footer-widget-->
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-widget">
                        <h4>Our Services</h4>
                        <ul>
                            <li><a href="courses.html">Booking room</a></li>
                            <li><a href="webinars.html">Payment</a></li>
                            <li><a href="membership-plans.html">Memberships</a></li>
                        </ul>
                    </div>
                </div>
                <!--end footer-widget-->

                <!--start footer-widget-->
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer-widget">
                        <h4>Contact Us</h4>
                        <ul>
                            <li><i class="fa fa-map-marker"></i> 123 Street, DaNang, Vietnam</li>
                            <li><i class="fa fa-phone"></i> +98 012345 6789</li>
                            <li><i class="fa fa-envelope"></i> <a href="mailto:info@healingland.com">info@healingland.com</a></li>
                        </ul>
                    </div>
                </div>
                <!--end footer-widget-->
            </div>
        </div>
    </div>
    <!--end footer-top-area-->

    <!--start footer-bottom-area-->
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>&copy; 2024 HealingLand. All Rights Reserved.</p>
                </div>
            </div>
        </div>
    </div>
    <!--end footer-bottom-area-->
</footer>
<!--end footer-->

<!--jquery js-->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!--bootstrap js-->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!--owl carousel js-->
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<!--magnific popup js-->
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<!--meanmenu js-->
<script src="${pageContext.request.contextPath}/js/jquery.meanmenu.js"></script>
<!--form validator js-->
<script src="${pageContext.request.contextPath}/js/form-validator.min.js"></script>
<!--contact form js-->
<script src="${pageContext.request.contextPath}/js/contact-form-script.js"></script>
<!--ajaxchimp js-->
<script src="${pageContext.request.contextPath}/js/jquery.ajaxchimp.min.js"></script>
<!--custom js-->
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
</body>

</html>
