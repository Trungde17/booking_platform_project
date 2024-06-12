<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room - My Homestay</title>
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
        .header {
            background-color: #d81b60;
            color: white;
            padding: 10px;
            font-size: 20px;
            text-align: center;
            border-top-left-radius: 8px;
            border-top-right-radius: 8px;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-control {
            margin-bottom: 15px;
        }
        .btn-primary {
            background-color: #d81b60;
            border-color: #d81b60;
        }
        .btn-primary:hover {
            background-color: #c2185b;
            border-color: #c2185b;
        }
        .btn-link {
            color: #d81b60;
        }
        .btn-link:hover {
            color: #c2185b;
        }
        .room-form {
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #fff;
        }
        .price-table {
            margin-top: 20px;
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
        }
        .btn-add {
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
    <div class="container">
        <div class="listing-setup mx-auto">
            <div class="header">Room</div>
            <div class="room-form">
                <form id="roomForm">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="bathroomType">Bathroom Type *</label>
                                <select class="form-control" id="bathroomType" required>
                                    <option>Private bathroom (in room)</option>
                                    <option>Shared with family/other guests</option>
                                    <option>Private (for guests only)</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="currency">Currency *</label>
                                <select class="form-control" id="currency" required>
                                    <option>Vietnamese Dong (VND)</option>
                                    <option>US Dollar (USD)</option>
                                    <option>Euro (EUR)</option>
                                    <option>Japanese Yen (JPY)</option>
                                    <!-- Add more currencies as needed -->
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="guestNumber">Number of Guests *</label>
                                <select class="form-control" id="guestNumber" required onchange="updatePriceTable()">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <!-- Add more options as needed -->
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="price-table" id="priceTable">
                        <h5>Room Pricing</h5>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Price for 1 Person</th>
                                    <th id="extraHeader" style="display: none;">Price for 2+ Persons</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="text" class="form-control" placeholder="Per Night (VND)"></td>
                                    <td id="extraPriceNight" style="display: none;"><input type="text" class="form-control" placeholder="600000 VND"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control" placeholder="Per Week (VND)"></td>
                                    <td id="extraPriceWeek" style="display: none;"><input type="text" class="form-control" placeholder="2400000 VND"></td>
                                </tr>
                                <tr>
                                    <td><input type="text" class="form-control" placeholder="Per Month (VND)"></td>
                                    <td id="extraPriceMonth" style="display: none;"><input type="text" class="form-control" placeholder="9000000 VND"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                </form>
            </div>
        </div>
        <button class="btn-add">Add</button>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function updatePriceTable() {
            var guestNumber = document.getElementById('guestNumber').value;
            var extraHeader = document.getElementById('extraHeader');
            var extraPriceNight = document.getElementById('extraPriceNight');
            var extraPriceWeek = document.getElementById('extraPriceWeek');
            var extraPriceMonth = document.getElementById('extraPriceMonth');
            
            if (guestNumber > 1) {
                extraHeader.style.display = '';
                extraPriceNight.style.display = '';
                extraPriceWeek.style.display = '';
                extraPriceMonth.style.display = '';
            } else {
                extraHeader.style.display = 'none';
                extraPriceNight.style.display = 'none';
                extraPriceWeek.style.display = 'none';
                extraPriceMonth.style.display = 'none';
            }
        }
    </script>
</body>
</html>
