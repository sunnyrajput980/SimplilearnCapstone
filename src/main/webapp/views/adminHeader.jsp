<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<body>
</head>
<body>

<!--Admin home NAvbar starts  -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
  <a class="navbar-brand " href="/home"><h2>Nms_Cinema</h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav m-auto">
      
      <li class="nav-item  mr-5 ">
        <a class="nav-link" href="/ahome"><h5><i class="bi bi-house-door mr-1"></i>Home</h5><span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item mr-5 ">
     <a class="nav-link" href="/addmovie"><h5><i class="bi bi-plus-circle mr-1"></i>Add Movie</h5></a>
      </li>
      
      <li class="nav-item mr-5 ">
        <a class="nav-link" href="/adminEdit"><h5><i class="bi bi-pencil-square mr-1"></i>Edit Movie</h5></a>
      </li>
      
      
      <li class="nav-item mr-5 ">
        <a class="nav-link " href="/signedUser"><h5><i class="bi bi-person-circle mr-1"></i>signed Users</h5></a>
      </li>
      
      <li class="nav-item mr-5 ">
        <a class="nav-link" href="/addcat"><h5><i class="bi bi-power mr-1"></i>MovieCategory</h5></a>
      </li>
      
       <li class="nav-item mr-5 ">
        <a class="nav-link" href="/login"><h5><i class="bi bi-power mr-1"></i>Logout</h5></a>
      </li>
 
    </ul>
    
  </div>
</nav>
 




 <!--Admin home NAvbar ends  -->


</body>
</html>