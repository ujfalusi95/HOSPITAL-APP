<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Paciente"%>
<%@page import= "com.emilio.classes.Medico"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   <!--  <link rel="icon" href="../../../../favicon.ico"> -->

     <title>Dashboard Template for Bootstrap</title>  

    <!-- Bootstrap core CSS -->
    <link href="../public/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="public/custom/css/dashboard.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#"></a>
      <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="#">Sign out</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link active" href="MostrarPaciente.jsp">
                  <span data-feather="home"></span>
                  Pacientes <span class="sr-only"></span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="MostrarMedicos.jsp">
                  <span data-feather="file"></span>
                Medicos
                </a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="MostrarIngresos.jsp">
                  <span data-feather="file"></span>
               Ingresos
                </a>
              </li>
            </ul>
</div>
        </nav>

         <div class="col-md-8 ml-sm-auto col-lg-10 pt-3 px-3">
          
     
         
        
                  
          

          <h2>GESTION DE MEDICOS </h2>
          <div>
          <fieldset >
          <div class="form-group">
          <label for="disabledTextInput"> Nombre del medico</label>
          <input type="text" id="nombrepaciente" class="form-control" placeholder="Ingrese el nombre">
        </div>
        <div class="form-group">
        <label for="disabledSelect">Especialidad</label>
        <select id="poblacion" class="form-control">
         <option value="seleccionar">seleccionar</option>
		<%
		
		List<String> listaespecialidades =  Medico.ListarTodasEspecialidades();
			for (String especialidad: listaespecialidades){
		%>
		<option value="<%=especialidad%>">
 			<%=especialidad%>
 				</option>
		<% } %>
      
        </select>
            </div>
            <button id="btnBuscar" class="btn btn-primary">Buscar</button>
         </fieldset>
          </div>
          
          <hr>
          
          
          
          
          
          
          
          
         
          
             
           <div class="aligne-right">
           
           <a href="FormularioAgregarMedicos.jsp"> Nuevo Medico</a> 
           </div>
         
                  

          
          <div class="table-responsive">
        
 
            <table class="table table-striped table-sm" >
            
              <thead>
                <tr>
                 <th>Nombre del Medico</th>
                  <th>Apellidos del Medico</th>
                  <th>Especialidad</th>
                  <th>Numero de colegiado</th>
                  <th>Cargo</th>
                  <th>Codigo del Medico</th>
               
                 
                  <th> Acciones</th>
                </tr>
              </thead>
              <tbody>
              		<%

	       
				List<Medico> listamedico = Medico.ListarTodosMedicos();
			for(Medico medico: listamedico){
	%>
	
<tr>
<td><%=medico.getNombremedico()%></td> 
<td><%=medico.getApellidosmedico()%></td>
<td><%=medico.getEspecialidad()%></td>
<td><%=medico.getNumerocolegiado()%></td>
<td><%=medico.getCargo()%></td>
<td><%=medico.getCodigomedico()%></td>


<td>


<a href="FormularioEditarMedico.jsp?codigomedico=<%=medico.getCodigomedico()%>">Editar</a>
<a href="EliminarMedico.jsp?codigomedico=<%=medico.getCodigomedico()%>">Eliminar</a>
</td>
</tr>
	<%
			
		}
		
		
	%>
	 </tbody>
            </table>
          </div>
        </div>
     
    </div>
 </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> -->
 
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Graphs 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>
      var ctx = document.getElementById("myChart");
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
          datasets: [{
            data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
            lineTension: 0,
            backgroundColor: 'transparent',
            borderColor: '#007bff',
            borderWidth: 4,
            pointBackgroundColor: '#007bff'
          }]
        },
        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: false
              }
            }]
          },
          legend: {
            display: false,
          }
        }
      });
    </script> -->
    
  </body>
</html>
