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

import com.eatm.entity.Task;
@Repository
@Transactional
public class TaskDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	 public Task saveTask(Task task) {
		
		entityManager.persist(task);
		
		return task;
	}
	
	public Task updateTask(Task task) {
		
		entityManager.merge(task);
		
		return task;
	}
	
	public Task deleteTask(Task task) {
		
		entityManager.remove(task);
		
		return task;
	}
	
	public Task findTaskById(int taskid) {
		return entityManager.find(Task.class, taskid);
	}
	
	public List<Task> findAllTask(){
		TypedQuery<Task> query= entityManager.createQuery("select t from Task t",Task.class);
		List<Task>list=query.getResultList();
		return list;
	}
	
	public List<Task> findTasksByEmployeeId(int employeeId) {
	    TypedQuery<Task> query = entityManager.createQuery(
	        "SELECT t FROM Task t join t.employee e WHERE e.employeeId = ?1",Task.class
	    );
	    query.setParameter(1, employeeId);
	    return query.getResultList();
	}

}
