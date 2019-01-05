<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<title>NUEVO MEDICO</title>
<link href="public/custom/css/formulario.css" rel="stylesheet">

<link href="../public/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body background="public\custom\images\hospital_perspective_perspectiva_architecture_arquitectura_woman_mujer_color-752878.png" style="width:100%;">

<div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
<div class="form">

	<form action="InsertarMedicos.jsp" method="post">
		<fieldset>
			<legend style="font-size: 2.4em;">Agregar médico</legend>
			<div>&nbsp;</div>
			<p>
			<label for="nombremedico">Nombre del médico </label>
			<input type="text" name="nombremedico" class="field" /><br></br>
			</p>
			<p>
			<label for="apellidosmedico">Apellidos del médico </label>
			<input type="text" name="apellidosmedico" class="field" /><br></br>
			</p>
			
			<p>
			<label for="especialidad">Especialidad </label> 
			<select id="especilidad" name="especialidad" class="field">
			<option>Traumatologia </option>
			<option>Hematologia</option>
			<option>Neurologia</option>
			<option>Cardiologia </option>
			
			</select><br></br>
			</p>
			<p>
			<label for="numerocolegiado">Número de colegiado</label>
			<input type="text" name="numerocolegiado" class="field"/><br></br>
			</p>
			<p>
			<label for="cargo">Cargo </label>
			<input type="text" name="cargo" class="field" /><br></br>
			</p>
			<p>
			<label for="codigomedico">Código del médico </label>
			<input type="text" name="codigomedico" class="field" /><br></br>
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