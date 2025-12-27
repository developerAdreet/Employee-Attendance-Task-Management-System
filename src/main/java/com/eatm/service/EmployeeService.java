package com.eatm.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import jakarta.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.eatm.dao.AddressDao;
import com.eatm.dao.AttendenceDao;
import com.eatm.dao.EmployeeDao;
import com.eatm.dao.TaskDao;
import com.eatm.entity.Address;
import com.eatm.entity.Attendence;
import com.eatm.entity.Employee;
import com.eatm.entity.Status;
import com.eatm.entity.Task;
import com.mysql.cj.Session;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@Service
@Transactional
public class EmployeeService implements IEmployeeService{

	@Autowired
	AddressDao addressDao;
	
	@Autowired 
	EmployeeDao employeeDao;
	
	@Autowired
	AttendenceDao attendenceDao;
	
	@Autowired
	HttpServletResponse response;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	TaskDao taskDao;
	
	public void registerEmployee(Employee employee, Address address,String role) {
		employee.setRole(role);
		employee.setAddress(address);
		employeeDao.saveEmployee(employee);
	}
	
	public String loginEmployee(String emailId, String password) {
		 Employee dbEmployee = employeeDao.findByEmailAndPassword(emailId, password);
		    if (dbEmployee != null) {
		        
		        Attendence attendence = new Attendence();
		        attendence.setLoginTime(LocalDateTime.now());
		        attendence.setEmployee(dbEmployee);
		        attendenceDao.saveAttendence(attendence);

		        List<Attendence> list = dbEmployee.getAttendence();
		        if (list == null) {
		            list = new ArrayList<>();
		        }
		        list.add(attendence);
		        dbEmployee.setAttendence(list);

		        employeeDao.updateEmployee(dbEmployee);

		        session.setAttribute("loggedInEmployee", dbEmployee);

		        
		        if ("manager".equalsIgnoreCase(dbEmployee.getRole())) {
		            return "manager"; 
		        } else if ("developer".equalsIgnoreCase(dbEmployee.getRole())) {
		            return "developer"; 
		        } else {
		            request.setAttribute("errorMessage", "Role not recognized!");
		            return "login";
		        }
		    } else {
		        request.setAttribute("errorMessage", "Invalid username or password");
		        return "login";
		    }
	}
	
	public String checkEmployeeByEmail(String emailId){
		// TODO Auto-generated method stub
		Employee employee = employeeDao.findByEmail(emailId);
		session.setAttribute("employeeByEmail", employee);
	    if (employee != null) {
	        return "takeNewPassword";
	        
	    } 
	    request.setAttribute("errorMessage", "Invalid email");
	    return "checkEmail";
	}

	public String updateEmployeePassword(String password) {
		
		
		// TODO Auto-generated method stub
		Employee employee= (Employee)session.getAttribute("employeeByEmail");
		employee.setPassword(password);
		employeeDao.updateEmployee(employee);
		request.setAttribute("updationMessage", "Password updated successfully");
		return "login";
	}

	public void addTask(Task task) {
		// TODO Auto-generated method stub
		task.setTaskStatus(Status.ASSIGNED);
		taskDao.saveTask(task);
		
	}

	public boolean assignTask(int taskId, int employeeId) {
		// TODO Auto-generated method stub
		Task task = taskDao.findTaskById(taskId);
	    Employee dev = employeeDao.findEmployeeById(employeeId);
	    
	    if (task == null || dev == null) {
	         return false;
	    }
	    
	    if (!"developer".equalsIgnoreCase(dev.getRole())) {
	        return false;
	    }
	    	 task.setEmployee(dev);
	         task.setTaskStatus(Status.ASSIGNED);
	         taskDao.updateTask(task);
	         List<Task> tasks = dev.getTask();
	         if (tasks == null) {
	             tasks = new ArrayList<>();
	         }
	         tasks.add(task);
	         dev.setTask(tasks);

	         
	         employeeDao.updateEmployee(dev);
	         return true;
	     
	    }
		
	public List<Employee> viewAllDevelopersWithTask() {
		// TODO Auto-generated method stub
		return employeeDao.findByRole("developer");
	}

	public boolean deleteDeveloper(int empId) {
		// TODO Auto-generated method stub
		Employee target = employeeDao.findEmployeeById(empId);

	    if (target != null && "developer".equalsIgnoreCase(target.getRole())) {
	        employeeDao.deleteEmployeeById(empId);
	        return true;
	    }
		return false;
	}


	public void logoutEmployee(int attendenceId) {
		// TODO Auto-generated method stub
		Employee loggedIn = (Employee) session.getAttribute("loggedInEmployee");
Attendence attendance = attendenceDao.findById(attendenceId);
        
        if(attendance == null|| loggedIn==null) return;
        Employee emp = attendance.getEmployee();
        if ("manager".equalsIgnoreCase(attendance.getEmployee().getRole()) && 
        		attendance.getEmployee().getEmployeeId() != loggedIn.getEmployeeId()) {
            return;
        }

        attendance.setLogOutTime(LocalDateTime.now());
        attendenceDao.updateAttendence(attendance);
	}

	public List<Task> viewTasksByEmployee(int employeeId) {
		// TODO Auto-generated method stub
		Employee emp = employeeDao.findEmployeeById(employeeId);
        if (emp != null && emp.getTask() != null) {
            return emp.getTask();
        }
        return new ArrayList<>();
    }

	public String updateTaskStatus(int taskId, int employeeId,String newStatus ){
		Employee emp = employeeDao.findEmployeeById(employeeId);
	    if (emp != null && emp.getTask() != null) {
	        for (Task task : emp.getTask()) {
	            if (task.getTaskId() == taskId) {
	                
	                try {
	                    Status status = Status.valueOf(newStatus.toUpperCase());
	                    task.setTaskStatus(status);
	                    taskDao.updateTask(task);
	                    return "Task ID " + taskId + " status updated to " + task.getTaskStatus();
	                } catch (IllegalArgumentException e) {
	                    return "Invalid status value: " + newStatus;
	                }
	            }
	        }
	    }
	    return "Task not found!";
	}

	@Override
	public String updateDeveloperDetails(int empId, Employee updatedEmp) {
	    Employee emp = employeeDao.findEmployeeById(empId);
	    if (emp == null) return "Employee not found!";

	    boolean changed = false;

	    if (updatedEmp.getName() != null && !updatedEmp.getName().isEmpty()
	            && !updatedEmp.getName().equals(emp.getName())) {
	        emp.setName(updatedEmp.getName());
	        changed = true;
	    }

	    if (updatedEmp.getEmailId() != null && !updatedEmp.getEmailId().isEmpty()
	            && !updatedEmp.getEmailId().equals(emp.getEmailId())) {
	        emp.setEmailId(updatedEmp.getEmailId());
	        changed = true;
	    }

	    if (updatedEmp.getPassword() != null && !updatedEmp.getPassword().isEmpty()) {
	        emp.setPassword(updatedEmp.getPassword());
	        changed = true;
	    }

	    if (changed) {
	        employeeDao.updateEmployee(emp);
	        
	        session.setAttribute("loggedInEmployee", emp);
	        return "Profile updated successfully!";
	    } else {
	        return "No changes detected.";
	    }
	}

	public Employee getEmployeeById(int empId) {
	    return employeeDao.findEmployeeById(empId);
	}

	
	public void updateAttendance(Attendence attendence) {
	    if (attendence != null) {
	        attendenceDao.updateAttendence(attendence);
	    }
	}
	
	public String logoutDeveloper(int empId) {
		// TODO Auto-generated method stub
		Employee loggedInUser = (Employee) session.getAttribute("loggedInEmployee");

	    if (loggedInUser == null) {
	    	return "redirect:/login";
	    }

	    
	    if ("developer".equals(loggedInUser.getRole())) {
	        if (loggedInUser.getEmployeeId() != empId) {
	            request.setAttribute("errorMessage", "You cannot logout other employees or managers!");
	            return "redirect:/login";
	        }

	        
	        List<Attendence> attendances = loggedInUser.getAttendence();
	        if (attendances != null && !attendances.isEmpty()) {
	            Attendence latest = attendances.get(attendances.size() - 1);
	            latest.setLogOutTime(LocalDateTime.now());
	            attendenceDao.updateAttendence(latest);

	            
	        } 
	    }

	   
	    return "redirect:/login";
	
	}
}