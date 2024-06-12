<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Booking Homestay</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css" />
</head>
<body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div class="bg-dark border-right" id="sidebar-wrapper">
            <div class="sidebar-heading text-white">Admin Dashboard</div>
            <div class="list-group list-group-flush">
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Dashboard</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Yêu cầu đăng ký</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Users</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Properties</a>
                <a href="#" class="list-group-item list-group-item-action bg-dark text-white">Settings</a>
            </div>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                <button class="btn btn-primary" id="menu-toggle">
                    <i class="bi bi-list"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Admin
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Profile</a>
                                <a class="dropdown-item" href="#">Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="container-fluid">
                <h1 class="mt-4">Welcome to the Admin Dashboard</h1>
                <p>This is the admin panel for managing bookings, users, and properties.</p>

                <!-- Yêu Cầu Đăng Ký Homestay -->
                <div id="requests" class="mt-4">
                    <h2>Yêu Cầu Đăng Ký Homestay</h2>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Tên Chủ Nhà</th>
                                <th>Địa Chỉ</th>
                                <th>Ngày Đăng Ký</th>
                                <th>Trạng Thái</th>
                            </tr>
                        </thead>
                        <tbody>
                          
                            <!-- More rows -->
                        </tbody>
                    </table>
                </div>

                <!-- Modal for Homestay Details -->
                <div class="modal fade" id="homestayModal" tabindex="-1" aria-labelledby="homestayModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="homestayModalLabel">Thông Tin Homestay</h5>
                                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <p><strong>Tên Chủ Nhà:</strong> <span id="homestayOwner"></span></p>
                                <p><strong>Địa Chỉ:</strong> <span id="homestayAddress"></span></p>
                                <p><strong>Ngày Đăng Ký:</strong> <span id="homestayDate"></span></p>
                                <p><strong>Trạng Thái:</strong> <span id="homestayStatus"></span></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-success" id="approveBtn">Duyệt</button>
                                <button type="button" class="btn btn-danger" id="rejectBtn">Từ chối</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End of Modal -->
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->

    <!-- Bootstrap and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        // Toggle sidebar
        $("#menu-toggle").click(function(e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });

        // Show modal with homestay details
        $(document).ready(function() {
            $('.request-row').click(function() {
                const requestId = $(this).data('id');
                // Replace with actual data fetching logic
                const requestInfo = {
                    owner: 'Nguyễn Văn A',
                    address: '123 Đường ABC, Quận 1, TP. HCM',
                    date: '01/06/2024',
                    status: 'Chờ duyệt'
                };
                // Populate modal with data
                $('#homestayOwner').text(requestInfo.owner);
                $('#homestayAddress').text(requestInfo.address);
                $('#homestayDate').text(requestInfo.date);
                $('#homestayStatus').text(requestInfo.status);
            });

            $('#approveBtn').click(function() {
                alert('Yêu cầu đã được duyệt');
                // Add API call to approve request
                $('#homestayModal').modal('hide');
            });

            $('#rejectBtn').click(function() {
                alert('Yêu cầu đã bị từ chối');
                // Add API call to reject request
                $('#homestayModal').modal('hide');
            });
        });
    </script>
</body>
</html>
