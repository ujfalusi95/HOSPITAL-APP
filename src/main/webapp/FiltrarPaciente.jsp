<%@page import= "com.emilio.classes.Paciente"%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 	pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Editar Paciente</title>
 </head>
<body>
	<%
		String dni = request.getParameter("dni");
		Paciente paciente= new Paciente(dni);
		paciente.buscarPacientePorDNI();
		response.sendRedirect("MostrarPaciente.jsp");
	%>
</body>