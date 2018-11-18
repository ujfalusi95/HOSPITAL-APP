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




</head>
<body>
<div class="content center padding">
	<form action="AgregarPaciente.jsp" method="post">
		<fieldset>
			<legend>Agregar Paciente</legend>
			<p>
			<label for="nombrepaciente">Nombre del Paciente </label>
			<input type="text" name="nombrepaciente" />
			</p>
			<p>
			<label for="apellidospaciente">Apellidos del Paciente </label>
			<input type="text" name="apellidospaciente" />
			</p>
			<p>
			<label for="domicilio">Domicilio</label>
			<input type="text" name="domicilio" />
			</p>
			<p>
			<label for="poblacion">Poblacion: </label> 
			<select class="form-control" id="poblacion">
			<option>Alcala de Henares </option>
			<option>Madrid </option>
			<option>Daganzo </option>
			<option>San Fernando </option>
			
			</select>
			</p>
			<p>
			<label for="cp">CP</label>
			<input type="text" name="cp" />
			</p>
			<p>
			<label for="telefono">Telefono </label>
			<input type="text" name="telefono" />
			</p>
			<p>
			<label for="fechanacimiento">Fecha de nacimiento </label>
			<input type="text" name="fechanacimiento" />
			</p>
			<p>
			<label for="sexo">Sexo </label>
			<select class="form-control" id="sexo">
			<option>Masculino</option>
			<option>Femenino</option>
			</select>
			</p><p>
			<label for="dni">DNI </label>
			<input type="text" name="dni" />
			</p>
			<p>
			<label for="nss">Numero de la seguridad social</label>
			<input type="text" name="nss" />
			</p>
			
			
			
			
			<p>
				<input type="submit" value="Guardar"/>
			</p>
			
		</fieldset>
	</form>




</div>

</body>
</html>