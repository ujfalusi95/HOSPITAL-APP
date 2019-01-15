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
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

</head>
<body background="public\custom\images\hospital_perspective_perspectiva_architecture_arquitectura_woman_mujer_color-752878.png">

<div>

	<form action="InsertarIngreso.jsp" method="post">
	<div>&nbsp;</div>
		<fieldset>
		
			<legend style="font-size: 2.4em;">Nuevo ingreso</legend>
			<div>&nbsp;</div>
			<p>
			<label for="fechaingreso">Fecha de ingreso </label>
			 <div  id="datetimepicker1">
			<input type="text" name="fechaingreso" class="field" placeholder="(YYYY/MM/DD)" />
			  <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span> </span>
                    </div>
			<script>
			$(function () {
				   var bindDatePicker = function() {
						$(".date").datetimepicker({
				        format:'YYYY-MM-DD',
							icons: {
								time: "fa fa-clock-o",
								date: "fa fa-calendar",
								up: "fa fa-arrow-up",
								down: "fa fa-arrow-down"
							}
						}).find('input:first').on("blur",function () {
							// check if the date is correct. We can accept dd-mm-yyyy and yyyy-mm-dd.
							// update the format if it's yyyy-mm-dd
							var date = parseDate($(this).val());

							if (! isValidDate(date)) {
								//create date based on momentjs (we have that)
								date = moment().format('YYYY-MM-DD');
							}

							$(this).val(date);
						});
					}
				   
				   var isValidDate = function(value, format) {
						format = format || false;
						// lets parse the date to the best of our knowledge
						if (format) {
							value = parseDate(value);
						}

						var timestamp = Date.parse(value);

						return isNaN(timestamp) == false;
				   }
				   
				   var parseDate = function(value) {
						var m = value.match(/^(\d{1,2})(\/|-)?(\d{1,2})(\/|-)?(\d{4})$/);
						if (m)
							value = m[5] + '-' + ("00" + m[3]).slice(-2) + '-' + ("00" + m[1]).slice(-2);

						return value;
				   }
				   
				   bindDatePicker();
				 });

			
		</script>

			</p>
			<p>
			<label for="fechasalida">Fecha de salida </label>
			<input type="text" name="fechasalida" class="field" placeholder="(YYYY/MM/DD)"/>
			</p>
			<p>
			<label for="codigomedico">Código del médico</label>
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
			<label for="diagnostico">Diagnóstico </label>
			<input type="text" name="diagnostico" class="field" />
			</p>
			<p>
			<label for="nhistorial">N del historial </label>
			<input type="text" name="nhistorial" class="field"/>
			</p>
			<div>&nbsp;</div>
			<p>
				<button type="submit" class="btn btn-primary botonForm">Guardar</button>
<!-- 				<input type="submit" value="Guardar" class="btn btn-primary botonForm" align="center"/> -->
			</p>
			
		</fieldset>
	</form>




</div>

</body>
</html>