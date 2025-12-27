package com.eatm.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.eatm.entity.Attendence;

@Repository
@Transactional
public class AttendenceDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public Attendence saveAttendence(Attendence attendence) {
		
		entityManager.persist(attendence);
		
		return attendence;
	}
	
	public Attendence updateAttendence(Attendence attendence) {
	
		entityManager.merge(attendence);
		
		return attendence;
	}
	
	public Attendence findById(int id) {
		return entityManager.find(Attendence.class,id);
	}
	
	public void deleteAttendenceById(int id) {
	   
	    Attendence att = entityManager.find(Attendence.class, id);
	    if (att != null) {
	        entityManager.remove(att);
	    }
	    
	}
}
