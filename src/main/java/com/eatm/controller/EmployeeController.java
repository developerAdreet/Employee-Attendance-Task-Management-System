package com.eatm.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eatm.entity.Address;
import com.eatm.entity.Attendence;
import com.eatm.entity.Employee;
import com.eatm.entity.Task;
import com.eatm.service.IEmployeeService;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@Controller
public class EmployeeController {
	@Autowired
	IEmployeeService employeeService;
	@GetMapping("/register")
	public String registerEmployee(@ModelAttribute Employee employee, @ModelAttribute Address address, @RequestParam("role") String role,HttpSession session) {
		Employee loggedIn = (Employee) session.getAttribute("loggedInEmployee");
		if ("manager".equalsIgnoreCase(role)) {
	        if (loggedIn != null && !"manager".equalsIgnoreCase(loggedIn.getRole())) {
	            return "login";
	        }
	        employeeService.registerEmployee(employee, address, role);
	        return "login";
	    }
		    if(loggedIn == null || !"manager".equalsIgnoreCase(loggedIn.getRole())) {
		    	session.setAttribute("errormessage","access denied,only manager can register "
		    			+ " employees");
		        return "login";  
		    }
		    	    
		employeeService.registerEmployee(employee, address,role);
		return "success";
	}
	
	@GetMapping("/login")
	public String showLoginPage() {
	    return "login";   
	}

	@PostMapping("/login")
	public String loginEmployee(@RequestParam ("emailId") String emailId, @RequestParam("password") String password,HttpSession session) {
		  return employeeService.loginEmployee(emailId, password);
	
	}
	
	@GetMapping("/checkEmail")
    public String checkEmployeeByEmail(@RequestParam("emailId") String emailId) {
      
       
		
		return employeeService.checkEmployeeByEmail(emailId);
       }
	
	@GetMapping("/updatePassword")
	public String updateEmployeePassword(@RequestParam("password") String password) {
		return employeeService.updateEmployeePassword(password);
	}
	
	@GetMapping("/addDeveloper")
	public String addDeveloper(@ModelAttribute Employee employee, @ModelAttribute Address address,HttpServletRequest request,HttpSession session) {
	   
		 Employee loggedIn = (Employee) session.getAttribute("loggedInEmployee");
		    if (loggedIn == null || !"manager".equalsIgnoreCase(loggedIn.getRole())) {
		        return "login"; 
		    }
		
		employeeService.registerEmployee(employee, address, "developer");
	    request.setAttribute("successMessage", "Developer added successfully!");
	    return "manager"; 
	}

	@GetMapping("/addTask")
	public String addTask(@ModelAttribute Task task, HttpServletRequest request,HttpSession session) {
	    
		Employee loggedIn = (Employee) session.getAttribute("loggedInEmployee");

        if (loggedIn == null || !"manager".equalsIgnoreCase(loggedIn.getRole())) {
            return "login";
        }
		employeeService.addTask(task);
	    request.setAttribute("successMessage", "Task added successfully!");
	    return "manager";   
	}

	
	@GetMapping("/assignTask")
	public String assignTask(@RequestParam("taskId") int taskId,@RequestParam("employeeId") int employeeId, HttpServletRequest request,HttpSession session) {
	    
		 Employee loggedIn = (Employee) session.getAttribute("loggedInEmployee");

	        if (loggedIn == null || !"manager".equalsIgnoreCase(loggedIn.getRole())) {
	            return "login";
	        }
	        boolean  assigned = employeeService.assignTask(taskId, employeeId);
	        if (!assigned) {
	            request.setAttribute("errorMessage","Task can be assigned only to developers. "
	            		+ " Please check selection.");
	            return "manager";
	        }

	        request.setAttribute("successMessage", "Task assigned successfully!");
	        return "manager";
	}

	
	@GetMapping("/viewAllDev")
	public String viewAllDevelopers(HttpServletRequest request) {
	    List<Employee> employees = employeeService.viewAllDevelopersWithTask();
	    request.setAttribute("employees", employees);
	    return "viewAllDev"; 
	}

	@GetMapping("/deleteDeveloper")
	public String deleteDeveloper(@RequestParam("employeeId") int employeeId, HttpSession session ,HttpServletRequest request) {
	    
		Employee loggedIn = (Employee) session.getAttribute("loggedInEmployee");
        if (loggedIn == null || !"manager".equalsIgnoreCase(loggedIn.getRole())) {
            return "login";
        }
        
        boolean deleted = employeeService.deleteDeveloper(employeeId);
        if (!deleted) {
            request.setAttribute("errorMessage",
                "Invalid operation. You can delete only developers.");
            return "manager"; 
        }

        request.setAttribute("successMessage", "Developer deleted successfully!");
        return "manager";
    }
	
	@GetMapping("/viewTasks")
    public String viewTasks(HttpSession session, HttpServletRequest request) {
        Employee emp = (Employee) session.getAttribute("loggedInEmployee");
        if (emp == null) {
            return "login"; 
        }

        List<Task> tasks = employeeService.viewTasksByEmployee(emp.getEmployeeId());
        request.setAttribute("tasks", tasks);

        return "viewTasks"; 
    }
 
	@PostMapping("/updateTaskStatus")
	public String updateTaskStatus(HttpServletRequest request,HttpSession session) {
	    int taskId = Integer.parseInt(request.getParameter("taskId"));
	    String newStatus = request.getParameter("newStatus");

	    Employee emp = (Employee) session.getAttribute("loggedInEmployee");
	    if (emp != null) {
	        String message = employeeService.updateTaskStatus(taskId, emp.getEmployeeId(), newStatus);
	        request.setAttribute("message", message);
	        return "taskStatusUpdate"; 
	    } else {
	        request.setAttribute("errorMessage", "Please login first!");
	        return "login";
	    }
	}

	
	@PostMapping("/updateDeveloper")
	public String updateDeveloperDetails(@ModelAttribute Employee employee, HttpSession session, HttpServletRequest request) {
	    Employee loggedInDev = (Employee) session.getAttribute("loggedInEmployee");
	    if (loggedInDev == null) {
	        request.setAttribute("errorMessage", "Please login first!");
	        return "login";
	    }

	    String message = employeeService.updateDeveloperDetails(loggedInDev.getEmployeeId(), employee);
	    request.setAttribute("message", message);

	    
	    Employee updatedEmp = employeeService.getEmployeeById(loggedInDev.getEmployeeId());
	    request.setAttribute("employee", updatedEmp);

	    return "updateDeveloper";  
	}

	@GetMapping("/logoutManager")
	public String logoutManager(HttpSession session) {

	    Employee loggedIn = (Employee) session.getAttribute("loggedInEmployee");

	    if (loggedIn == null || !"manager".equalsIgnoreCase(loggedIn.getRole())) {
	        return "redirect:/login";
	    }

	    List<Attendence> list = loggedIn.getAttendence();
	    if (list != null && !list.isEmpty()) {
	        Attendence last = list.get(list.size() - 1);
	        employeeService.logoutEmployee(last.getAttendenceId()); 
	    
	    }
	    session.removeAttribute("loggedInEmployee");
	    session.invalidate(); 
	    return "redirect:/login";
	}

	@GetMapping("/logoutDeveloper")
	public String logoutDeveloper(@RequestParam("empId") int empId,HttpSession session,HttpServletRequest request) {
	   
		Employee loggedIn = (Employee) session.getAttribute("loggedInEmployee");
	    if (loggedIn == null) {
	        request.setAttribute("errorMessage", "Please login first!");
	        return "redirect:/login";
	    }
		 employeeService.logoutDeveloper(empId);
		session.invalidate();
		return "redirect:/login";
	}

    }