<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.curso.*" %>
<%@ page import = "model.entity.*"  %>

<% 
	Curso curso = (Curso) request.getAttribute("curso");
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
    <li><a href="/cursos/add" >Añadir Curso</a></li>
   	<li><a href="/users/login" >Login</a></li>
    <li><a href="/users/logout" >Logout</a></li>
</ul>
</nav>
<p>           </p>
<p>           </p>
<p>           </p>
<header>
	<span class="title">
		<h1 align="center">VER CURSO</h1>
	</span>
	<p />
	<p></p>
	<div class="table">
			<h2>Curso con ID:  <%= curso.getId() %></h2>
				<table class="vertical-table">
				<tbody>
		
							<tr>
								<th scope="row">Nombre: </th>
								<td><%= curso.getName() %></td>
							</tr>
							<tr>
								<th scope="row">Departamento: </th>
								<td><%= curso.getDepartamento() %></td>
							</tr>
							<tr>
								<th scope="row">Nivel: </th>
								<td><%= curso.getNivel() %></td>
							</tr>
						</tbody>
					</table>
					<a href="../course/view" class="btn btn-info"  role="button"  >Retornar a la lista de Cursos</a>
				</div>
	</header>
</body>
</html>