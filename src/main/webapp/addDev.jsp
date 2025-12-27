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
        background-color: #e0e0e0; 
        margin: 0;
        font-family: Arial, sans-serif;
        
        background-image: url('https://cdn.pixabay.com/photo/2018/04/09/14/33/abstract-3304213_1280.png');
        background-size: cover;   
        background-repeat: no-repeat;
        background-attachment: fixed; 
        background-position: center;
    }

    form {
        
        padding: 0;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.2); /* shadow for box *
        background-color: white;  white box 
        border: none;  /* optional border */
        width:fit-content;
        margin: auto;
        background-color: #000;
        color: white;
        
    }

    fieldset {
        border: 2px solid #333;
        border-radius: 10px;
        padding: 30px 40px;
        margin:0

    }

    legend {
        text-align: center;
        font-size: 1.5em;
        font-weight: bold;
        margin-top:-10px;
        margin-bottom:10px;
    }

    label {
        display: inline-block;
        vertical-align:middle;
        width: 100px; /* label alignment */
    }

    input[type="text"], input[type="email"], input[type="password"] {
        width: 200px;
        padding: 5px;
        background-color: #222;
        color:white;
        border: 1px solid #555;
    padding: 8px;
    border-radius: 5px;
        
    }
    
    input::placeholder {
    color: #aaa; /* light gray placeholder */
}
    

    input[type="submit"] {
        margin-top: 15px;
        padding: 10px 20px;
        font-size: 1em;
        cursor: pointer;
        display: block;
        margin-left: auto;
        margin-right: auto;
         background-color: #444;
         color: white;
         border: none;
        
    }
</style>
</head>
<body>
 <form action="addDeveloper">
<!--  NAME:<input type="text" name="name"><br><br>
SALARY:<input type="text" name="salary"><br><br>
EMAILID:<input type="text" name="emailId"><br><br>
PASSWORD:<input type="text" name="password"><br><br>
DoorNo:<input type="text" name="doorNo"><br><br>
Street:<input type="text" name="street"><br><br>
City:<input type="text" name="city"><br><br>
State:<input type="text" name="state"><br><br>
Country:<input type="text" name="country"><br><br>
<input type="submit" value="add"> -->
       <fieldset>
      <legend ><h2>Developer Information</h2></legend>
        <label for="name">NAME: </label>
        <input type="text" id="name" name="Name" required placeholder="Name"><br><br>

        <label for="salary">SALARY: </label>
        <input type="text" id="salary" name="salary" required  placeholder="Salary"><br><br>

        <label for="email">EMAILID: </label>
        <input type="email" id="email" name="emailId" placeholder="email" required><br><br>
 
        <label for="password">PASSWORD: </label>
        <input type="password" id="password" name="password" placeholder="password"><br><br>
        
         <label for="Doorno">DoorNo: </label>
        <input type="text"  id="DoorNo" name="doorNo" placeholder="doorNo"><br><br>
        
        <label for="Street">Street: </label>
        <input type="text"  id="Street" name="street" placeholder="street"><br><br>
        
        <label for="City">City: </label>
        <input type="text"  id="City" name="city" placeholder="city"><br><br>
        
        <label for="Country">Country: </label>
        <input type="text"  id="Country" name="country" placeholder="country"><br><br>
        
        <label for="State">State: </label>
        <input type="text"  id="State" name="state" placeholder="state"><br><br>
        
        <input type="submit" value="add">
    </fieldset> 
</form> 
 
</body>
</html>