<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ include file="adminHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5 pt-5">
<h3 class="text-center">All Signed Users</h3>

<table class="table table-bordered mt-5 p-5 text-center">
  <thead>
    <tr>
    
      <th scope="col">id</th>
      <th scope="col">Name</th>
      <th scope="col">email</th>
      <th scope="col">MobileNumber</th>
     
    </tr>
  </thead>
  <tbody>
 <c:forEach var="users" items="${user}">
    <tr>
      <th scope="row">${users.id}</th>
      
      <td>${users.name}</td>
      <td>${users.email}</td>
      <td>${users.mobileNumber}</td>
     
    </tr>
    </c:forEach>
  </tbody>
</table>


</div>

</body>
</html>