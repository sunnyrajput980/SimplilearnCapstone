/*
 * package com.springboot.controller;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.RequestParam;
 * 
 * import com.springboot.model.Users; import com.springboot.service.UserService;
 * 
 * @org.springframework.web.bind.annotation.RestController public class
 * RestController {
 * 
 * @Autowired UserService userService;
 * 
 * @GetMapping("/") public String home() { return "WELCOME TO HOME PAGE"; }
 * 
 * 
 * @GetMapping("/add-user") public String adduser( @RequestParam String name
 * , @RequestParam String email , @RequestParam String mobileNumber ,
 * 
 * @RequestParam String question, @RequestParam String answer , @RequestParam
 * String password ) {
 * 
 * Users user=new Users(name , email , Long.parseLong(mobileNumber) , question ,
 * answer , password); userService.addUser(user); return
 * "User Sucessfully Added"; }
 * 
 * 
 * 
 * 
 * }
 */
