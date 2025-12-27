<%@page import="com.eatm.entity.Status"%>
<%@page import="com.eatm.entity.Task"%>
<%@page import="java.util.List"%>
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
        color: #333;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .container {
        background-color: white;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: left;
    }

h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #2c6cb0;
    }

    label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }

    input[type="number"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    span {
        display: block;
        font-weight: bold;
        margin-bottom: 15px;
        color: #2c6cb0;
    }

button {
        background-color: #2c6cb0;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 1em;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
    }

    button:hover {
        background-color: #1a4a80;
    }

    .message {
        color: green;
        text-align: center;
        margin-bottom: 15px;
        font-weight: bold;
    }

    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        color: #2c6cb0;
        text-decoration: none;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
    }
</style>

</head>
<body>

<%
    String msg = (String) request.getAttribute("message");
    if(msg != null){
%>
    <p><%= msg %></p>
<%
    }
%>

<form action="updateTaskStatus" method="post">
    <label for="taskId">Enter Task ID:</label>
    <input type="number" id="taskId" name="taskId" required /><br><br>

    
    <label for="status">Status:</label>
    <input type="hidden" id="status" name="newStatus" value="COMPLETED" />
    <span>COMPLETED</span><br><br>

    <button type="submit">Update Status</button>
</form>
<a href="developer.jsp">Back to Options</a>
</body>
</html>