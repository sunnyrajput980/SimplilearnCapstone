package com.springboot.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.model.Category;
import com.springboot.model.Movies;
import com.springboot.repository.MovieRepository;

@Service
public class MovieService {

	@Autowired
	MovieRepository repository;

   public Movies addMovie(Movies movie) {
        return this.repository.save(movie);	   
   }

 public List<Movies> getAllMovies(){
	 List<Movies> movie=new ArrayList<>();
      for (Movies film: this.repository.findAll() ) {
    	  movie.add(film);
      }
      
      return movie;
 }
 
 public void deleteById(int id) {
	 this.repository.deleteById(id);
	

 }
 
 public Movies getById(Integer id) {
	 Movies movie= this.repository.findById(id).get();
      return movie;
 } 
  
 public List<Movies> getMoviesByCategoryId(int id){
	   List<Movies> getMoviesByCatId=new ArrayList<>();
	   for(Movies mov: this.repository.findAllByCategory_Id(id)) {
		   getMoviesByCatId.add(mov);
	   }
	   return  getMoviesByCatId ;
 }


 
}
