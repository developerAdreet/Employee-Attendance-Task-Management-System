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
        background: linear-gradient(to bottom right, #1f1f1f, #3a3a3a);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: #ffffff;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }

    h1 {
        font-size: 2.5em;
        color: #ff4c4c;
        margin-bottom: 20px;
    }

    p {
        font-size: 1.2em;
        color: #cccccc;
        margin-bottom: 30px;
    }

    a {
        color: #00bfff;
        text-decoration: none;
        font-weight: bold;
        font-size: 1.1em;
        padding: 10px 20px;
        border: 2px solid #00bfff;
        border-radius: 5px;
        background-color: transparent;
        transition: background-color 0.3s, color 0.3s;
    }

    a:hover {
        background-color: #00bfff;
        color: #000000;
    }
</style>
</head>
<body>
<h1>Access Denied</h1>
    <p>You are not authorized to perform this action.</p>
    <a href="login.jsp">Go to Login Page</a>

</body>
</html>