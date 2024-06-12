<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room - My Homestay</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
        .btn-add-room {
            background-color: #007bff;
            color: white;
            margin-bottom: 20px;
        }
        .btn-add-room:hover {
            background-color: #0056b3;
            color: white;
        }
        .room-form {
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #fff;
            display: none;
        }
        .price-table {
            margin-top: 20px;
            background-color: #f8f9fa;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
        }
        .room-item {
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }
        .btn-continue {
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
            <button class="btn btn-add-room" onclick="toggleForm()">+ Add Room</button>
            <a href="#" class="float-right" style="margin-top: -40px;">Update Schedule/Seasonal Pricing</a>
            <div class="room-form" id="roomForm">
                <form onsubmit="addRoom(event)">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="roomName">Room Name *</label>
                                <input type="text" class="form-control" id="roomName" placeholder="Room 1" required>
                            </div>
                            <div class="form-group">
                                <label for="bedType">Bed Type *</label>
                                <select class="form-control" id="bedType" required>
                                    <option>Double bed</option>
                                    <option>Single bed</option>
                                    <option>Bunk bed</option>
                                    <option>Sofa bed</option>
                                    <!-- Add more bed types as needed -->
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="guestNumber">Number of Guests *</label>
                                <select class="form-control" id="guestNumber" required>
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <!-- Add more options as needed -->
                                </select>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                </form>
            </div>
            <div id="roomList">
                <!-- Room items will be added here dynamically -->
            </div>
            <button class="btn-continue">Continue</button>
        </div>
    </div>
    <script>
        function toggleForm() {
            var form = document.getElementById('roomForm');
            if (form.style.display === 'none' || form.style.display === '') {
                form.style.display = 'block';
            } else {
                form.style.display = 'none';
            }
        }

        function addRoom(event) {
            event.preventDefault();
            var roomName = document.getElementById('roomName').value;
            var bedType = document.getElementById('bedType').value;
            var guestNumber = document.getElementById('guestNumber').value;

            var roomList = document.getElementById('roomList');
            var roomItem = document.createElement('div');
            roomItem.classList.add('room-item');

            var roomDetails = `
                <h5>${roomName}</h5>
                <p><strong>${bedType}</strong> - Sleeps ${guestNumber} guests</p>
                <a href="#" class="btn btn-link">Edit Details</a>
            `;

            roomItem.innerHTML = roomDetails;
            roomList.appendChild(roomItem);

            document.getElementById('roomForm').reset();
            toggleForm();
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
