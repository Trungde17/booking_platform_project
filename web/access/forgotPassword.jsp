<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/styleloginn.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <title>Forget Password</title>
        <style>
            body {
                background: url('../img/homestay.jpg') no-repeat center center fixed;
                background-size: cover;
                font-family: 'Open Sans', sans-serif;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .container {
                max-width: 500px;
                width: 100%;
                background: rgba(255, 255, 255, 0.9);
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            }
            h1 {
                text-align: center;
                margin-bottom: 20px;
                color: #333;
            }
            .form-control {
                margin-bottom: 20px;
                position: relative;
            }
            .form-control input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
                box-sizing: border-box;
            }
            .form-control small {
                color: #dc3545;
                position: absolute;
                bottom: -20px;
                left: 10px;
                display: none;
            }
            .text-danger {
                color: #dc3545;
                margin-left: 12px;
                text-align: center;
            }
            .card-footer {
                display: flex;
                justify-content: space-between;
                align-items: center;
                background-color: transparent;
                border-top: none;
                padding-top: 20px;
            }
            .card-footer .btn {
                flex: 1;
                margin: 0px 50px;
            }
            .btn-success {
                width: 100%;
                padding: 10px;
                background: #007bff;
                border: none;
                color: #fff;
                border-radius: 5px;
                cursor: pointer;
            }
            .btn-success:hover {
                background: #0056b3;
            }
            .btn-danger {
                color: #007bff;
                margin-left: 500px;
            }
            .btn-danger:hover {
                color:blue;
                
            }
            
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Forget Password</h1>
            <form action="ForgetPass" method="POST">
                <div class="form-control">
                    <input type="text" name="user" placeholder="Enter Username" id="username-for-pass" required>
                </div>
                <div class="form-control">
                    <input type="email" name="email" placeholder="Enter Email" id="email-for-pass" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                    <small>Invalid email address</small>
                </div>
                <p class="text-danger">${mess}</p>
                <div class="card-footer">
                    <button class="btn btn-success" type="submit">Change Password</button>
                    <a href="login.jsp" class="btn btn-danger">Login</a>
                </div>
            </form>
        </div>
        <script src="app.js"></script>
    </body>
</html>
