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
<title>Editar Ingreso</title>

</head>
<body>
	<%
		
			
			String nhistorial = request.getParameter("nhistorial");
			
		
		
		Ingreso ingreso= new Ingreso(Integer.parseInt(nhistorial));
		ingreso = ingreso.buscarHistorial();
		
	%>
	
	<form action="EditarIngreso.jsp" method="post">
		<fieldset>
			<legend>Edita el paciente aqui</legend>
			<p>
				<label for="fechaingreso">Fecha de Ingreso</label>
				<input type="text" value="<%=ingreso.getFechaingreso()%>" name="fechaingreso"  />
			</p>
			<p>
				<label for="fechasalida">Fecha de Alta </label>
				<input type="text" value="<%=ingreso.getFechasalida()%>" name="fechasalida" />
			</p>
			<p>
				<label for="codigomedico">Codigo del Medico </label>
				<input type="text" value="<%=ingreso.getCodigomedico()%>" name="codigomedico" />
			</p>
			<p>
			<p>
				<label for="planta">Planta </label>
				<input type="text" value="<%=ingreso.getPlanta()%>" name="planta" />
			</p>
			<p>
				<label for="cama">Cama</label>
				<input type="text" value="<%=ingreso.getCama()%>" name="cama" />
			</p>
			<p>
				<label for="coste">Coste </label>
				<input type="text" value="<%=ingreso.getCoste()%>" name="coste" />
			</p>
			<p>
				<label for="diagnostico">Diagnostico </label>
				<input type="text" value="<%=ingreso.getDiagnostico()%>" name="diagnostico" />
			</p>
			
			<p>
				<label for="nhistorial">Numero del historial</label>
				<input type="text" value="<%=ingreso.getNhistorial()%>" name="nhistorial"  />
			</p>
			<p>
				<input type="hidden" value="<%=ingreso.getNexpediente()%>" name="nexpediente" />
			</p>
			
			
			
			
			<p>
				<input type="submit" value="Guardar" />
			</p>

		</fieldset>
	</form>

	
</body>
</html>