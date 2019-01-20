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

<%-- 	<% --%>

<!-- 		String fechaingreso = request.getParameter("fechaingreso"); -->
<!-- 		String fechasalida = request.getParameter("fechasalida"); -->
<!-- 		String codigomedico = request.getParameter("codigomedico"); -->
<!-- 		String planta = request.getParameter("planta"); -->
<!-- 		String cama = request.getParameter("cama"); -->
<!-- 		String coste = request.getParameter("coste"); -->
<!-- 		String diagnostico = request.getParameter("diagnostico"); -->
<!-- 		String nhistorial = request.getParameter("nhistorial"); -->
		
	 
<!-- 	Ingreso ingreso = new Ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,Integer.parseInt(coste),diagnostico,Integer.parseInt(nhistorial));  -->
	
<!-- 		boolean dime=ingreso.insertarIngreso(); -->
<!-- 		if	(dime==true){ -->
			
<!-- 			response.sendRedirect("MostrarIngresos.jsp"); -->
<!-- 			out.println("El médico o el paciente insertado se ha creado"); -->
<!-- 		}else{ -->
<%-- 			%> --%>
<script type=javascript/text>
var fechaingreso = request.getParameter("fechaingreso");
		var fechasalida = request.getParameter("fechasalida");
		var codigomedico = request.getParameter("codigomedico");
		var planta = request.getParameter("planta");
		var cama = request.getParameter("cama");
		var coste = request.getParameter("coste");
		var diagnostico = request.getParameter("diagnostico");
		var nhistorial = request.getParameter("nhistorial");
		
	 
	Ingreso ingreso = new Ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,Integer.parseInt(coste),diagnostico,Integer.parseInt(nhistorial)); 
	
		var dime=ingreso.insertarIngreso();
		if	(dime==true){
			
			response.sendRedirect("MostrarIngresos.jsp");
			
		}else{
			
			
            $('#miModal').modal('show');
		}
           </script>

<div class="modal fade" id="miModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Error al insertar el ingreso</h4>
			</div>
			<div class="modal-body">
				El código de médico o el número de historial de paciente insertado no existe.
			</div>
		</div>
	</div>
</div>

	
</body>
</html>