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
<div id="openModal" class="modalDialog">
	<div>
		<a href="#close" title="Close" class="close">X</a>
		<h2>Mi modal</h2>
		<p>Este es un ejemplo de modal, creado gracias al poder de CSS3.</p>
		<p>Puedes hacer un montón de cosas aquí, como alertas o incluso crear un formulario de registro aquí mismo.</p>
	</div>
</div>
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
	
		boolean dime=ingreso.insertarIngreso();
		if	(dime==true){
			
			response.sendRedirect("MostrarIngresos.jsp");
			out.println("El médico o el paciente insertado se ha creado");
		}else{
			%>
			<script type=javascript/text>
			$('#openModal').modal('show');
           </script>
		
		<%	
			response.sendRedirect("FormularioAgregarIngreso.jsp");
			out.println("El médico o el paciente insertado no existe");
		}
	%>


	
</body>
</html>