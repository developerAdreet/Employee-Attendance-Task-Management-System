<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <style>
    body {
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg,#43cea2,#185a9d);
    }

    form {
        background-color: black;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.5);
        width: fit-content;
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: white;
    }

    label {
        display: inline-block;
        width: 120px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    input[type="text"] {
        width: 250px;
        padding: 10px;
        border: 1px solid #888;
        border-radius: 5px;
        background-color: #111;
        color: white;
        margin-bottom: 20px;
    }

    input::placeholder {
        color: #ccc;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 25px;
        font-size: 1em;
        border-radius: 5px;
        cursor: pointer;
        display: block;
        margin: auto;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>  -->

<style>
    body {
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #43cea2, #185a9d);
    }

    form {
        background-color: #0f0f0f;
        padding: 40px 50px;
        border-radius: 12px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.6);
        width: 100%;
        max-width: 400px;
        color: white;
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
        font-size: 1.8em;
        color: #00ffc8;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #ccc;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #555;
        border-radius: 6px;
        background-color: #1c1c1c;
        color: white;
        box-sizing: border-box;
    }

    input[type="text"]::placeholder {
        color: #aaa;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 12px;
        font-size: 1em;
        border-radius: 6px;
        cursor: pointer;
        width: 100%;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<form action="assignTask">
          <h2>Assign Task</h2>
<label for ="taskId">Task ID: </label>
<input type="text" id="taskId" name="taskId"><br><br>

<label for="employeeId">Developer ID:</label>
<input type="text" id="employeeId" name="employeeId"><br><br>
<input type="submit" value="Assign Task">
</form>
</body>
</html>