package com.eatm.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Component
@Scope(value="prototype")
public class Attendence {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int attendenceId;
	@CreationTimestamp
	private LocalDateTime loginTime;
	private LocalDateTime logOutTime;
	
	@ManyToOne
	
	private Employee employee;
}
