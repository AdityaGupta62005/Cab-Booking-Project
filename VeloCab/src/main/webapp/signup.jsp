<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up - VeloCabs</title>
	<link rel="stylesheet" href="css/signup.css">
    <script>
      function validateSignupForm() {
        var name = document.getElementById("name").value;
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;

        if (name === "" || email === "" || password === "") {
          alert("Please fill in all fields.");
          return false;
        }

        if (password.length < 6) {
          alert("Password must be at least 6 characters long.");
          return false;
        }

        return true;
      }
    </script>
  </head>
  <body>
    <div class="signup-container">
      <div class="signup-box">
        <h2>Sign Up for VeloCabs</h2>
        <form id="signupForm" action="signup.jsp" method="post" onsubmit="return validateSignupForm()">
          <div class="input-group">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" required />
          </div>
          <div class="input-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required />
          </div>
          <div class="input-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required />
          </div>
          <button type="submit" class="btn">Sign Up</button>
        </form>

        <p>Already have an account? <a href="login.jsp">Login here</a></p>

        <% 
          // Handle form submission and data insertion into MySQL here
          String name = request.getParameter("name");
          String email = request.getParameter("email");
          String password = request.getParameter("password");

          if (name != null && email != null && password != null) {
              // Database connection setup
              String jdbcURL = "jdbc:mysql://localhost:3306/velocab"; // Update with your DB name
              String jdbcUsername = "root"; // Update with your MySQL username
              String jdbcPassword = "1234"; // Update with your MySQL password
              String INSERT_USERS_SQL = "INSERT INTO signup (name, email, password) VALUES (?, ?, ?)";

              Connection connection = null;
              PreparedStatement preparedStatement = null;

              try {
                  // Load the MySQL JDBC Driver
                  Class.forName("com.mysql.jdbc.Driver");

                  // Establish a connection
                  connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

                  // Prepare the statement for inserting user data
                  preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
                  preparedStatement.setString(1, name);
                  preparedStatement.setString(2, email);
                  preparedStatement.setString(3, password);

                  // Execute the query
                  int row = preparedStatement.executeUpdate();

                  if (row > 0) {
                      out.println("<p style='color: green;'>Sign up successful! <a href='login.jsp'>Login now</a>.</p>");
                  } else {
                      out.println("<p style='color: red;'>Failed to sign up. Please try again.</p>");
                  }

              } catch (Exception e) {
                  out.println("<p style='color: red;'>An error occurred: " + e.getMessage() + "</p>");
                  e.printStackTrace();
              } finally {
                  // Close the resources
                  if (preparedStatement != null) try { preparedStatement.close(); } catch (SQLException ignore) {}
                  if (connection != null) try { connection.close(); } catch (SQLException ignore) {}
              }
          }
        %>
      </div>
    </div>
  </body>
</html>

