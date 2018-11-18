<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Medico"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Medico</title>

</head>
<body>
	<%
		
			
			String codigomedico = request.getParameter("codigomedico");
			
		
		
		Medico medico= new Medico(codigomedico);
		medico = medico.buscarMedicoPorCodigo();
		
	%>
	
	<form action="EditarMedico.jsp" method="post">
		<fieldset>
			<legend>Edita el paciente aqui</legend>
			<p>
				<label for="nombremedico">Nombre del Medico</label>
				<input type="text" value="<%=medico.getNombremedico()%>" name="nombremedico"  />
			</p>
			<p>
				<label for="apellidosmedico">Apellidos del Medico </label>
				<input type="text" value="<%=medico.getApellidosmedico()%>" name="apellidosmedico" />
			</p>
			
			<p>
			<label for="especialidad">Especialidad </label> 
			<select class="form-control" id="especialidad" name="especialidad">
			<option value="<%=medico.getEspecialidad()%>"><%=medico.getEspecialidad()%></option>
			<option>Traumatologia </option>
			<option>Hematologia</option>
			<option>Neurologia</option>
			<option>Cardiologia </option>
			
			
			</select>
			</p>
			<p>
				<label for="numerocolegiado">Numero Colegiado </label>
				<input type="text" value="<%=medico.getNumerocolegiado()%>" name="numerocolegiado" />
			</p>
			<p>
				<label for="cargo">Cargo </label>
				<input type="text" value="<%=medico.getCargo()%>" name="cargo" />
			</p>
			<p>
				<label for="codigomedico">Codigo Medico </label>
				<input type="text" value="<%=medico.getCodigomedico()%>" name="codigomedico" />
			</p>
			
			
			
			
			
			<p>
				<input type="submit" value="Guardar" />
			</p>

		</fieldset>
	</form>

	
</body>
</html>