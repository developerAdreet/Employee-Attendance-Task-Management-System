package com.eatm.dao;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.eatm.entity.Employee;

@Repository
@Transactional
public class EmployeeDao {

	
	@PersistenceContext
	private EntityManager entityManager;
	
	public Employee saveEmployee(Employee employee) {
		
		entityManager.persist(employee);
		return employee;
	}
	
	
	public Employee updateEmployee(Employee employee) {
		
		entityManager.merge(employee);
		
		return employee;
	}
	
	public Employee deleteEmployee(Employee employee) {
		
		entityManager.remove(employee);
		
		return employee;
	}
	
	
	public void deleteEmployeeById(int id) {
	    Employee emp = entityManager.find(Employee.class, id);
	    if (emp != null) {
	        
	        entityManager.remove(emp);
	       
	    }
	}

	public Employee findEmployeeById(int empid) {
		return entityManager.find(Employee.class, empid);
	}
	
	public List<Employee> findAllEmployee(){
		Query query= entityManager.createQuery("select e from Employee e" );
		List<Employee>list=query.getResultList();
		return list;
	}
	
	public Employee findByEmailAndPassword(String emailId, String password) {
        TypedQuery<Employee> query = entityManager.createQuery("select e from Employee e where e.emailId=?1 and e.password=?2",Employee.class);
        query.setParameter(1, emailId);
        query.setParameter(2, password);

        List<Employee> list = query.getResultList(); 
        if (list.isEmpty()) {
            return null;  
        } else {
            return list.get(0);
        }
    }

	public Employee findByEmail(String emailId) {
	    Query query = entityManager.createQuery("select e from Employee e where e.emailId=?1");
	    query.setParameter(1, emailId);

	    List<Employee> list = query.getResultList();
//	    if (list.isEmpty()) {
//	        return null;
//	    }
//	    return list.get(0);
	    
	    if(list.size()>0) {
	    	return list.get(0);
	    }
	    else{
	    	return null;
	    }
	}
	
	public List<Employee> findByRole(String role) {
	    TypedQuery<Employee> query= entityManager.createQuery("SELECT e FROM Employee e WHERE e.role=?1",Employee.class);
	    query  .setParameter(1, role);
	    return query.getResultList();                   
	}


}
