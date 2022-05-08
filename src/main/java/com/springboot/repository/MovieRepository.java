package com.springboot.repository;

import java.util.List;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.model.Movies;

public interface MovieRepository extends CrudRepository<Movies, Integer> {

public void save(MultipartFile file);

public Movies[] findAllByCategory_Id(int id);

public List<Movies> findByMovieName(String name);


	


}
