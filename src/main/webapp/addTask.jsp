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
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: Arial, sans-serif;
    background:linear-gradient(135deg,#00c6ff,#0072ff);
}

form {
    background-color: white;
    padding: 30px 40px;
    border-radius: 10px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.2);
    width: fit-content;
}

input[type="text"] {
    width: 250px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-top: 10px;
    margin-bottom: 20px;
}

input[type="submit"] {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 10px 25px;
    font-size: 1em;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<form action="addTask">

<label for="taskName">Task Name:</label>
<input type="text" id="taskName" name="taskName"><br><br>
 <input type="submit" value="Add Task">
</form>
</body>
</html>