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

import com.eatm.entity.Address;

@Repository
@Transactional
public class AddressDao {

	@PersistenceContext
	private EntityManager entityManager;
	 public Address saveAddress(Address address) {
	
		entityManager.persist(address);
		
		return address;
	}
	
	public Address updateAddress(Address address) {
		
		entityManager.merge(address);
		
		return address;
	}
	
	public Address deleteAddress(Address address) {
		
		entityManager.remove(address);
		
		return address;
	}
	
	public Address findAddressById(int addressid) {
		return entityManager.find(Address.class, addressid);
	}
	
	public List<Address> findAllAddress(){
		TypedQuery<Address> query= entityManager.createQuery("select a from Address a",Address.class);
		List<Address>list=query.getResultList();
		return list;
	}
}
