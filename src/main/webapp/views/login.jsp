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
<div class="container mt-5 pt-5 ">


<h1 class="text-center">Login</h1>
 <h3 class="text-danger text-center">${errormsg}</h3>
<div class="card col-md-6 offset-md-3 p-4">
<form action="/home" method="post">
  
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
    <small id="emailHelp" class="form-text text-muted"> </small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Password" required>
  </div>
  
  <div class="form-check">
    <input type="checkbox" class="form-check-input" name="checkBox" value="checked" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Accept Terms And Condition</label>
  </div>
  
  <div class="text-center">
  <button type="submit" class="btn btn-primary mt-4">Submit</button>
  <div>

</form>

</div>
<div class="m-2">
   <h4><a href="register">New User</a></h4>
   <h4><a href="changePassword">Forgot Password?</a></h4>
</div>
</div>
   
</body>
</html>