package com.springboot.repository;


import org.springframework.data.repository.CrudRepository;


import com.springboot.model.Users;

public interface UserRepository extends CrudRepository<Users , Integer> {

	public Users findByEmailAndPassword(String email , String password);

	public Users findByEmail(String email);
	
	
       
}
