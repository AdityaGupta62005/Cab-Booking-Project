<%@ page session="true" %> 
<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VeloCab</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/faq.css">

</head>
<body>

    <!-- Include Navbar -->
    <%@ include file="Navbar.jsp" %>

    <!-- Main Content -->
    <pre>                   
    
    
    
    </pre>
    <h2 align="center">Welcome, <%= user %>!</h2>

    <!-- Include body content -->
    <%@ include file="body.jsp" %>

    <!-- Include Footer -->
    <%@ include file="footer.jsp" %>

</body>
</html>
