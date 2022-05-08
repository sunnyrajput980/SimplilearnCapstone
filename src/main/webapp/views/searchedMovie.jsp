<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="homeheader.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container mt-5 pt-5">
<div class="row">
<div class="col-sm-3">

<h4>Categories</h4>


<table class="table table-bordered bg-light">
<tr>
 <th>
 <ul>
 <a href="/mhome"><li class="list-group-items">All Movies</li></a></th> 
<tr>

<c:forEach var="category" items="${categories}">
<tr>

<th>
 
<a href="/categories?id=${category.id}"><li class="list-group-items">${category.categoryName}</li></a>
</ul>
</th>
</tr>
</c:forEach>
</table>



</div>

<div class="col-sm-9">
<c:forEach var="movie" items="${movies}">
<div class="card bg-light mt-2">


<div class="row no-gutter">

<div class="col-sm-5 d-flex justify-content-center">
<img src="<c:url value="/img/${movie.image}"/> " height="100%vh" width="250px" > 
</div>

<div class="col-sm-7 d-flex justify-content-center">
  <div class="card-body ">
  <h5 class="card-title">${movie.movieName}</h5>
  <h5><span>price : ${movie.price}</span></h5>
  <h5><span>${movie.category.categoryName}</span></h5>
  <a href="/" class="btn btn-outline-danger">Buy Now</a>
  <a href="/addToCart?id=${movie.id}" class="btn btn-outline-warning">Add To Cart</a> 
  </div>
</div>

</div>

</div>
</c:forEach>
</div>

</div>

</div>


</body>
</html>