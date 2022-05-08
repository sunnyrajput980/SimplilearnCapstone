package com.springboot.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.springboot.model.Users;
import com.springboot.repository.UserRepository;

@Component
public class UserService  {

	@Autowired
	public UserRepository repository;
	
	//1 Add User = Post
    public Users addUser(Users user) {
	  Users save = this.repository.save(user);	
	  return save;
	}
    
    //2 get valid user for login
    public Users getUser(String email , String password ) {
		return this.repository.findByEmailAndPassword(email, password);
    }
  //3 edit user credential
    public Users editUser(Users user) {
	     Users existingUser=repository.findById(user.getId()).orElse(null);
	     user.setPassword(user.getPassword());
	    	return repository.save(existingUser);
		 
    }
    //4. getsigned Users 
    public List<Users> getAllUser(){
    	List<Users> user=new ArrayList<>();
    	for(Users users: repository.findAll() ) {
    		user.add(users);
    	}
		return user; 
    }
}
