<%@page import="com.eatm.entity.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.eatm.entity.Task"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: white;
        padding: 40px;
        background: linear-gradient(135deg,#667eea,#764ba2);
    }

    .employee-card {
        background-color: #1c1c1c;
        border: 2px solid #00ffc8;
        border-radius: 10px;
        padding: 20px 30px;
        margin-bottom: 30px;
        box-shadow: 0 4px 15px rgba(0, 255, 200, 0.2);
    }

    .employee-card h1 {
        margin: 10px 0;
        font-size: 1.4em;
        color: #00ffc8;
    }

    .task-item {
        margin-left: 20px;
        font-size: 1.1em;
        color: #e0e0e0;
    }

    .no-task {
        margin-left: 20px;
        font-style: italic;
        color: #888;
    }

    .no-employee {
        text-align: center;
        font-size: 1.5em;
        color: #ff6666;
        margin-top: 50px;
    }
</style>
</head>
<body>
<%
   List<Employee> empList = (List<Employee>) request.getAttribute("employees");
   if (empList != null && !empList.isEmpty()) {
       for (Employee e : empList) {
%>
<div class="employee-card">
          <h1>Name: <%= e.getName() %></h1>
          <h1>Role: <%= e.getRole() %></h1>
          <h1>Tasks:</h1>
          <%
              if (e.getTask() != null && !e.getTask().isEmpty()) {
                  for (Task t : e.getTask()) {
          %>
                      <h1><%= t.getTaskName() %> (<%= t.getTaskStatus() %>)</h1>
          <%
                  }
              } else {
          %>
                  <h1>No tasks assigned</h1>
          <%
              }
          %>
         </div>
<%
       }
   } else {
%>
   <h1>No employees found.</h1>
<%
   }
%>

</body>
</html>