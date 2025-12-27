<%@page import="net.bytebuddy.implementation.bytecode.Division"%>
<%@page import="com.eatm.entity.Task"%>
<%@page import="java.util.List"%>
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
        background: linear-gradient(to bottom right, #0f0f0f, #2c2c2c);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: white;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px;
    }

    h1 {
        font-size: 2em;
        margin-bottom: 30px;
        color: #ffffff;
        text-align: center;
    }

    .task-card {
        background-color: #1c1c1c;
        border: 2px solid #00ffc8;
        border-radius: 10px;
        padding: 20px 30px;
        margin-bottom: 20px;
        box-shadow: 0 4px 15px rgba(0, 255, 200, 0.2);
        width: 80%;
        max-width: 600px;
    }

    .task-card h2 {
        margin: 10px 0;
        font-size: 1.2em;
        color: #00ffc8;
    }

    .no-task {
        font-size: 1.5em;
        color: #ff6666;
        margin-top: 50px;
    }
</style>
</head>
<body>
<h1>Your Assigned Tasks</h1>
<%


   List<Task> taskList = (List<Task>) request.getAttribute("tasks");
   if (taskList != null && !taskList.isEmpty()) {
       for (Task t : taskList) {
%>
<div class="task-card">
          <h1>Task ID: <%= t.getTaskId() %></h1> <br>
          <h1>Task Name: <%= t.getTaskName() %></h1><br>
          <h1>Status: <%= t.getTaskStatus() %></h1>
         </div>
          
<%
       }
   } else {
%>
   <h2>No tasks assigned yet.</h2>
<%
   }
%>


</body>
</html>