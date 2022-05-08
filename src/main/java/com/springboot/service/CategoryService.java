package com.springboot.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.springboot.model.Category;
import com.springboot.repository.CategoryRepository;

@Component
public class CategoryService {

	@Autowired
	CategoryRepository cRepository;
	
	public Category addCategory(Category category) {
		  return this.cRepository.save(category);
	}
	

   public List<Category> getAllCat(){
	   List<Category> cat=new ArrayList<>();
	   for(Category category:this.cRepository.findAll()) {
		   cat.add(category);
	   }
	   return cat;
   }

   public void deleteCat(int id) {
	   this.cRepository.deleteById(id);
   }
   
  
}
