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


</head>
<body>
<%@include file= "VentanaModalFecha.jsp"%>
<%@include file= "VentanaModalIngreso.jsp"%>

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
//forma1
    String[] partsIngreso = fechaingreso.split("-");
    String year1 = partsIngreso[0]; // 123
    String month1 = partsIngreso[1];
    String day1 = partsIngreso[2];
	String[] partsAlta = fechasalida.split("-");
    String year2 = partsAlta[0]; // 123
    String month2 = partsAlta[1];
    String day2 = partsAlta[2];
 //forma 2
 //String[] partsIngreso = fechaingreso.split("-");
 //String[] partsAlta = fechasalida.split("-");
 //Date fechaIngresoDate= new Date(partsIngreso[2],partsIngreso[0]-1,partsIngreso[2]);
 //Date fechaAltaDate= new Date(partsAlta[2],partsAlta[0]-1,partsAlta[2]);
	
		
			
		boolean dime=ingreso.insertarIngreso();
		if (Integer.parseInt(year1)>Integer.parseInt(year2) || Integer.parseInt(month1)>Integer.parseInt(month2) || Integer.parseInt(day1)>Integer.parseInt(day2)){%>
			<script type="text/javascript">		
					$('#modalFecha').modal('show');

			</script>
		<%
		}
		
		if	(dime==true){
			response.sendRedirect("MostrarIngresos.jsp");
		}
		else{%>
		<script type="text/javascript">
			$('#modalIngreso').modal('show');
			</script>
		<%	
		}
			%>
</body>
</html>