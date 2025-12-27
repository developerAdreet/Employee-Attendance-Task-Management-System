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

    form {
        background-color: white;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        text-align: left;
        max-width: 400px;
        width: 100%;
    }

    label {
        font-weight: bold;
        margin-bottom: 5px;
        display: block;
    }


 legend {
        text-align: center;
        font-size: 1.5em;
        font-weight: bold;
        margin-top:-10px;
        margin-bottom:10px;
    }

    fieldset {
        border: 2px solid #333;
        border-radius: 10px;
        padding: 30px 40px;
        margin:0

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
        background-color: #0073e6;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 1em;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 10px;
    }

    input[type="submit"]:hover {
        background-color: #005bb5;
    }
</style>
</head>
<body>

<form action="register">

<fieldset>
<legend style="text-align: center;"><h2>Register form</h2></legend>
<label for="name" >Name:</label>
<input type="text" id="name" name="name"><br><br>

<label for ="salary" >Salary:</label>
<input type="text" id="salary" name="salary"><br><br>


<label for="emailId">Email Id:</label>
<input type="text" id="emailId" name="emailId"><br><br>


<label for="password">Password:</label>
<input type="text" id="password" name="password"><br><br>


<label for="role">Role:</label>
<input type="text" id="role" name="role"><br><br>

<label>DoorNo:</label>
<input type="text" id="doorNo" name="doorNo"><br><br>

<label for="street">Street:</label>
<input type="text" id="street" name="street"><br><br>

<label for="city">City:</label>
<input type="text" id="city" name="city"><br><br>

<label for="state">State:</label>
<input type="text" id="state" name="state"><br><br>

<label for="country">Country:</label>
<input type="text" id="country" name="country"><br><br>
<input type="submit" value="register">

</fieldset>
</form>
</body>
</html>