<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="adminHeader.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/savemovie?id=${movies.id}" method="post">


<div class="row justify-content-between m-5 p-5">

<div class="col">
<div class="left-div form-group">
 <h4>Enter Name</h4>
 <input class="input-style form-control" type="text" name="movieName" value="${movies.movieName}" required>

</div>
</div>

<div class="col">
<div class="right-div form-group">
<h4>Enter Category</h4>
  <select class="input-style form-control" name="category" required>
  <c:forEach var="category" items="${categories}">
 <option value="${category.id}">${category.categoryName}</option>
</c:forEach>
</select>
</div>
</div>

</div>

<div class="row justify-content-between m-5 p-5">
<div class="col">
<div class="left-div form-group">
<h4>Enter Price</h4>
  <input class="input-style form-control" type="text" name="price" value="${movies.price}" required>
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

<div class="row justify-content-center p-1">
<div class="left-div form-group">

  <input class="input-style form-control" type="hidden" name="image" placeholder="pictureHere" value="${movies.image}">
</div>
</div>
<div class="text-center m-2">
<button type="submit" class="btn btn-outline-success">UPDATE MOVIE</button>
</div>
</form>



</body>
</html>