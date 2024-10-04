<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver Management</title>
    <!-- Link to Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Header Styles */
        header {
            background-color: #007bff;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        header h1 {
            color: #fff;
            font-weight: 600;
            font-size: 2rem;
        }

        /* Navigation */
        nav ul {
            list-style-type: none;
            margin-top: 10px;
        }

        nav ul li {
            display: inline-block;
            margin-right: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: #fff;
            font-weight: 500;
            font-size: 1.1rem;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #ffd700;
        }

        /* Content Section */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 50px 20px;
            text-align: center;
        }

        .content h2 {
            font-size: 2.5rem;
            color: #007bff;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .content p {
            font-size: 1.2rem;
            color: #555;
            margin-bottom: 40px;
            line-height: 1.6;
        }

        /* Button Styles */
        .buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .btn {
            display: inline-block;
            padding: 15px 30px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            font-size: 1.1rem;
            font-weight: 500;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 768px) {
            .content h2 {
                font-size: 2rem;
            }

            .buttons {
                flex-direction: column;
                gap: 15px;
            }

            .btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Driver Management System</h1>
        <nav>
            <ul>
                <li><a href="driverLandingPage.jsp">Home</a></li>
                <li><a href="driverForm.jsp">Add Driver</a></li>
                <li><a href="viewDrivers.jsp">View Drivers</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <div class="content">
            <h2>Welcome to the Driver Management System</h2>
            <p>
                Manage your cab drivers efficiently by adding new drivers and viewing existing driver details.
                Keep the data up-to-date for a seamless experience.
            </p>
            <div class="buttons">
                <a href="driverForm.jsp" class="btn">Add New Driver</a>
                <a href="viewDrivers.jsp" class="btn">View Driver List</a>
            </div>
        </div>
    </div>
</body>
</html>
