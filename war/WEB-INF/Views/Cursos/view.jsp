<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.curso.*" %>
<%@ page import="java.util.List" %>
<%@ page import="model.entity.*" %>
<%
Curso curso = (Curso)request.getAttribute("curso");
List<Curso> listas = (List<Curso>) request.getAttribute("listas");
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
	<%
		if (listas!=null && listas.size()>0){
	%>

	<table border="0" cellspacing="1" cellpadding="5"
		width="100%">
		<tr bgcolor="#A84087">
			<td style="color: #ffffff; font-weight: bold;">ID</td>
			<td style="color: #ffffff; font-weight: bold;">Nombre</td>
			<td style="color: #ffffff; font-weight: bold;">Departamento</td>
			<td style="color: #ffffff; font-weight: bold;">Nivel</td>
		</tr>
		<%
			for ( Curso c: listas) {
		%>
		<tr>
		<td><%=c.getId() %></td>
		<td><%=c.getName()%></td>
		<td> <%=c.getDepartamento() %></td>
		<td><%=c.getNivel()%></td>
			<td>
				<span><a href="/course/find?cursoId=<%= c.getId() %>">Ver mas</a></span>
				<span><a href="/course/delete?cursoId=<%= c.getId() %>">Eliminar</a></span>
				<span><a href="/course/update?cursoId=<%= c.getId() %>">Actualizar</a></span>
			</td>
			</tr>
		<%
			}
		%>
	</table>

	<%
		} else{
	%>
		<tr><td>No hay cursos que mostrar</td></tr>
	<%} %>
	
</header>
</body>
</html>
