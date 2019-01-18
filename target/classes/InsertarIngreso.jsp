<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Ingreso"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nuevo Ingreso</title>
</head>
<body>
	<%
		 
		
		//Recogiendo parámetros
		String fechaingreso = request.getParameter("fechaingreso");
		String fechasalida = request.getParameter("fechasalida");
		String codigomedico = request.getParameter("codigomedico");
		String planta = request.getParameter("planta");
		String cama = request.getParameter("cama");
		String coste = request.getParameter("coste");
		String diagnostico = request.getParameter("diagnostico");
		String nhistorial = request.getParameter("nhistorial");
		
	 
	Ingreso ingreso = new Ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,Integer.parseInt(coste),diagnostico,Integer.parseInt(nhistorial)); 
	
		ingreso.insertarIngreso();
		if	(ingreso.insertarIngreso()==true){
			
			response.sendRedirect("MostrarIngresos.jsp");
			out.println("El médico o el paciente insertado se ha creado");
		}else{
			out.println("El médico o el paciente insertado no existe");
		}
		out.println("HOOOOOOOOOOLLAAAAAAAAAAAAA");
	%>
	
</body>
</html>