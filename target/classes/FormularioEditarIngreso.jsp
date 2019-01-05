<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Ingreso"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Ingreso</title>
<link href="public/custom/css/formulario.css" rel="stylesheet">
<link href="public/custom/css/dashboard.css" rel="stylesheet">

<link href="../public/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body background="public\custom\images\hospital_perspective_perspectiva_architecture_arquitectura_woman_mujer_color-752878.png" >



	<%
		
			 
			String nexpediente = request.getParameter("nexpediente");
			
		
		
		Ingreso ingreso= new Ingreso(Integer.parseInt(nexpediente));
		ingreso = ingreso.buscarHistorial();
		
	%>
	<div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
<div class="form2">
	<form action="EditarIngreso.jsp" method="post">
		<fieldset>
			<legend>Edita el paciente aqui</legend>
			<p>
				<label for="fechaingreso">Fecha de Ingreso</label>
				<input type="text" value="<%=ingreso.getFechaingreso()%>" name="fechaingreso" class="field" placeholder="(YYYY/MM/DD)" />
			</p>
			<p>
				<label for="fechasalida">Fecha de Alta </label>
				<input type="text" value="<%=ingreso.getFechasalida()%>" name="fechasalida" class="field" placeholder="(YYYY/MM/DD)" />
			</p>
			<p>
				<label for="codigomedico">Codigo del Medico </label>
				<input type="text" value="<%=ingreso.getCodigomedico()%>" name="codigomedico" class="field"  />
			</p>
			<p>
			<p>
				<label for="planta">Planta </label>
				<input type="text" value="<%=ingreso.getPlanta()%>" name="planta" class="field" />
			</p>
			<p>
				<label for="cama">Cama</label>
				<input type="text" value="<%=ingreso.getCama()%>" name="cama" class="field" />
			</p>
			<p>
				<label for="coste">Coste </label>
				<input type="text" value="<%=ingreso.getCoste()%>" name="coste" class="field"  />
			</p>
			<p>
				<label for="diagnostico">Diagnostico </label>
				<input type="text" value="<%=ingreso.getDiagnostico()%>" name="diagnostico" class="field"  />
			</p>
			
			<p>
				<label for="nhistorial">Numero del historial</label>
				<input type="text" value="<%=ingreso.getNhistorial()%>" name="nhistorial" class="field"  />
			</p>
			<p>
				<input type="hidden" value="<%=ingreso.getNexpediente()%>" name="nexpediente" class="field"  />
			</p>
			
			
			
			
			<p>
				<input type="submit" value="Guardar" class="btn btn-primary"/>
			</p>

		</fieldset>
	</form>

	</div>
</body>
</html>