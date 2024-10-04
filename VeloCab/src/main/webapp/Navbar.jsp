<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" session="true"%>  <!-- Ensures session is available -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
    <link rel="stylesheet" href="css/Navbar.css">
</head>
<body>

    <!-- Sticky Navbar -->
    <div class="navbar">
        <!-- Left-side links -->
        <div class="navbar-brand" onclick="window.location.href='index.jsp'" style="">VeloCabs</div>
        <div class="navbar-links">
            <a href="#ride">Ride</a>
            <a href="cars_list.jsp">Cabs</a>
            <a href="#business">Business</a>

            <!-- Dropdown for 'About' -->
            <div class="dropdown">
                <a href="#" class="dropdown-toggle">About &#9662;</a>
                <div class="dropdown-content">
                    <a href="aboutus.jsp">About Us</a>
                    <a href="#our-team">Our Team</a>
                    <a href="#careers">Careers</a>
                </div>
            </div>
        </div>

        <!-- Right-side links -->
        <div class="navbar-right">
            <a href="#">🌐 EN</a>
            <a href="#">Help</a>

            <!-- Check if the user is logged in -->
            <%
                String userName = null;
                if (session != null) {  // Ensure session exists
                    userName = (String) session.getAttribute("user");
                }
                if (userName != null) {
            %>
            <div class="dropdown">
                <button class="dropdown-btn"><%= userName %></button>
                <div class="dropdown-content">
                    <a href="driverLandingPage.jsp">Drive</a>
                    <a href="#">Bookings</a>
                    <a href="logout.jsp">Sign out</a>
                </div>
            </div>
            <% } else { %>
            <button class="login-btn" onclick="window.location.href='login.jsp'">Login</button>   
            <button class="signup-btn" onclick="window.location.href='signup.jsp'">Sign up</button>
            <% } %>
        </div>
    </div>

</body>
</html>
