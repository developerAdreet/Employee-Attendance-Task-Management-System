<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        height: 100vh;
        margin: 0;
        font-family: Arial, sans-serif;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        background-image: url("https://img.freepik.com/free-vector/flat-design-polygonal-background_23-2148900723.jpg");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
   
    }

    h1 {
        margin-bottom: 30px;
        color: #00ffcc;
        text-align: center;
    }

    .success-message {
        background-color: #222;
        border: 1px solid #00ffcc;
        padding: 15px 25px;
        border-radius: 8px;
        margin-bottom: 20px;
        font-size: 1.2em;
        color: #00ffcc;
    }

    .link-container {
        display: flex;
        flex-direction: column;
        gap: 15px;
        align-items: center;
    }

    a {
        text-decoration: none;
        background-color: #333;
        color: white;
        padding: 10px 25px;
        border-radius: 5px;
        font-weight: bold;
        transition: background-color 0.3s;
    }

    a:hover {
        background-color: #555;
    }
</style>
</head>
<body>

<% String msg = (String) request.getAttribute("successMessage"); %>
<% if (msg != null) { %>
   <h1><%=msg %></h1>
<% } %>

<h1>Welcome to Manager page</h1><br>
<div class="link-container">
<a href="addDev.jsp">Add developer</a><br>
<a href="addTask.jsp">Add task</a><br>
<a href="assignTask.jsp">Assign task</a><br>
<a href="viewAllDev">View all Developer</a><br>
<a href="deleteDev.jsp">Delete Developer</a><br>
<a href="logoutManager.jsp">Logout</a>
</div>
</body>
</html>