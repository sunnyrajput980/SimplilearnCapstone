package com.springboot.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.model.Movies;
import com.springboot.model.Users;
import com.springboot.service.CategoryService;
import com.springboot.service.MovieService;
import com.springboot.service.UserService;

 

@Controller
public class HomeController {

    
	@Autowired
	UserService userService;
	
	@Autowired
	MovieService mService;
	
	@Autowired
	CategoryService cService;
	
	//get login page handler
	@RequestMapping("/login")
	public String home() {	
		return "login";
	}
	
	//login authentication handler 
	@PostMapping("/home")
	public String getAccess(@ModelAttribute Users user ,@RequestParam String email , @RequestParam String password ,HttpServletRequest req ,HttpServletResponse res) throws IOException {
		
		
		if (email.equals("admin@gmail.com") && password.equals("admin")) {
			req.setAttribute("movie", this.mService.getAllMovies());
			 return "adminHome";
		}
		
		else if(userService.getUser(user.getEmail() , user.getPassword())!=null){
	     req.setAttribute("categories", this.cService.getAllCat());	
		 req.setAttribute("movies", this.mService.getAllMovies());	
		 	return "home";
		}
		else {
			req.setAttribute("errormsg", "Entered User Is Not Valid");
		     return "login";
		}
		
	}
	
//register page Handeler
	@RequestMapping("/register")
	 public String signup() {
		return "register";
	}
	
	//signUp user Handler
	@PostMapping("/adduser")
	public String registered(@ModelAttribute Users user ,BindingResult bindingresult) {
     userService.addUser(user);
		return "register";
	}
	
	//moviesByCategoryId
	
	@RequestMapping("/categories")
	public String getMoviesByCategoryId(int id ,HttpServletRequest req) {
	req.setAttribute("categories", this.cService.getAllCat());
	req.setAttribute("moviebyCatId", this.mService.getMoviesByCategoryId(id));	
		
		return "getMoviesByCatId";
	}
	
	//getHomeAfterReandering
	@RequestMapping("/mhome")
	public String gethome(HttpServletRequest req) {
		 req.setAttribute("categories", this.cService.getAllCat());	
		 req.setAttribute("movies", this.mService.getAllMovies());
		return "home";
	}
	

	//cartHandler
	@RequestMapping("/cart")
	public String getcart() {
   
		return "cart";
			
}
	@RequestMapping("/addToCart")
  public String addToCart( int id, HttpServletRequest req) {
	  req.setAttribute("movie", this.mService.getById(id) );
	  return "redirect:/mhome";
  }
	
	
	
	
}	
	
	
