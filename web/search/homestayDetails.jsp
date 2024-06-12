<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homestay in Da Nang</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .homestay-header {
            background-image: url('../img/login/signup_bg.jpg'); /* replace with your image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: white;
            text-align: center;
            padding: 150px 0; /* Adjust the padding to control the header height */
        }
        .homestay-header h1 {
            font-size: 3em;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add text shadow for better readability */
        }
        .homestay-header p {
            font-size: 1.5em;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5); /* Add text shadow for better readability */
        }
        .homestay-header .price {
            font-size: 1.8em;
            font-weight: bold;
            margin: 20px 0;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5); /* Add text shadow for better readability */
        }
        .meet-kitty {
            text-align: center;
            margin-top: 20px;
        }
        .meet-kitty img {
            border-radius: 50%;
        }
        .house-details {
            margin-top: 20px;
        }
        .navbar-brand img {
            max-height: 50px;
        }
        .navbar-nav .nav-link {
            color: #007bff; /* Match the color of the links in the provided image */
        }
        .carousel-item img {
            max-width: 50%; /* Adjust the size as needed */
            height: auto;
            margin: 0 auto; /* Center the image */
        }
        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: rgba(0,0,0,0.5);
            border-radius: 50%;
        }
    </style>
</head>
<body>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="account" value="${sessionScope.account}"/>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/img/project_logo.jpg" alt="HealingLand Logo"/></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Destinations</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Inspire Me</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Help</a>
                    </li>
                    <c:if test="${account!=null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Your Homestay</a>
                    </li>
                    </c:if>
                    <c:if test="${account==null}">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/access/signup.jsp">Sign Up</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/access/login.jsp">Log In</a>
                        </li>
                    </c:if>
                    <c:if test="${account!=null}">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/account/personal_profile.jsp">${account.getFirst_name()}</a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header Section -->
    <header class="homestay-header mt-5">
        <div class="container">
            <h1>Lovely Family from Da Nang - Vietnam</h1>
            <p>Homestay in Da Nang, Vietnam</p>
            <p class="price">From 635,971 VND per night</p>
            <button class="btn btn-success">Check Availability</button>
        </div>
    </header>

    <!-- Meet Kitty Section -->
    <div class="container meet-kitty mt-5">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-body">
                        <img id="avatar_img" src="${pageContext.request.contextPath}/processimg" alt="Kitty" class="img-fluid rounded-circle" width="150">
                        <h5 class="card-title">Meet Kitty</h5>
                        <p>Hosting Guests Since 2011</p>
                        <p>
                            <span class="text-danger">&#10084;</span>
                            <span class="text-danger">&#10084;</span>
                            <span class="text-danger">&#10084;</span>
                            <span class="text-danger">&#10084;</span>
                            <span class="text-danger">&#10084;</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- About the Homestay Section -->
    <div class="container house-details">
        <h2>About the Homestay</h2>
        <p>We are a 5 member family with dad, mom, 2 my brothers and me.</p>
        <p>We are hosting people from all over the world for more than 4 years. All family members can speak English. I can speak Japanese also. We are glad to meet and make friends with all of you and we try our best so that you have a great time in our hometown.</p>
        <p>You will have your own room with bathroom. Also feel free to use kitchen, living room and other shared space.</p>
        <p>Our house is in the central of the city. 10 minutes from Airport and train station by car. 10 minutes on foot to Han bridge & Dragon bridge and beautiful beach.</p>
        <p>We are looking forward to seeing you soon.</p>
    </div>

    <!-- Facilities Section -->
    <div class="container">
        <h3>House Facilities</h3>
        <ul>
            <li>Garden</li>
            <li>Bikes for use</li>
            <li>TV</li>
            <li>Internet Access</li>
            <li>Laundry</li>
            <li>Parking</li>
        </ul>
    </div>

    <!-- Pets Section -->
    <div class="container">
        <h3>My Pets</h3>
        <p>Cat</p>
    </div>

    <!-- Carousel Section -->
    <div id="carouselExampleControls" class="carousel slide mt-5" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../img/home1.jpg" class="d-block w-50" alt="Image 1">
            </div>
            <div class="carousel-item">
                <img src="../img/home2.jpg" class="d-block w-50" alt="Image 2">
            </div>
            <div class="carousel-item">
                <img src="../img/home3.jpg" class="d-block w-50" alt="Image 3">
            </div>
            <!-- Add more carousel items as needed -->
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
