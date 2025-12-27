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

    .container {
        background-color: white;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        max-width: 400px;
        width: 100%;
        text-align: center;
    }

    h2 {
        margin-bottom: 20px;
        color: #2c6cb0;
    }

    label {
        font-weight: bold;
        display: block;
        margin-bottom: 8px;
        text-align: left;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #2c6cb0;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 1em;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #1a4a80;
    }
</style>

</head>
<body>
<form action="checkEmail">

<label for="emailId">Email:</label>
<input type="text" id="emailId" name="emailId"><br><br>
<input type="submit" value="next">
</form>
</body>
</html>