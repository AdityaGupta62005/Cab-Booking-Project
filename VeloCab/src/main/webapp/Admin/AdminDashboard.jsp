<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles/adminPage.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .admin-header {
            background-color: #333;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .admin-container {
            display: flex;
            padding: 20px;
        }
        .sidebar {
            width: 250px;
            background-color: #333;
            padding: 20px;
            color: white;
            height: 100vh;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            margin-bottom: 10px;
        }
        .sidebar a:hover {
            background-color: #555;
            padding: 5px;
        }
        .main-content {
            flex-grow: 1;
            padding: 20px;
        }
        .section-title {
            font-size: 24px;
            margin-bottom: 10px;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .btn {
            padding: 10px 15px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <div class="admin-header">
        <h1>Admin Dashboard</h1>
    </div>

    <div class="admin-container">
        <div class="sidebar">
            <h2>Menu</h2>
            <a href="#bookings">Manage Bookings</a>
            <a href="#cars">Manage Cars</a>
            <a href="#drivers">Manage Drivers</a>
            <a href="#users">Manage Users</a>
        </div>

        <div class="main-content">
            <!-- Section for Bookings -->
            <div id="bookings">
                <h2 class="section-title">Manage Bookings</h2>
                <table>
                    <tr>
                        <th>Booking ID</th>
                        <th>User Name</th>
                        <th>Pickup Location</th>
                        <th>Destination</th>
                        <th>Pickup Date</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                    <tr>
                        <td>101</td>
                        <td>John Doe</td>
                        <td>Delhi</td>
                        <td>Agra</td>
                        <td>2024-09-25 09:00 AM</td>
                        <td>Confirmed</td>
                        <td><a href="#" class="btn">View</a> <a href="#" class="btn">Cancel</a></td>
                    </tr>
                    <!-- Add more rows dynamically -->
                </table>
            </div>

            <!-- Section for Cars -->
            <div id="cars">
                <h2 class="section-title">Manage Cars</h2>
                <table>
                    <tr>
                        <th>Car ID</th>
                        <th>Car Model</th>
                        <th>Type</th>
                        <th>Seats</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                    <tr>
                        <td>201</td>
                        <td>Maruti Dzire</td>
                        <td>Sedan</td>
                        <td>4</td>
                        <td>Available</td>
                        <td><a href="#" class="btn">Edit</a> <a href="#" class="btn">Remove</a></td>
                    </tr>
                    <!-- Add more rows dynamically -->
                </table>
            </div>

            <!-- Section for Drivers -->
            <div id="drivers">
                <h2 class="section-title">Manage Drivers</h2>
                <table>
                    <tr>
                        <th>Driver ID</th>
                        <th>Name</th>
                        <th>License</th>
                        <th>Phone Number</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                    <tr>
                        <td>301</td>
                        <td>Rahul Sharma</td>
                        <td>DLX123456</td>
                        <td>+91 9876543210</td>
                        <td>Active</td>
                        <td><a href="#" class="btn">Edit</a> <a href="#" class="btn">Suspend</a></td>
                    </tr>
                    <!-- Add more rows dynamically -->
                </table>
            </div>

            <!-- Section for Users -->
            <div id="users">
                <h2 class="section-title">Manage Users</h2>
                <table>
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                    <tr>
                        <td>401</td>
                        <td>Jane Smith</td>
                        <td>jane@example.com</td>
                        <td>+91 9876543210</td>
                        <td>Active</td>
                        <td><a href="#" class="btn">View</a> <a href="#" class="btn">Block</a></td>
                    </tr>
                    <!-- Add more rows dynamically -->
                </table>
            </div>
                    <!-- Add more rows dynamically -->
            </div>
        </div>
    </div>
</body>
</html>
