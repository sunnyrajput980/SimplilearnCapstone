<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>


<div class='container p-5 mt-5 text-center'>
 <h1 >Sign UP</h1>
  <div class='signup mt-2 pt-2'>

   <div class="card col-md-6 offset-md-3 p-4">
   
    <form action="/adduser" method="post">
   
     <div class="form-group">
    <input type="text" name="name" placeholder="Enter Name" class="form-control" required>
   </div>
   
   <div class="form-group">
    <input type="email"  name="email" placeholder="Enter Email" class="form-control"  required>
   </div>
   
      <div class="form-group">
    <input type="text" name="mobileNumber" placeholder="Enter Mobile Number"  class="form-control" required>
    </div>
    
        <div class="form-group">
    <select name="securityQuestion" class="form-control" required>
    <option type="text" value="What Was your First Car?">What was your First Car?</option>
    <option type="text" value="which is  your Favorite artist?">which is  your Favorite artist?</option>
    <option type="text" value="What is the name of your first pet?">What is the name of your first pet?</option>
    <option type="text" value="what is your favorite color?">what is your favorite color?</option>
    </select>
      <input type="text" name="answer" placeholder="Enter answer" class="form-control"  required> 
   </div>
      
      <div class="form-group">
    <input type="password" name="password" placeholder="Enter Password" class="form-control" required>
    </div>
    
    <input type="submit" value="signup" class="btn btn-outline-success">
    </form>
    </div>
    </div>
       <h2><a href="login">Login</a></h2>
</body>
</html>