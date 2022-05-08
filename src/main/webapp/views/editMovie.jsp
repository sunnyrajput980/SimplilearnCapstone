<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ include file="adminHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- bootstrap  link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- bootstrap icons link -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
</head>


</head>
<body>
<div class="container mt-5 p-5">
<h3 class="text-center">Edit Movie</h3>
<form action="/adminEdit">
<table class="table mt-5 p-5 text-center table-striped">

  
  <thead>
    <tr class="table-secondary ">
    
      <th scope="col">id</th>
      <th scope="col">MovieName</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Active</th>
     <th scope="col">Image</th>
     <th scope="col">Delete</th>
     <th scope="col">Update</th>
    </tr>
  </thead>
   <c:forEach var="movies" items="${movie}">
  <tbody>
    <tr>
      <th scope="row"><h5>${movies.id}</h5></th>
      
      <td><h5>${movies.movieName}</h5></td>
      <td><h5>${movies.price}</h5></td>
      <td><h5>${movies.category.categoryName}</h5></td>
      <td><h5>${movies.active}</h5></td>
     <td class="text-center">
      <img src="<c:url value="/img/${movies.image}"/>"  width="200px" height=150px/>
      </td>
      <td><a class="btn btn-danger" href="/edit?id=${movies.id}"><i class="bi bi-trash3"></i>Delete</a></td>
      <td><a  class="btn btn-warning" href="/update?id=${movies.id}"><i class="bi bi-pen"></i>Update</a></td>
    </tr> 
   </tbody>
  </c:forEach>
   
</table>
</form>






</div>


</body>
</html>