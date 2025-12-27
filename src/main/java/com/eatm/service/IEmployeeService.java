package com.eatm.service;

import java.util.List;

import com.eatm.entity.Address;
import com.eatm.entity.Attendence;
import com.eatm.entity.Employee;
import com.eatm.entity.Task;

public interface IEmployeeService {

	public void registerEmployee(Employee employee,Address address,String role);
	public String loginEmployee(String emailId, String password);
	public String checkEmployeeByEmail(String emailId);
	public String updateEmployeePassword(String Password);
	public void addTask(Task task);
	public boolean assignTask(int taskId, int employeeId);
	public List<Employee> viewAllDevelopersWithTask();
	public  boolean  deleteDeveloper(int empId);
	public void logoutEmployee(int attendenceId);
	public List<Task> viewTasksByEmployee(int employeeId);
	public String updateTaskStatus(int taskId,int employeeId,String newStatus);
	public String logoutDeveloper(int empId);
	public Employee getEmployeeById(int empId);
	public String updateDeveloperDetails(int empid,Employee employee);
	public void  updateAttendance(Attendence attendence);

}
