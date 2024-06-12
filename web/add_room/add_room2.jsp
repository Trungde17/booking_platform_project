<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Homestay</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styless.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav id="sidebar" class="col-md-3 col-lg-2 d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <h4 class="text-danger">My Homestay</h4>
                    <p>Homestay Da Nang - House in Cam Le, Da Nang</p>
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
                    <div class="row" id="image-container">
                        <div class="col-md-6">
                            <div class="card">
                                <img src="your-image-path-1.jpg" class="card-img-top" id="image1" alt="Homestay Image 1">
                                <div class="card-body">
                                    <h5 class="card-title">BEDROOM</h5>
                                    <p class="card-text">Room 1</p>
                                    <input type="file" class="form-control-file mb-2" onchange="previewImage(event, 'image1')">
                                    <button class="btn btn-primary" onclick="editPhotoTitle(this)">Add photo title</button>
                                    <button class="btn btn-secondary">Edit</button>
                                    <button class="btn btn-danger" onclick="deletePhoto(this)">Delete</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="card">
                                <img src="your-image-path-2.jpg" class="card-img-top" id="image2" alt="Homestay Image 2">
                                <div class="card-body">
                                    <h5 class="card-title">Add photo title</h5>
                                    <input type="file" class="form-control-file mb-2" onchange="previewImage(event, 'image2')">
                                    <button class="btn btn-primary" onclick="editPhotoTitle(this)">Add</button>
                                    <button class="btn btn-secondary">Edit</button>
                                    <button class="btn btn-danger" onclick="deletePhoto(this)">Delete</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" id="add-photo-card">
                            <div class="card">
                                <div class="card-body text-center">
                                    <h5 class="card-title">Add Photos</h5>
                                    <p class="card-text">Home or Neighbourhood</p>
                                    <input type="file" class="form-control-file mb-2" id="new-photo-input">
                                    <button class="btn btn-primary" onclick="addPhoto()">Add Photos</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="#" class="btn btn-danger">Go Back</a>
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

        function previewImage(event, imageId) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById(imageId);
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }

        function addPhoto() {
            const container = document.getElementById('image-container');
            const newPhotoInput = document.getElementById('new-photo-input');

            if (newPhotoInput.files && newPhotoInput.files[0]) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    const colDiv = document.createElement('div');
                    colDiv.className = 'col-md-6';
                    const cardDiv = document.createElement('div');
                    cardDiv.className = 'card';
                    const img = document.createElement('img');
                    img.className = 'card-img-top';
                    img.src = e.target.result;
                    img.alt = 'New Photo';
                    const cardBodyDiv = document.createElement('div');
                    cardBodyDiv.className = 'card-body';
                    const title = document.createElement('h5');
                    title.className = 'card-title';
                    title.innerText = 'Add photo title';
                    const fileInput = document.createElement('input');
                    fileInput.type = 'file';
                    fileInput.className = 'form-control-file mb-2';
                    fileInput.onchange = function(event) {
                        previewImage(event, img);
                    };
                    const addBtn = document.createElement('button');
                    addBtn.className = 'btn btn-primary';
                    addBtn.innerText = 'Add';
                    addBtn.onclick = function() {
                        editPhotoTitle(addBtn);
                    };
                    const editBtn = document.createElement('button');
                    editBtn.className = 'btn btn-secondary';
                    editBtn.innerText = 'Edit';
                    const deleteBtn = document.createElement('button');
                    deleteBtn.className = 'btn btn-danger';
                    deleteBtn.innerText = 'Delete';
                    deleteBtn.onclick = function() {
                        container.removeChild(colDiv);
                    };
                    cardBodyDiv.appendChild(title);
                    cardBodyDiv.appendChild(fileInput);
                    cardBodyDiv.appendChild(addBtn);
                    cardBodyDiv.appendChild(editBtn);
                    cardBodyDiv.appendChild(deleteBtn);
                    cardDiv.appendChild(img);
                    cardDiv.appendChild(cardBodyDiv);
                    colDiv.appendChild(cardDiv);
                    container.insertBefore(colDiv, document.getElementById('add-photo-card').parentElement);
                };
                reader.readAsDataURL(newPhotoInput.files[0]);
            }
        }

        function editPhotoTitle(button) {
            const title = button.parentNode.querySelector('.card-title');
            const newTitle = prompt("Enter new photo title:", title.innerText);
            if (newTitle !== null) {
                title.innerText = newTitle;
            }
        }

        function deletePhoto(button) {
            const card = button.closest('.col-md-6');
            card.remove();
        }
    </script>
</body>

</html>
