<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile - My Homestay</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f1f1f1;
        }
        .navbar-custom {
            background-color: #fff;
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }
        .navbar-custom .navbar-brand img {
            height: 40px;
        }
        .navbar-custom .navbar-nav .nav-link {
            color: #555;
        }
        .navbar-custom .navbar-nav .nav-link:hover {
            color: #d81b60;
        }
        .listing-setup {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-top: 20px;
        }
        .form-group label {
            font-weight: bold;
        }
        .btn-primary {
            background-color: #d81b60;
            border-color: #d81b60;
        }
        .btn-primary:hover {
            background-color: #c2185b;
            border-color: #c2185b;
        }
        .header {
            background-color: #d81b60;
            color: white;
            padding: 10px;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
            font-size: 20px;
            text-align: center;
        }
        .progress-indicator {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 20px 0;
        }
        .progress-indicator .step {
            text-align: center;
            position: relative;
        }
        .progress-indicator .step .icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: #f1f1f1;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 10px auto;
        }
        .progress-indicator .step.active .icon {
            background-color: #d81b60;
            color: white;
        }
        .progress-indicator .step.inactive .icon {
            background-color: #ccc;
            color: white;
        }
        .progress-indicator .step::after {
            content: '';
            position: absolute;
            top: 20px;
            left: 50%;
            width: calc(100% - 50px);
            height: 2px;
            background-color: #ddd;
            z-index: -1;
        }
        .progress-indicator .step:last-child::after {
            content: none;
        }
        .sidebar {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            margin-top: 20px;
        }
        .info-box {
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }
        .info-box h6 {
            font-weight: bold;
        }
        .tips-list {
            list-style-type: none;
            padding-left: 0;
        }
        .tips-list li {
            margin-bottom: 10px;
        }
        .custom-switch {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        .custom-switch input {
            margin-right: 10px;
        }
        .form-check-label a {
            color: #d81b60;
        }
        .stay-type {
            margin-bottom: 15px;
        }
        .stay-type .details {
            margin-left: 20px;
            color: #555;
        }
        .photos-header {
            background-color: #d81b60;
            color: white;
            padding: 10px;
            font-size: 20px;
            text-align: center;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }
        .photo-upload-box {
            border: 1px dashed #ddd;
            padding: 20px;
            text-align: center;
            border-radius: 8px;
            background-color: #f8f9fa;
            margin-bottom: 20px;
            position: relative;
        }
        .photo-upload-box input[type="file"] {
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            cursor: pointer;
        }
        .photo-upload-box img {
            max-width: 100%;
            height: auto;
        }
        .photo-upload-box button {
            margin-top: 10px;
        }
        .help-box {
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }
        .tips-box {
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }
        .tips-box ul {
            list-style-type: none;
            padding-left: 0;
        }
        .tips-box ul li {
            margin-bottom: 5px;
        }
        .btn-finish {
            background-color: #d81b60;
            border-color: #d81b60;
            color: white;
            font-weight: bold;
            padding: 10px 20px;
            display: block;
            margin: 20px auto;
            text-align: center;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="logo.png" alt="Homestay Logo">
            </a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">CONTACT HOSTS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">VND</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="user-avatar.png" alt="User Avatar" class="rounded-circle" height="30">
                            NGUY?N
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Dashboard</a>
                            <a class="dropdown-item" href="#">Inbox</a>
                            <a class="dropdown-item" href="#">Trips</a>
                            <a class="dropdown-item" href="#">Bookings</a>
                            <a class="dropdown-item" href="#">Verify Me</a>
                            <a class="dropdown-item" href="#">Invite Friends</a>
                            <a class="dropdown-item" href="#">List a Room</a>
                            <a class="dropdown-item" href="#">Account</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Logout</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="helpDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            HELP
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="helpDropdown">
                            <a class="dropdown-item" href="#">General</a>
                            <a class="dropdown-item" href="#">Hosts</a>
                            <a class="dropdown-item" href="#">Guests</a>
                            <a class="dropdown-item" href="#">Messaging</a>
                            <a class="dropdown-item" href="#">Reviews</a>
                            <a class="dropdown-item" href="#">Trust and Safety</a>
                            <a class="dropdown-item" href="#">Invite a Friend</a>
                            <a class="dropdown-item" href="#">Regulatory Compliance</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fas fa-search"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="listing-setup mx-auto">
            <div class="header">Profile</div>
            <div class="progress-indicator">
                <div class="step inactive">
                    <div class="icon"><i class="fas fa-home"></i></div>
                    <p>Home</p>
                </div>
                <div class="step inactive">
                    <div class="icon"><i class="fas fa-map-marker-alt"></i></div>
                    <p>Location</p>
                </div>
                <div class="step inactive">
                    <div class="icon"><i class="fas fa-calendar-alt"></i></div>
                    <p>Booking Preferences</p>
                </div>
                <div class="step inactive">
                    <div class="icon"><i class="fas fa-bed"></i></div>
                    <p>Rooms</p>
                </div>
                <div class="step inactive">
                    <div class="icon"><i class="fas fa-utensils"></i></div>
                    <p>Meals</p>
                </div>
                <div class="step inactive">
                    <div class="icon"><i class="fas fa-book"></i></div>
                    <p>Rules</p>
                </div>
                <div class="step inactive">
                    <div class="icon"><i class="fas fa-user"></i></div>
                    <p>Profile</p>
                </div>
                <div class="step active">
                    <div class="icon"><i class="fas fa-images"></i></div>
                    <p>Photos</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="listing-setup mx-auto">
                    <div class="photos-header">Photos</div>
                    <div class="photo-upload-box">
                        <h5>Your Profile Photo</h5>
                        <label class="btn btn-primary">
                            Upload a close-up photo of yourself
                            <input type="file">
                        </label>
                    </div>
                    <div class="photo-upload-box">
                        <h5>Bedroom 1</h5>
                        <label class="btn btn-primary">
                            Add Bedroom Photo
                            <input type="file">
                        </label>
                    </div>
                    <div class="photo-upload-box">
                        <h5>Add Photos</h5>
                        <p>Home or Neighbourhood</p>
                        <label class="btn btn-primary">
                            Add Photos
                            <input type="file">
                        </label>
                    </div>
                </div>
                <button class="btn-finish">Finish</button>
            </div>
            <div class="col-md-4">
                <div class="sidebar">
                    <div class="help-box">
                        <h6>Need Help Adding Photos?</h6>
                        <p>We can send you a free SMS to log you into your Homestay account on your mobile phone. <a href="#">Add photos from your phone</a></p>
                        <p>We can add your photos for you, just attach them in an email and send them to us. <a href="#">Email us with your photos</a></p>
                    </div>
                    <div class="tips-box">
                        <h6>Tips for Great Photos</h6>
                        <ul>
                            <li>Tidy up and remove any clutter!</li>
                            <li>Take photos during daytime or light up the room</li>
                            <li>Take your photos in landscape format</li>
                            <li>Highlight unique features in your home and surrounds</li>
                        </ul>
                    </div>
                    <div class="info-box">
                        <h6>Question? Get in Touch:</h6>
                        <p>Email us at <a href="mailto:hostsupport@homestay.com">hostsupport@homestay.com</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
