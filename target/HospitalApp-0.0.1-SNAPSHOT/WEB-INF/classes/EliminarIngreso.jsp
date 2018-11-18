
<%@page import= "com.emilio.classes.Ingreso"%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 	pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>EliminarIngreso</title>
 </head>
<body>
	<%
		String nhistorial = request.getParameter("nhistorial");
		Ingreso ingreso= new Ingreso(Integer.parseInt(nhistorial));
		ingreso.eliminarIngreso();
		response.sendRedirect("MostrarIngresos.jsp");
	%>
