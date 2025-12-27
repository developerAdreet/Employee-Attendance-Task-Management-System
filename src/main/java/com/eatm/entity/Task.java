package com.eatm.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Task {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int taskId;
	private String taskName;
	@Enumerated(EnumType.STRING)
	private Status taskStatus;
	
	 @ManyToOne
	    @JoinColumn(name = "employee_id")
	    private Employee employee;
}
