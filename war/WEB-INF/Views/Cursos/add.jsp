<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.curso.*" %>
<%@ page import="java.util.*" %>
<% boolean existe = (Boolean) request.getAttribute("existe");%>
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
		<h1 align="center">AGREGAR CURSO</h1>
	</span>
	<% if(existe){ %>
	<p>Nombre del curso ya existe </p>
	<% } %>
	<p></p>
	<form method="post" action="/course/add" onsubmit="return checkSubmit();">
		<input type="hidden" name="action" value="crearCurso" />
		<center>
		<table bordercolor = "rgb(21, 67, 96)" border="10" cellspacing="5" cellpadding="5">
			<tr>
				<td style="font-weight: bold;">Nombre del curso:</td>
				<td bgcolor="#ffffff"><input type="input" name="name" pattern="[A-Za-z0-9 ]*" minlength="3" maxlength="80" required></td>
			</tr>
			<tr>
				<td style="font-weight: bold;">Departamento al que pertenece:</td>
				<td bgcolor="#ffffff"><input type="input" name="departamento" pattern="[A-Za-z0-9 ]*" minlength="3" maxlength="80" required></td>
			</tr>
			<td style="font-weight: bold;">Nivel: </td>
				<td><select name="nivel" style="width: 150px" required>
						
						<option>Primaria</option>
						<option>Secundaria</option>
				</select></td>
			<tr>
				<td colspan="2" bgcolor="#ffffff" align="center"><input
					type="submit" value="Submit" id="btsubmit"></td>
			</tr>
		</table>
		</center>
	</form>
</header>
</body>
</html>