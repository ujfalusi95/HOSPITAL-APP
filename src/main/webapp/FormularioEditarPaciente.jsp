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
<title>ACTUALIZAR PACIENTE</title>
  <link href="public/custom/css/formulario.css" rel="stylesheet">


<link href="../public/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body background="public\custom\images\hospital_perspective_perspectiva_architecture_arquitectura_woman_mujer_color-752878.png" >
	<%
		
			
			String dni = request.getParameter("dni");
			
		
		
		Paciente paciente= new Paciente(dni);
		paciente = paciente.buscarPacientePorDNI();
		
	%>
	<div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
<div class="form2">
	<form action="EditarPaciente.jsp" method="post">
		<fieldset>
			<legend style="font-size: 2.5em;">Edici�n de paciente</legend>
			<p>
				<label for="nombrepaciente">Nombre del paciente</label>
				<input type="text" value="<%=paciente.getNombrepaciente()%>" name="nombrepaciente" class="field" />
			</p>
			<p>
				<label for="apellidospaciente">Apellidos del paciente </label>
				<input type="text" value="<%=paciente.getApellidospaciente()%>" name="apellidospaciente" class="field"/>
			</p>
			<p>
				<label for="domicilio">Domicilio </label>
				<input type="text" value="<%=paciente.getDomicilio()%>" name="domicilio" class="field"/>
			</p>
			<p>
			<label for="poblacion">Poblaci�n </label> 
			<select class="field" id="poblacion" name="poblacion">
			<option value="<%=paciente.getPoblacion()%>"><%=paciente.getPoblacion()%></option>
			<option>Alcala de Henares </option>
			<option>Madrid </option>
			<option>Daganzo </option>
			<option>San Fernando </option>
			
			</select>
			</p>
			<p>
				<label for="cp">CP </label>
				<input type="text" value="<%=paciente.getCp()%>" name="cp" class="field"/>
			</p>
			<p>
				<label for="telefono">Tel�fono </label>
				<input type="text" value="<%=paciente.getTelefono()%>" name="telefono" class="field"/>
			</p>
			<p>
				<label for="fechanacimiento">Fecha de nacimiento </label>
				<input type="text" value="<%=paciente.getFechanacimiento()%>" name="fechanacimiento"class="field" placeholder="(YYYY/MM/DD)" />
			</p>
			<p>
			<label for="sexo">Sexo </label> 
			<select class="field" id="sexo" name="sexo" class="field">
			<option value="<%=paciente.getSexo()%>"><%=paciente.getSexo()%></option>
			<option>Masculino </option>
			<option>Femenino</option>
		
			
			</select>
			</p>
			<p>
				<label for="dni">DNI</label>
				<input type="text" value="<%=paciente.getDni()%>" name="dni" class="field" />
			</p>
			<p>
				<label for="nss">N�mero de la Seguridad Social</label>
				<input type="text" value="<%=paciente.getNss()%>" name="nss" class="field" />
			</p>
			<p>
				<input type="hidden" value="<%=paciente.getNhistorial()%>" name="nhistorial" class="field" />
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