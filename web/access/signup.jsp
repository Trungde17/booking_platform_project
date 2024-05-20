<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/styleloginn.css" rel="stylesheet" type="text/css"/>
        <title>Login Form</title>
        <style>
            body {
                background: url('../img/danang.jpg') no-repeat center center fixed;
                background-size: cover;
                font-family: 'Open Sans', sans-serif;
            }
            .container {
                max-width: 500px;
                margin: 50px auto;
                padding: 20px;
                background: rgba(255, 255, 255, 0.9); /* White background with transparency */
                border-radius: 10px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            }
            h1 {
                text-align: center;
                margin-bottom: 20px;
                color: #333;
            }
            .form-control {
                display: flex;
                justify-content: space-between;    
                text-align: center;
                margin-bottom: 20px;
            }
            .form-control input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
            }
            .form-control small {
                color: #dc3545;
                display: none;
            }
            .btn-submit {
                width: 100%;
                padding: 10px;
                background: #007bff;
                border: none;
                color: #fff;
                border-radius: 5px;
                cursor: pointer;
            }
            .btn-submit:hover {
                background: #0056b3;
            }
            .signup-link {
                text-align: center;
                margin-top: 20px;
            }
            .signup-link a {
                color: #007bff;
                text-decoration: none;
            }
            .signup-link a:hover {
                text-decoration: underline;
            }
            .text-danger {
                color: #dc3545;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Sign Up</h1>
            <form action="SignUpConTrol" method="post" class="form-signup">
                <div class="form-control">
                    <div >
                         <input name="FirstName" id="username" type="text" placeholder="FirstName">
                    </div>
                    <div>
                         <input name="LastName" id="username" type="text" placeholder="LastName">
                    </div>
                    <small></small>
                </div>
                <div class="form-control">
                    <input name="email" id="email" type="email" placeholder="Email">
                    <small></small>
                </div>
                <div class="form-control">
                    <input name="pass" id="password" type="password" placeholder="Password">
                    <small></small>
                </div>
                <div class="form-control">
                    <input name="repass" id="confirm-password" type="password" placeholder="Confirm Password">
                    <small></small>
                </div>
                <div class="form-control">
                    <input name="phone" id="phone" type="tel" placeholder="Phone Number" pattern="[0]{1}[0-9]{9}">
                    <small></small>
                </div>
                <p class="text-danger">${mess}</p>
                <button class="btn-submit" type="submit">Sign up</button>
                <div class="signup-link">
                    You have account?
                    <a href="login.jsp">Log in</a>
                </div>
            </form>
            <br>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            function toggleResetPswd(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle(); // display:block or none
                $('#logreg-forms .form-reset').toggle(); // display:block or none
            }

            function toggleSignUp(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle(); // display:block or none
                $('#logreg-forms .form-signup').toggle(); // display:block or none
            }

            $(() => {
                // Login Register Form
                $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                $('#logreg-forms #btn-signup').click(toggleSignUp);
                $('#logreg-forms #cancel_signup').click(toggleSignUp);
            });

            $(document).ready(function() {
                $("#check-btn").click(function() {
                    var email = $("#email-input").val();
                    if (isValidEmail(email)) {
                        var domain = email.split("@")[1];
                        $.ajax({
                            url: "https://api.trumail.io/v2/lookups/json?email=" + email,
                            type: "GET",
                            dataType: "json",
                            success: function(data) {
                                if (data.deliverable) {
                                    alert(email + " is a valid email address.");
                                } else {
                                    alert(email + " is not a valid email address.");
                                }
                            },
                            error: function(jqXHR, textStatus, errorThrown) {
                                alert("Error: " + textStatus + " - " + errorThrown);
                            }
                        });
                    } else {
                        alert("Please enter a valid email address.");
                    }
                });

                function isValidEmail(email) {
                    var emailRegex = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    return emailRegex.test(email);
                }
            });
        </script>
    </body>
</html>
