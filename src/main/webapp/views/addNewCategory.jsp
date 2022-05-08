<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="adminHeader.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container pt-5">
<div class="col-md-4 offset-md-4  pt-5 ">

<form action="/savecat" method="post">

<div class="form-group text-center ">
<h3 class="text-center">All Category</h3>

<input type="text" class="form-control" name="categoryName" placeholder="Enter Category" required>


<div class="form-group mt-4">
<button type="submit" class="btn btn-outline-dark">Add Category</button>
</div>
</div>
</form>

</div>
 <h3 class="text-center pt-3">Category</h3>
<table class="table table-bordered text-center p-2">

  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Category</th>
      <th scope="col">Edit</th>
    </tr>
  </thead>
  <tbody>
 <c:forEach var="category" items="${category}">
    <tr>
       <td scope="row"><h6>${category.id}</h6></td>
      <td><h6>${category.categoryName}</h6></td>     
       <td><a class="btn btn-danger" href="/deleteCat?id=${category.id}"><i class="bi bi-trash3"></i>Delete</a></td>
    </tr>
    </c:forEach>
  </tbody>
</table>

</div>

</body>
</html>