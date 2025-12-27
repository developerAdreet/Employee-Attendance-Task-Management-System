<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        margin: 0;
        padding: 0;
        background: linear-gradient(to bottom right, #dbe9f4, #2c6cb0);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        color: #333;
    }

    .dashboard {
        background-color: white;
        padding: 30px 50px;
        border-radius: 10px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
        max-width: 400px;
        width: 100%;
    }

    h1 {
        font-size: 1.8em;
        color: #2c6cb0;
        margin-bottom: 20px;
    }

    a {
        display: block;
        background-color: #2c6cb0;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
        text-decoration: none;
        margin-bottom: 10px;
        font-size: 1em;
        transition: background-color 0.3s;
    }

    a:last-child {
        margin-bottom: 0;
    }

    a:hover {
        background-color: #1a4a80;
    }
</style>

</head>
<body>
<div class="dashboard">
<h1>Welcome developer!</h1>
<a href="viewTasks">View Task</a><br>
<a href="taskStatusUpdate.jsp">Change Task Status</a><br>
<a href="updateDeveloper.jsp">Update</a><br>
<a href="logoutDeveloper.jsp">Log out</a>
</div>
</body>
</html>