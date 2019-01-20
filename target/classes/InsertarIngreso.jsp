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


<script type=javascript/text>
var fechaingreso = request.getParameter("fechaingreso");
		var fechasalida = request.getParameter("fechasalida");
		var codigomedico = request.getParameter("codigomedico");
		var planta = request.getParameter("planta");
		var cama = request.getParameter("cama");
		var coste = request.getParameter("coste");
		var diagnostico = request.getParameter("diagnostico");
		var nhistorial = request.getParameter("nhistorial");
	var ingreso = new var (fechaingreso,fechasalida,codigomedico,planta,cama,Integer.parseInt(coste),diagnostico,Integer.parseInt(nhistorial)); 
	
		var dime=ingreso.insertarIngreso();
		if	(dime==true){
			
			response.sendRedirect("MostrarIngresos.jsp");
			
		}else{
			$('#miModal').modal('show');
			response.sendRedirect("FormularioAgregarIngreso.jsp");
            
		}		
	 

           </script>	
</body>
</html>