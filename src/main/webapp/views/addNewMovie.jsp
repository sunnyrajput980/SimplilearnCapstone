<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="adminHeader.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container m-5 p-5">
<h3 class="text-center">Add New Movie</h3>

<form action="/saveMovie" method="post" enctype="multipart/form-data">

<h3 class="text-center text-danger">${errorMsg} </h3>
<h3 class="text-center text-danger">${successMsg}</h3>

<div class="row justify-content-between mt-2 p-5">

<div class="col">
<div class="left-div form-group">
 <h4>Enter Name</h4>
 <input class="input-style form-control" type="text" name="movieName" placeholder="Enter Name" required>

</div>
</div>

<div class="col">
<div class="right-div form-group">
<h4>Enter Category</h4>
  <select class="input-style form-control" name="category">
  <c:forEach var="category" items="${categories}">   
   <option value="${category.id}">${category.categoryName}</option>
    </c:forEach>
   </select>
</div>
</div>

</div>

<div class="row justify-content-between mt-2 p-5">
<div class="col">
<div class="left-div form-group">
<h4>Enter Price</h4>
  <input class="input-style form-control" type="text" name="price" placeholder="Enter price" required>
 

</div>
</div>

<div class="col">
<div class="right-div form-group">
<h4>Active</h4>
   <select class="input-style form-control" name="active">
   <option value="Yes">Yes</option>
  <option value="NO">NO</option>
   </select>

</div>
</div>

</div>


<div class="row justify-content-center p-3">
<div class="left-div form-group">
<h4>Apply Picture</h4>
  <input class="input-style form-control" type="file" name="pic" placeholder="pictureHere" required>
</div>
</div>
<div class="text-center m-3">
<button type="submit" class="btn btn-outline-success ">ADD MOVIE</button>
</div>
</form>
</div>
</body>
</html>