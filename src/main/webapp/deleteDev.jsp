<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        background-color: #0f0f0f;
        font-family: Arial, sans-serif;
        color: white;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        
        background-image: url("https://cdn.pixabay.com/photo/2017/08/10/02/05/tiles-shapes-2617112_1280.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
        
    }

    form {
        background-color: #1c1c1c;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 255, 200, 0.2);
        border: 2px solid #00ffc8;
        text-align: center;
    }

    label {
        font-size: 1.2em;
        color: #00ffc8;
        display: block;
        margin-bottom: 10px;
    }

    input[type="text"] {
        width: 250px;
        padding: 10px;
        border: 1px solid #00ffc8;
        border-radius: 5px;
        background-color: #111;
        color: white;
        margin-bottom: 20px;
    }

    input[type="submit"] {
        background-color: #111;
        color: #00ffc8;
        border: 2px solid #00ffc8;
        padding: 10px 25px;
        font-size: 1em;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #00ffc8;
        color: black;
    }
</style>
</head>
<body>
<form action="deleteDeveloper">
 Enter Developer ID: <input type="text" name="employeeId">
<input type="submit" value="Delete">
</form>
</body>
</html>