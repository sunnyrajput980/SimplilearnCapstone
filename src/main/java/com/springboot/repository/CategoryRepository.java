package com.springboot.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.springboot.model.Category;

@Repository
public interface CategoryRepository extends  CrudRepository<Category, Integer>  {

}
