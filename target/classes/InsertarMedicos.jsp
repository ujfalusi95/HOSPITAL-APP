
<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Paciente"%>
<%@page import= "com.emilio.classes.Medico"%>
<%@page import= "java.sql.SQLException"%>
<%@page import= "java.net.URISyntaxException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file= "VentanaModalMedico.jsp"%>
	<%
		
		
		//Recogiendo parámetros
	
		String nombremedico = request.getParameter("nombremedico");
		String apellidosmedico = request.getParameter("apellidosmedico");
		String especialidad = request.getParameter("especialidad");
		String numerocolegiado = request.getParameter("numerocolegiado");
		String cargo = request.getParameter("cargo");
		String codigomedico = request.getParameter("codigomedico");
	
		
	Medico medico = new Medico(nombremedico,apellidosmedico,especialidad,numerocolegiado,cargo,codigomedico);
		
			boolean dime=medico.insertarMedico();
			if	(dime==true){
				
				response.sendRedirect("MostrarMedicos.jsp");
				
			}else{%>
			<script type="text/javascript">
				$('#modalMedico').modal('show');
				</script>
			<%	
			}
				%>
		
	
</body>
</html>