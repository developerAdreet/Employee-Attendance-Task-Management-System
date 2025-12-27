<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        background: linear-gradient(to bottom right, #1f1c2c, #928dab);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: white;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    h2 {
        font-size: 2.5em;
        margin-bottom: 40px;
        color: #00ffc8;
        text-shadow: 0 0 10px rgba(0,255,200,0.5);
    }

    h3 {
        font-size: 1.3em;
        margin: 10px 0;
    }

    a {
        color: #ffffff;
        text-decoration: none;
        font-weight: bold;
        padding: 8px 16px;
        border: 2px solid #00ffc8;
        border-radius: 5px;
        background-color: rgba(0, 0, 0, 0.3);
        transition: background-color 0.3s, color 0.3s;
    }

    a:hover {
        background-color: #00ffc8;
        color: black;
    }
</style>
</head>
<body>
<h2><%= "Welcome!Please login or register" %></h2>
<h3>Register: <a href="register.jsp">Register</a></h3><br>
<h3>Login: <a href="login.jsp">Login</a></h3><br>
</body>

</html>
