<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import= "com.emilio.init.*"%>
<%@page import= "com.emilio.classes.Paciente"%>
<!doctype html>
<html lang="en">  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   <!--  <link rel="icon" href="../../../../favicon.ico"> -->
 
     <title>Gestion de Pacientes</title>  
 
    <!-- Bootstrap core CSS -->
    <link href="../public/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="public/custom/css/dashboard.css" rel="stylesheet">
    
      <script src="public/custom/js/BuscadorTabla.js" type="text/javascript"></script>
  </head>

  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0"> -->
     <!--   --><a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#"></a>  -->
      <!--  <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search"> -->
     <ul class="navbar-nav px-3"> 
        <li class="nav-item text-nowrap">
        <!--  <a class="nav-link" href="#">Sign out</a> -->
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
                 Base de Datos del Hospital <span class="sr-only"></span>
                </a>
              </li>
               <li class="nav-item">
                <a class="nav-link active " href="MostrarPaciente.jsp">
                  <span data-feather="file"></span>
               PACIENTES
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="MostrarMedicos.jsp">
                  <span data-feather="file"></span>
                MÉDICOS
                </a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="MostrarIngresos.jsp">
                  <span data-feather="file"></span>
               INGRESOS
                </a>
              </li>
            
               <li class="nav-item">
                <a class="nav-link" href="GraficoCoste.jsp">
                  <span data-feather="file"></span>
              Coste por Diagnotico
                </a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="GraficoMedico.jsp">
                  <span data-feather="file"></span>
             Medico por Especialidad
                </a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="GraficoPaciente.jsp">
                  <span data-feather="file"></span>
             Pacientes por Poblacion
                </a>
              </li>
            </ul>
</div>
</nav>
         <div class="col-md-8 ml-sm-auto col-lg-10 pt-3 px-3">
          
     
          <img src="https://whispering-retreat-65233.herokuapp.com/GraficoPaciente.jsp" width="900" height="380"/> 
        
                  
          

          <h2>GESTION DE PACIENTES </h2>
          <div>
          
          
          <div class="form-group">
         
         
          <label>BUSCADOR</label>
          <p>
          <input  id="searchTerm" type="text" onkeyup="doSearch()" class="btn btn-primary" >
          </p>
        </div>
      
          </div>
          
          <hr>
          
          
          
          
          
          
          
          
         
          
             
           <div class="aligne-right">
           
           <a href="FormularioAgregarPaciente.jsp"> Nuevo Paciente</a> 
           </div>
         
                  

          
          <div class="table-responsive">
        
 
            <table class="table table-striped table-sm"  id="datos">
            
              <thead>
                <tr>
                 <th>Numero Historial Clinico</th>
                  <th>Nombre Paciente</th>
                  <th>Apellidos Paciente</th>
                  <th>Domiclio</th>
                   <th>Poblacion</th>
                  <th>CP</th>
                  <th>Telefono</th>
                  <th>Fecha de Nacimiento</th>
                  <th>Sexo</th>
                  <th>DNI</th>
                  <th>Numero de la Seguridad Social</th>
                 
                  <th> Acciones</th>
                </tr>
              </thead>
              <tbody>
              		<%

	       
				List<Paciente> listapaciente = Paciente.ListarTodosPacientes();
			for(Paciente paciente: listapaciente){
	%>
	
<tr>
<td><%=paciente.getNhistorial()%></td> 
<td><%=paciente.getNombrepaciente()%></td>
<td><%=paciente.getApellidospaciente()%></td>
<td><%=paciente.getDomicilio()%></td>
<td><%=paciente.getPoblacion()%></td>
<td><%=paciente.getCp()%></td>
<td><%=paciente.getTelefono()%></td>
<td><%=paciente.getFechanacimiento()%></td>
<td><%=paciente.getSexo()%></td>
<td><%=paciente.getDni()%></td>
<td><%=paciente.getNss()%></td>

<td>


<a href="FormularioEditarPaciente.jsp?dni=<%=paciente.getDni()%>">Editar</a>
<a href="EliminarPaciente.jsp?dni=<%=paciente.getDni()%>">Eliminar</a>
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

    <!-- Graphs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
   
    
  </body>
</html>
