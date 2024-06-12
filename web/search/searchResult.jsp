<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="DAO.HomestayDAO"%>
<%@page import="model.Homestay"%>
<%@page import="java.util.List"%>
<c:set var="account" value="${sessionScope.account}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HealingLand</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .hero-section {
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.3)), url('${pageContext.request.contextPath}/img/home/home_banner.jpg') no-repeat center center/cover;
            height: 60vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-align: center;
        }
        .navbar-brand img {
            height: 50px;
        }
        .search {
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-select, .form-control, .btn-primary {
            border-radius: 5px;
        }
        .hotel-card {
            margin-bottom: 30px;
        }
        .hotel-card img {
            height: 200px;
            object-fit: cover;
        }
        .hotel-rating {
            background-color: #007bff;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 14px;
            position: absolute;
            top: 10px;
            right: 10px;
        }
        .card-body {
            position: relative;
        }
        .navbar-light .navbar-nav .nav-link {
            color: #007bff;
        }
        .navbar-light .navbar-nav .nav-link:hover {
            color: #0056b3;
        }
        .hero-content h1 {
            font-size: 3rem;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .hero-content form {
            margin-top: 20px;
        }
        .card-title a {
            text-decoration: none;
            color: #007bff;
        }
        .card-title a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/img/project_logo.jpg" alt="logo"/></a>
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

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="hero-content">
            <h1>Find Your Home away from Home</h1>
            <form class="row g-2 search mt-3 justify-content-center" action="../searchController" method="get">
                <div class="col-md-8">
                    <input type="text" class="form-control" name="search" placeholder="Search for a homestay...">
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-primary w-100">Search</button>
                </div>
            </form>
        </div>
    </section>

    <!-- Homestay Listings -->
    <div class="container mt-5">
        <div class="row">
            <c:forEach var="homestay" items="${homestays}">
                <div class="col-md-4 hotel-card">
                    <div class="card">
                        <img src="${homestay.img[0].url}" class="card-img-top" alt="${homestay.ht_name}">
                        <div class="hotel-rating">1</div>
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="${pageContext.request.contextPath}/search/homestayDetails.jsp">
                                    ${homestay.ht_name}
                                </a>
                            </h5>
                            <p class="card-text">${homestay.homestayAddress.district}</p>
                            <p class="card-text text-primary">VND 1 <small class="text-muted">Per night</small></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const today = new Date().toISOString().split('T')[0];
            document.getElementById('checkIn').setAttribute('min', today);
            document.getElementById('checkOut').setAttribute('min', today);
        });
    </script>
</body>
</html>
