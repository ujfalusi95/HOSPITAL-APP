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
<title>Actualizar Paciente</title>
  
</head>
<body>
	<%
		
			
			String nhistorial = request.getParameter("nhistorial");
			
		
		
		Paciente paciente= new Paciente(Integer.parseInt(nhistorial));
		paciente = paciente.buscarPacientePorDNI();
		
	%>
	
	<form action="EditarPaciente.jsp" method="post">
		<fieldset>
			<legend>Edita el paciente aqui</legend>
			<p>
				<label for="nombrepaciente">Nombre del paciente</label>
				<input type="text" value="<%=paciente.getNombrepaciente()%>" name="nombrepaciente"  />
			</p>
			<p>
				<label for="apellidospaciente">Apellidos del paciente </label>
				<input type="text" value="<%=paciente.getApellidospaciente()%>" name="apellidospaciente" />
			</p>
			<p>
				<label for="domicilio">Domicilio </label>
				<input type="text" value="<%=paciente.getDomicilio()%>" name="domicilio" />
			</p>
			<p>
			<label for="poblacion">Poblacion: </label> 
			<select class="form-control" id="poblacion" name="poblacion">
			<option value="<%=paciente.getPoblacion()%>"><%=paciente.getPoblacion()%></option>
			<option>Alcala de Henares </option>
			<option>Madrid </option>
			<option>Daganzo </option>
			<option>San Fernando </option>
			
			</select>
			</p>
			<p>
				<label for="cp">CP </label>
				<input type="text" value="<%=paciente.getCp()%>" name="cp" />
			</p>
			<p>
				<label for="telefono">Telefono </label>
				<input type="text" value="<%=paciente.getTelefono()%>" name="telefono" />
			</p>
			<p>
				<label for="fechanacimiento">Fecha Nacimiento </label>
				<input type="text" value="<%=paciente.getFechanacimiento()%>" name="fechanacimiento" />
			</p>
			<p>
			<label for="sexo">Sexo </label> 
			<select class="form-control" id="sexo" name="sexo">
			<option value="<%=paciente.getSexo()%>"><%=paciente.getSexo()%></option>
			<option>Masculino </option>
			<option>Femenino</option>
		
			
			</select>
			</p>
			<p>
				<label for="dni">DNI</label>
				<input type="text" value="<%=paciente.getDni()%>" name="dni"  />
			</p>
			<p>
				<label for="nss">Numero de la seguridad Social</label>
				<input type="text" value="<%=paciente.getNss()%>" name="nss" />
			</p>
			<p>
				<input type="hidden" value="<%=paciente.getNhistorial()%>" name="nhistorial" />
			</p>
			
			
			
			
			
			<p>
				<input type="submit" value="Guardar" />
			</p>

		</fieldset>
	</form>

	
</body>
</html>