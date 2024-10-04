<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - VeloCabs</title>
    <link rel="stylesheet" href="css/login.css">
    <script>
      function validateLoginForm() {
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;

        if (email === "" || password === "") {
          alert("Please fill in all fields.");
          return false;
        }
        return true;
      }
    </script>
  </head>
  <body>
    <div class="login-container">
      <div class="login-box">
        <h2>Login to VeloCabs</h2>
        <form
          id="loginForm"
          method="post"
          action="LoginServlet"
          onsubmit="return validateLoginForm()"
        >
          <div class="input-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required />
          </div>
          <div class="input-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required />
          </div>
          <button type="submit" class="btn">Login</button>
        </form>
        <p>Don't have an account? <a href="signup.jsp">Sign up</a></p>
        <% 
          // Display error message if any
          if (request.getAttribute("errorMessage") != null) {
        %>
          <h3 style="color:red;"><%= request.getAttribute("errorMessage") %></h3>
        <% 
          }
        %>
      </div>
    </div>
  </body>
</html>
