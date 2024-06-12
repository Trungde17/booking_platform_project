<div class="card mb-4">
    <div class="card-header">Approve Booking</div>
    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Booking ID</th>
                    <th scope="col">Homestay ID</th>
                    <th scope="col">Room ID</th>
                    <th scope="col">Guest Name</th>
                    <th scope="col">Check-in Date</th>
                    <th scope="col">Check-out Date</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example rows, these should be dynamically generated with server-side code -->
                <tr>
                    <td>001</td>
                    <td>HS001</td>
                    <td>RM001</td>
                    <td>John Doe</td>
                    <td>2024-06-10</td>
                    <td>2024-06-15</td>
                    <td>
                        <button class="btn btn-success btn-sm action-button">Approve</button>
                        <button class="btn btn-danger btn-sm action-button">Reject</button>
                    </td>
                </tr>
                <tr>
                    <td>002</td>
                    <td>HS002</td>
                    <td>RM002</td>
                    <td>Jane Smith</td>
                    <td>2024-06-12</td>
                    <td>2024-06-18</td>
                    <td>
                        <button class="btn btn-success btn-sm action-button">Approve</button>
                        <button class="btn btn-danger btn-sm action-button">Reject</button>
                    </td>
                </tr>
                <!-- Add more rows as needed -->
            </tbody>
        </table>
    </div>
</div>

<style>
    .action-button {
        width: 100px; /* Set a fixed width */
    }
</style>
