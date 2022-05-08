package com.springboot.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.model.Category;
import com.springboot.model.Movies;
import com.springboot.service.CategoryService;
import com.springboot.service.MovieService;
import com.springboot.service.UserService;

@Controller
public class AdminController {

	@Autowired
	private MovieService mService;

	@Autowired
	private UserService uService;

	@Autowired
	private CategoryService cService;
	
	@RequestMapping("/ahome")
	public String getAdminHomePage(HttpServletRequest req) {
		req.setAttribute("movie", this.mService.getAllMovies());
		req.setAttribute("categories", this.cService.getAllCat());
		return "adminHome";
	}

	// AddMovie
	@RequestMapping("/addmovie")
	public String getAddMoviePage(HttpServletRequest req) {
	req.setAttribute("categories", this.cService.getAllCat());
		return "addNewMovie";
	}

	@PostMapping("/saveMovie")
	public String addMovie(Movies movie, HttpServletRequest req, @RequestParam("pic") MultipartFile file)
			throws IOException {

		if (file.isEmpty()) {
			System.out.println("something went wrong....!");
		}

		else {
			movie.setImage(file.getOriginalFilename());

			String upload_dir = "C:\\Users\\Cor 5\\Desktop\\CapstoneProjct\\NMS_Cinema\\src\\main\\resources\\static\\img";

			InputStream is = file.getInputStream();
			byte[] data = file.getBytes();
			is.read();
			FileOutputStream fos = new FileOutputStream(upload_dir + File.separator + file.getOriginalFilename());
			fos.write(data);
			fos.close();

			/*
			 * File savefile=new ClassPathResource("static/img").getFile();
			 * 
			 * System.out.println(savefile);
			 * 
			 * Path path =
			 * Paths.get(savefile.getAbsolutePath()+File.separator+file.getOriginalFilename(
			 * ));
			 * 
			 * Files.copy(file.getInputStream(),path ,StandardCopyOption.REPLACE_EXISTING);
			 * System.out.println("Image is Uploaded");
			 */
		}

		this.mService.addMovie(movie);
		req.setAttribute("sucessMsg", "movie added sucessfully");
		return "redirect:/addmovie";

	}
	
	//updateMovie
	
	
	  @PostMapping("/savemovie") public String updateMovie(Movies movie) {
	  movie.setImage(movie.getImage()); 
	  this.mService.addMovie(movie);
	  return "redirect:/adminEdit";
	  }
	 
	

	@RequestMapping("/adminEdit")
	public String editMovie(HttpServletRequest req) {
		req.setAttribute("movie", this.mService.getAllMovies());
		return "editMovie";

	}

	@RequestMapping("/edit")
	public String delete(int id, HttpServletRequest req) {
		this.mService.deleteById(id);
		req.setAttribute("movie", this.mService.getAllMovies());
		
		return "editMovie";

	}

	@RequestMapping("/update")
	public String updateMovie(int id, HttpServletRequest req) {
		req.setAttribute("categories",this.cService.getAllCat());
		req.setAttribute("movies", this.mService.getById(id));
		return "update";

	}

	@RequestMapping("/signedUser")
	public String getAllUser(HttpServletRequest req) {
		req.setAttribute("user", this.uService.getAllUser());

		return "signedUsers";
	}

	// Category handler
    @RequestMapping("/addcat")
    public String getAddCatPage(HttpServletRequest req) {
    	req.setAttribute("category", this.cService.getAllCat());
    	return "addNewCategory";
    }
     
    @PostMapping("/savecat")
    public String saveCat(Category category) {
    	this.cService.addCategory(category);
    	return "redirect:/addcat";
    }
    
    @GetMapping ("/deleteCat")
    public String deleteCat(int id) {
    	this.cService.deleteCat(id);
    	return "redirect:/addcat" ;
    	
    }
   
}
