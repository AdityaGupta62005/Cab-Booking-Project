<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Drivers</title>
    
    <!-- External Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    
    <!-- External CSS (if needed) -->
    <link rel="stylesheet" href="css/style.css">
    
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f4f9;
            color: #333;
            padding: 20px;
        }

        /* Header Styling */
        header {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 2.5rem;
            font-weight: 600;
        }

        /* Main Container */
        .container {
            max-width: 1200px;
            margin: 40px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 1rem;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 16px;
            text-align: left;
            transition: background-color 0.3s ease;
        }

        th {
            background-color: #007bff;
            color: white;
            font-weight: 500;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Table Hover Effect */
        tbody tr:hover td {
            background-color: #e0f7fa;
        }

        /* Title Styling */
        h2 {
            text-align: center;
            font-size: 2rem;
            color: #007bff;
            font-weight: 500;
            margin-bottom: 20px;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 768px) {
            body {
                padding: 10px;
            }

            header h1 {
                font-size: 2rem;
            }

            .container {
                padding: 15px;
            }

            table {
                font-size: 0.9rem;
            }

            th, td {
                padding: 10px;
            }
        }

        /* Subtle Button Effect for Future Use */
        .btn {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <header>
        <h1>Driver Management</h1>
    </header>

    <div class="container">
        <h2>Registered Drivers</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>License Number</th>
                    <th>Cab Type</th>
                    <th>Experience (Years)</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // JDBC code to fetch driver data from database
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        java.sql.Connection conn = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/velocab", "root", "1234");
                        java.sql.Statement stmt = conn.createStatement();
                        java.sql.ResultSet rs = stmt.executeQuery("SELECT * FROM drivers");

                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getInt("driver_id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("phone") %></td>
                    <td><%= rs.getString("license_no") %></td>
                    <td><%= rs.getString("cab_type") %></td>
                    <td><%= rs.getInt("experience") %></td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
