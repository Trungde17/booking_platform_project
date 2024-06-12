<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Homestay</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <h4 class="text-danger">My Homestay</h4>
                    <p>Homestay Da Nang - House in C?m L?, Da Nang</p>
                    <div class="list-group" id="list-tab">
                        <a href="#" class="list-group-item list-group-item-action active">Homestay</a>
                        <a href="#" class="list-group-item list-group-item-action">Location</a>
                        <a href="#" class="list-group-item list-group-item-action">Description</a>
                        <a href="#" class="list-group-item list-group-item-action">Rooms</a>
                        <a href="#" class="list-group-item list-group-item-action">Prices</a>
                        <a href="#" class="list-group-item list-group-item-action">Calendar</a>
                        <a href="#" class="list-group-item list-group-item-action">Meals</a>
                        <a href="#" class="list-group-item list-group-item-action">Rules</a>
                    </div>
                </div>
            </nav>

            <!-- Main content -->
            <main role="main" class="col-md-7 ml-sm-auto col-lg-7 px-4">
                <div class="pt-3 pb-2 mb-3">
                    <button class="btn btn-primary float-right mb-3">Edit Photos</button>
                    <div id="homestayCarousel" class="carousel slide mb-3" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="your-image-path-1.jpg" class="d-block w-100" alt="Homestay Image 1">
                            </div>
                            <div class="carousel-item">
                                <img src="your-image-path-2.jpg" class="d-block w-100" alt="Homestay Image 2">
                            </div>
                            <div class="carousel-item">
                                <img src="your-image-path-3.jpg" class="d-block w-100" alt="Homestay Image 3">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#homestayCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#homestayCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <h2>About the Homestay</h2>
                    <p>Is your house in the town, city center, suburb, or countryside?</p>
                    <p>Who else lives in the house with you?</p>
                    <p>What types of guest rooms are available?</p>
                    <p>What kinds of living areas/outdoor spaces are available?</p>
                    <p>Do you or your family have any special interests?</p>
                    <p>What other languages are spoken at home?</p>
                    <div>
                        <h5>House Facilities</h5>
                        <ul class="list-unstyled">
                            <li><i class="fas fa-check text-success"></i> Garden</li>
                            <li><i class="fas fa-check text-success"></i> Bikes for use</li>
                            <li><i class="fas fa-check text-success"></i> Air Conditioning</li>
                        </ul>
                    </div>
                </div>
            </main>

            <!-- Profile section -->
            <aside class="col-lg-3 col-md-5 px-4">
                <div class="profile-section bg-light p-3 rounded">
                    <button class="btn btn-primary float-right mb-3">Edit Details</button>
                    <h4>Meet Van Hau</h4>
                    <img src="your-profile-image-path.jpg" class="img-fluid rounded-circle mb-3" alt="Profile Image">
                    <ul class="list-unstyled">
                        <li><strong>Family Hobbies:</strong> Blogging, Fashion design, Tennis</li>
                        <li><strong>Welcomes:</strong> Males, Females, Couples, Families, Students</li>
                        <li><strong>Allows Smoking</strong></li>
                        <li><strong>Hosting Guests Since 2021</strong></li>
                    </ul>
                    <div>
                        <h5>Host Verifications</h5>
                        <ul class="list-unstyled">
                            <li><i class="fas fa-envelope"></i> Email Address</li>
                            <li><i class="fas fa-mobile-alt"></i> Mobile Phone Number</li>
                        </ul>
                    </div>
                </div>
            </aside>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const listGroupItems = document.querySelectorAll("#list-tab .list-group-item");
            listGroupItems.forEach(item => {
                item.addEventListener("click", function() {
                    listGroupItems.forEach(i => i.classList.remove("active"));
                    this.classList.add("active");
                });
            });
        });
    </script>
</body>

</html>
