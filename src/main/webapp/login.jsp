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
        background: linear-gradient(160deg, #000000, #001a1a, #003333, #00ffc8);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: white;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    h1 {
        color: #ff4c4c;
        margin-bottom: 20px;
        font-size: 1.5em;
        text-align: center;
    }

    form {
        background-color: rgba(0, 0, 0, 0.6);
        padding: 30px 40px;
        border-radius: 10px;
        border: 2px solid #00ffc8;
        box-shadow: 0 4px 15px rgba(0, 255, 200, 0.2);
        text-align: center;
    }

    input[type="text"] {
        width: 250px;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #00ffc8;
        border-radius: 5px;
        background-color: #111;
        color: white;
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

    a {
        color: #00ffc8;
        text-decoration: none;
        font-weight: bold;
        margin-top: 10px;
        display: inline-block;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<%
String errormessage=(String)request.getAttribute("errorMessage");
if(errormessage!=null){
	%>
	<h1><%=errormessage %></h1>
	<% 
}

%>
<%
String updationMessage=(String)request.getAttribute("updationMessage");
if(updationMessage!=null){
	%>
	<h1><%=updationMessage %></h1>
	<%
}
%>
<form action="login" method="post">
<label for="emailId">Email id: </label>
<input type="text" id="emailId" name="emailId"><br><br>

<label>Password: </label>
<input type="text" id="password" name="password"><br><br>
<input type="submit" value ="login"> 
</form>
<a href="checkEmail.jsp">Forgot Password?</a><br><br>
<a href ="register.jsp">New User?</a>
</body>
</html>