<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="adminHeader.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>

 

<!-- adminHome Body starts here-->
<div class="container mt-5 p-5">
<h3 class="text-center">Welcome Admin Home</h3>

<div class="pt-5">
<table class="table text-center">
  <thead>
    <tr class="table-secondary">
    
      <th scope="col">id</th>
      <th scope="col">MovieName</th>
      <th scope="col">price</th>
      <th scope="col">category</th>
      <th scope="col">Active</th>
     <th scope="col">IMAGE</th>
    </tr>
  </thead>
  <tbody>
 <c:forEach var="movies" items="${movie}">
    <tr>
      <td class="align-middle"><h5>${movies.id}</h5></td>
      <td class="align-middle"><h5>${movies.movieName}</h5></td>
      <td class="align-middle"><h5>${movies.price}</h5></td>
      <td class="align-middle"><h5>${movies.category.categoryName}</h5></td>
      <td class="align-middle"><h5>${movies.active}</h5></td>
      <td class="text-center">
      <img src="<c:url value="/img/${movies.image}"/>" width="200px" height=150px/>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>


</div>




</div>


<!-- adminHome body Ends Here -->






<!-- </div> -->

</body>
</html>