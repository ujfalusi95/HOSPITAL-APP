<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Paciente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		
		
		//Recogiendo parámetros
		String nombrepaciente = request.getParameter("nombrepaciente");
		String apellidospaciente = request.getParameter("apellidospaciente");
		String domicilio = request.getParameter("domiclio");
		String poblacion = request.getParameter("poblacion");
		String cp = request.getParameter("cp");
		String telefono = request.getParameter("telefono");
		String fechanacimiento = request.getParameter("fechanacimiento");
		String sexo = request.getParameter("sexo");
		String dni = request.getParameter("dni");
		String nss = request.getParameter("nss");
		
	 
	Paciente paciente = new Paciente(nombrepaciente,apellidospaciente,domicilio,poblacion,cp,telefono,fechanacimiento,sexo,dni,nss);
	
		paciente.insertarPaciente();
			
			
			response.sendRedirect("MostrarPaciente.jsp");
		
	%>
</body>
</html>