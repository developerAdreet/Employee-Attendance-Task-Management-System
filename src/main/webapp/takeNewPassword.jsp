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

    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
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
<form action="updatePassword">
<label for="password">Enter new password:</label>
 <input type="text" id="password" name="password"><br><br>
 
 <label>Confirm new password:</label>
<input type="text"><br><br>
<input type="submit" value="reset">
</form>
</body>
</html>