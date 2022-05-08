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

<div class="container mt-5 pt-5">
<h1 class="text-center">Change Password</h1>

<div class="row">
<div class="card col-md-4 offset-md-4 p-4">
<form action="/editPassword" method="post">
<div class="form-group">
<input type="email" class="form-control"  name="email" placeholder="enter Email" required >
</div>
<div class="form-group">
<input type="password" class="form-control" name="oldPassword" placeholder="enter old Password" required>
</div>
<div class="form-group">
<input type="password" class="form-control" name="newPassword" placeholder="enter new Password" required>
</div>
<div class="form-group">
<input type="password" class="form-control" name="reEnterpass" placeholder="enter new Password again" required>
</div>
<div class="form-group text-center">
<button type="submit" class="btn btn-outline-danger btn-sm">Confirm</button>
</div>
 
 <h3 class="text-center"><a href="login">Login</a></h3>
</form>
</div>


</div>
</div>

</body>
</html>