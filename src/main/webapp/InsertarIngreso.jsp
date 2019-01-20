<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Ingreso"%>
<%@page import= "static java.lang.System.out"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nuevo Ingreso</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>


<%

		String fechaingreso = request.getParameter("fechaingreso");
		String fechasalida = request.getParameter("fechasalida");
		String codigomedico = request.getParameter("codigomedico");
		String planta = request.getParameter("planta");
		String cama = request.getParameter("cama");
		String coste = request.getParameter("coste");
		String diagnostico = request.getParameter("diagnostico");
		String nhistorial = request.getParameter("nhistorial");
		
	 
	Ingreso ingreso = new Ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,Integer.parseInt(coste),diagnostico,Integer.parseInt(nhistorial)); 
	
		boolean dime=ingreso.insertarIngreso();
		if	(dime==true){
			
			response.sendRedirect("MostrarIngresos.jsp");
			
		}else{
			response.sendRedirect("FormularioAgregarIngreso.jsp");
		}
			%>
</body>
</html>