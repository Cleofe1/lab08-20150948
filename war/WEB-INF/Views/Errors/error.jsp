<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ page import="model.entity.Resource" %>
<%
	Resource r = (Resource) request.getAttribute("resource");
%>
<!DOCTYPE html>
<html>
<head>
<title>ACL</title>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

<link rel="stylesheet" href="/estilo.css" />

</head>

<body>

 
 <nav class="dropdownmenu">
<ul>
	<li><a href="/index.html">Pagina Principal</a></li>
    <li><a href="/roles" >Roles</a></li>
    <li><a href="/users" >Users</a></li>
    <li><a href="/resources">Resources</a></li>
    <li><a href="/access" >Access</a></li>
    <li><a href="/cursos" >Cursos</a></li>
   	<li><a href="/users/login" >Login</a></li>
    <li><a href="/users/logout" >Logout</a></li>
</ul>
</nav>
<p>           </p>
<p>           </p>
<p>           </p>

<p>Error en el proceso</p>
<a href="/index.html" role="button"  >Retornar</a>
</body>
</html>