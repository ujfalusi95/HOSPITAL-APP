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
<title>NUEVO INGRESO</title>
<link href="public/custom/css/formulario.css" rel="stylesheet"> 

<link href="../public/dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

</head>
<body background="public\custom\images\hospital_perspective_perspectiva_architecture_arquitectura_woman_mujer_color-752878.png">

<div>

	<form action="InsertarIngreso.jsp" method="post">
	<div>&nbsp;</div>
		<fieldset>
		
			<legend style="font-size: 2.4em;">Nuevo ingreso</legend>
			<div>&nbsp;</div>
			<p>
			<label for="fechaingreso">Fecha de ingreso </label>
			
			<input type="date" name="fechaingreso" class="field" placeholder="(YYYY/MM/DD)" id="fechaingresoid" />
			  
			

			</p>
			<p>
			<label for="fechasalida">Fecha de alta </label>
			<input type="date" name="fechasalida" class="field" placeholder="(YYYY/MM/DD)" id="fechaaltaid" />
			<span id="avisoFechas" style="color:#dd0000; font-weight:bold;"></span>
			</p>
			<script type="javascript/text">
            var fechaingreso1=$("#fechaingresoid").val.split('/');
            var fechaalta1=$("#fechaaltaid").val.split('/');
 var fechaingresodate=new Date(fechaingreso1[2],fechaingreso1[0]-1,fechaingreso1[1]);
 var fechaaltadate=new Date(fechaalta1[2],fechaalta1[0]-1,fechaingreso1[1]);
 if(fechaingresodate>fechaaltadate){
 $("#avisoFechas").html("La fecha del ingreso no puede ser posterior al alta");
 }
</script>
			<p>
			<label for="codigomedico">Código del médico</label>
			<input type="number" name="codigomedico" class="field"/>
			</p>
			<p>
			<label for="planta">Planta</label>
			<input type="number" name="planta" class="field" />
			</p>
			<p>
			<label for="cama">Cama</label>
			<input type="number" name="cama" class="field"/>
			</p>
			<p>
			<label for="coste">Coste</label>
			<input type="number" name="coste" class="field" />
			</p>
			<p>
			<label for="diagnostico">Diagnóstico </label>
			<input type="text" name="diagnostico" class="field" />
			</p>
			<p>
			<label for="nhistorial">N del historial </label>
			<input type="text" name="nhistorial" class="field"/>
			</p>
			<div>&nbsp;</div>
			<p>
				<button type="submit" class="btn btn-primary botonForm">Guardar</button>
<!-- 				<input type="submit" value="Guardar" class="btn btn-primary botonForm" align="center"/> -->
			</p>
			
		</fieldset>
	</form>




</div>



</body>
</html>