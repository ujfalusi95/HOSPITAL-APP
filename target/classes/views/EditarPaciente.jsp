
<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Paciente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Medico</title>
</head>
<body>
	<%
		
		
		String nombrepaciente = request.getParameter("nombrepaciente");
		String apellidospaciente = request.getParameter("apellidospaciente");
		String domicilio = request.getParameter("domicilio");
		String poblacion = request.getParameter("poblacion");
		String cp = request.getParameter("cp");
		String telefono = request.getParameter("telefono");
		String fechanacimiento = request.getParameter("fechanacimiento");
		String sexo = request.getParameter("sexo");
		String dni = request.getParameter("dni");
		String nss = request.getParameter("nss");
		String nhistorial = request.getParameter("nhistorial");
	    
		
			
		
		    Paciente paciente= new Paciente(nombrepaciente,apellidospaciente,domicilio,poblacion,cp,telefono,fechanacimiento,sexo,dni,nss,Integer.parseInt(nhistorial));
			paciente.editarPaciente();
			response.sendRedirect("MostrarPaciente.jsp");
		
	%>
</body>
</html>