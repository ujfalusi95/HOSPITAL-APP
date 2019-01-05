<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Paciente"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NUEVO PACIENTE</title>
 <link href="public/custom/css/formulario.css" rel="stylesheet">

<link href="../public/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body background="public\custom\images\hospital_perspective_perspectiva_architecture_arquitectura_woman_mujer_color-752878.png" style="width:100%;">

<div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
<div class="form">
	<form action="AgregarPaciente.jsp" method="post">
		<fieldset>
			<legend style="font-size: 2.4em;">Datos del paciente</legend>
			<p>
			<label for="nombrepaciente">Nombre del paciente </label>
			<input type="text" name="nombrepaciente" class="field"/>
			</p>
			<p>
			<label for="apellidospaciente">Apellidos del paciente </label>
			<input type="text" name="apellidospaciente" class="field"/>
			</p>
			<p>
			<label for="domicilio">Domicilio</label>
			<input type="text" name="domicilio"  class="field"/>
			</p>
			<p>
			<label for="poblacion">Población </label> 
			<select class="field" id="poblacion" name="poblacion">
			<option>Alcala de Henares </option>
			<option>Madrid </option>
			<option>Daganzo </option>
			<option>San Fernando </option>
			
			</select>
			</p>
			<p>
			<label for="cp">CP</label>
			<input type="text" name="cp" class="field"/>
			</p>
			<p>
			<label for="telefono">Teléfono </label>
			<input type="text" name="telefono" class="field" />
			</p>
			<p>
			<label for="fechanacimiento">Fecha de nacimiento </label>
			<input type="text" name="fechanacimiento" class="field" placeholder="(YYYY/MM/DD)"/>
			</p>
			<p>
			<label for="sexo">Sexo </label>
			<select class="field" id="sexo" name="sexo">
			<option>Masculino</option>
			<option>Femenino</option>
			</select>
			</p><p>
			<label for="dni">DNI </label>
			<input type="text" name="dni" class="field"/>
			</p>
			<p>
			<label for="nss">Número de la Seguridad Social</label>
			<input type="text" name="nss" class="field"/>
			</p>
			
			
			<div>&nbsp;</div>
			
			<p>
				<button type="submit" class="btn btn-primary botonForm">Guardar</button>
			</p>
			
		</fieldset>
	</form>




</div>

</body>
</html>