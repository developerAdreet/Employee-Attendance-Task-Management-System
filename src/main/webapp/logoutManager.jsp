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
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%); /* greenish gradient */
    }

    .form-container {
        background: rgba(0, 0, 0, 0.6);
        padding: 25px 30px;
        border-radius: 12px;
        box-shadow: 0 0 15px #0ff;  /* neon glow */
        width: 350px;
        text-align: center;
    }

    .form-container h2 {
        margin-bottom: 20px;
        color: #0ff;  
        text-shadow: 0 0 8px #0ff, 0 0 15px #0ff;
    }

    label {
        display: block;
        font-size: 14px;
        margin-bottom: 8px;
        color: #fff;
        text-align: left;
        text-shadow: 0 0 5px #0ff;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #0ff;
        border-radius: 6px;
        margin-bottom: 20px;
        box-sizing: border-box;
        font-size: 14px;
        background: #111;
        color: #0ff;
        text-shadow: 0 0 5px #0ff;
        box-shadow: 0 0 10px #0ff inset;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background: #111;
        border: 1px solid #0ff;
        border-radius: 6px;
        color: #0ff;
        font-size: 15px;
        cursor: pointer;
        transition: 0.3s ease;
        text-shadow: 0 0 5px #0ff, 0 0 10px #0ff;
        box-shadow: 0 0 8px #0ff;
    }

    input[type="submit"]:hover {
        background: #0ff;
        color: #000;
        text-shadow: none;
    }
</style>
</head>
<body>
<div>
<h2 style="text-align: center;">Logout page</h2>
<form action="logoutManager">

<label for="attendenceId">Enter Attendance ID to logout: </label>
<input type="text" id="attendenceId" name="attendanceId"><br>
<input type="submit" value="Logout">
</form>
</div>
</body>
</html>