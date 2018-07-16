<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.curso.*" %>

<%@ page import="model.entity.*" %>
<%@ page import="java.util.List" %>
<% Curso r = (Curso)request.getAttribute("curso");%>

<%//Aca mandariamos junto con los datos al servlet %>
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
		<h1 align="center">EDITAR CURSO</h1>
	</span> 
	<p /> 
	<p></p>
	
	<form method="post" action="/cursos/update?cursoId=<%=r.getId() %>">
	
		<input type="hidden" name="action" value="editarCurso" />
		<table border="0" cellspacing="1" cellpadding="5" bgcolor="#CCCCCC">
		
		<h1>Id: <%= r.getId() %></h1><br>
		
		
		<tr>
				<td style="color: #ffffff; font-weight: bold;">Nombre del curso:</td>
				<td bgcolor="#ffffff"><input type="input" name="name"  maxlength ="40" value="<%=r.getName() %>"required></td>
			</tr>
			<tr>
				<td style="color: #ffffff; font-weight: bold;">Departamento al que pertenece:</td>
				<td bgcolor="#ffffff"><input type="input" name="departamento" maxlength="40" value="<%=r.getDepartamento() %>" required></td>
			</tr>
			<td style="color: #ffffff; font-weight: bold;">Nivel: </td>
				<td><select name="nivel" style="width: 150px">
						<option>Primaria</option>
						<option>Secundaria</option>
				</select></td>
				
			<tr>
				<td colspan="2" bgcolor="#ffffff" align="center"><input
					type="submit" value="Submit"></td>
			</tr>
		</table>
	</form>
</header>
</body>
</html>