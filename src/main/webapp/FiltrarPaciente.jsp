<%@page import= "com.emilio.classes.Paciente"%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 	pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Eliminar Paciente</title>
 </head>
<body>
	<%
		String nombrepaciente = request.getParameter("nombrepaciente");
		Paciente paciente= new Paciente(nombrepaciente);
		paciente.buscarPacientePorNombre();
		response.sendRedirect("MostrarPaciente.jsp");
	%>
</body>