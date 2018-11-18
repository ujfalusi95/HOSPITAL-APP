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




</head>
<body>
<div class="content center padding">
	<form action="InsertarMedicos.jsp" method="post">
		<fieldset>
			<legend>Agregar Medico</legend>
			<p>
			<label for="nombremedico">Nombre del Medico </label>
			<input type="text" name="nombremedico" />
			</p>
			<p>
			<label for="apellidosmedico">Apellidos del Medico </label>
			<input type="text" name="apellidosmedico" />
			</p>
			
			<p>
			<label for="especialidad">Especialidad: </label> 
			<select class="form-control" id="especilidad">
			<option>Traumatologia </option>
			<option>Hematologia</option>
			<option>Neurologia</option>
			<option>Cardiologia </option>
			
			</select>
			</p>
			<p>
			<label for="numerocolegiado">Numero de Colegiado</label>
			<input type="text" name="numerocolegiado" />
			</p>
			<p>
			<label for="cargo">Cargo </label>
			<input type="text" name="cargo" />
			</p>
			<p>
			<label for="codigomedico">Codigo Medico </label>
			<input type="text" name="codigomedico" />
			</p>
			
			
			
			
			<p>
				<input type="submit" value="Guardar"/>
			</p>
			
		</fieldset>
	</form>




</div>

</body>
</html>