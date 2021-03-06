<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import= "com.emilio.init.*"%> 
<%@page import= "com.emilio.classes.Paciente"%>
<%@page import= "com.emilio.classes.Ingreso"%>
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
          
     
         
        
                  
          

          <h2>GESTION DE INGRESOS </h2>
          <div>
          <fieldset >
          <div class="form-group">
          <label for="disabledTextInput"> fechaingreso</label>
          <input type="text" id="nombrepaciente" class="form-control" placeholder="Ingrese el nombre">
        </div>
        <div class="form-group">
        <label for="disabledSelect">Diagnostico</label>
        <select id="poblacion" class="form-control">
         <option value="seleccionar">seleccionar</option>
		<%
		
		List<String> listapoblacion =  Paciente.ListarTodasPoblaciones();
			for (String poblacion: listapoblacion){
		%>
		<option value="<%=poblacion%>">
 			<%=poblacion%>
 				</option>
		<% } %>
      
        </select>
            </div>
            <button id="btnBuscar" class="btn btn-primary">Buscar</button>
         </fieldset>
          </div>
          
          <hr>
          
          
          
          
          
          
          
          
         
          
             
           <div class="aligne-right">
           
           <a href="FormularioAgregarIngreso.jsp"> Nuevo Ingreso</a> 
           </div>
         
                  

          
          <div class="table-responsive">
        
 
            <table class="table table-striped table-sm" >
            
              <thead>
                <tr>
                   <th>Neexpediente</th>
                  <th>Fecha Ingreso</th>
                  <th>Fecha de alta</th>
                  <th>Codigo del medico</th>
                   <th>Planta</th>
                  <th>Cama</th>
                  <th>Coste</th>
                  <th>Diagnostico</th>
                  <th>Nhistorial</th>
               
                 <th> Acciones</th>
                </tr>
              </thead>
              <tbody>
              		<%

	       
				List<Ingreso> listaingresos = Ingreso.ListarTodosIngresos();
			for(Ingreso ingreso: listaingresos){
	%>
	
<tr>
<td><%=ingreso.getNexpediente()%></td>
<td><%=ingreso.getFechaingreso()%></td>  
<td><%=ingreso.getFechasalida()%></td>
<td><%=ingreso.getCodigomedico()%></td>
<td><%=ingreso.getPlanta()%></td>
<td><%=ingreso.getCama()%></td> 
<td><%=ingreso.getCoste()%></td>
<td><%=ingreso.getDiagnostico()%></td>
<td><%=ingreso.getNhistorial()%></td>

<td>


<a href="FormularioEditarIngreso.jsp?nhistorial=<%=ingreso.getNhistorial()%>">Editar</a>
<a href="EliminarIngreso.jsp?nhistorial=<%=ingreso.getNhistorial()%>">Eliminar</a>
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
