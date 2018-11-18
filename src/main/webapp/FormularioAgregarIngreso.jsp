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
<title>NUEVO PACIENTE</title>

 


</head>
<body>
<div class="content center padding">
	<form action="InsertarIngreso.jsp" method="post">
		<fieldset>
			<legend>Nuevo Ingreso</legend>
			<p>
			<label for="fechaingreso">Fecha de Ingreso </label>
			<input type="text" name="fechaingreso" />
			</p>
			<p>
			<label for="fechasalida">Fecha de salida</label>
			<input type="text" name="fechasalida" />
			</p>
			<p>
			<label for="codigomedico">Codigo del Medico</label>
			<input type="text" name="codigomedico" />
			</p>
			<p>
			<label for="planta">Planta</label>
			<input type="text" name="planta" />
			</p>
			<p>
			<label for="cama">Cama</label>
			<input type="text" name="cama" />
			</p>
			<p>
			<label for="coste">Coste</label>
			<input type="text" name="coste" />
			</p>
			<p>
			<label for="diagnostico">Diagnostico </label>
			<input type="text" name="diagnostico" />
			</p>
			<p>
			<label for="nhistorial">N del historial </label>
			<input type="text" name="nhistorial" />
			</p>
			
			<p>
				<input type="submit" value="Guardar"/>
			</p>
			
		</fieldset>
	</form>




</div>

</body>
</html>