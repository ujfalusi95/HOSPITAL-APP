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

</head>
<body background="public\custom\images\hospital_perspective_perspectiva_architecture_arquitectura_woman_mujer_color-752878.png" style="width:100%; height:100%;">

<div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
<div>

	<form action="InsertarIngreso.jsp" method="post">
		<fieldset>
			<legend>Nuevo Ingreso</legend>
			<p>
			<label for="fechaingreso">Fecha de Ingreso </label>
			<input type="text" name="fechaingreso" class="field" placeholder="(YYYY/MM/DD)" />
			</p>
			<p>
			<label for="fechasalida">Fecha de salida </label>
			<input type="text" name="fechasalida" class="field" placeholder="(YYYY/MM/DD)"/>
			</p>
			<p>
			<label for="codigomedico">Codigo del Medico</label>
			<input type="text" name="codigomedico" class="field"/>
			</p>
			<p>
			<label for="planta">Planta</label>
			<input type="text" name="planta" class="field" />
			</p>
			<p>
			<label for="cama">Cama</label>
			<input type="text" name="cama" class="field"/>
			</p>
			<p>
			<label for="coste">Coste</label>
			<input type="text" name="coste" class="field" />
			</p>
			<p>
			<label for="diagnostico">Diagnostico </label>
			<input type="text" name="diagnostico" class="field" />
			</p>
			<p>
			<label for="nhistorial">N del historial </label>
			<input type="text" name="nhistorial" class="field"/>
			</p>
			
			<p>
				<input type="submit" value="Guardar" class="btn btn-primary"/>
			</p>
			
		</fieldset>
	</form>




</div>

</body>
</html>