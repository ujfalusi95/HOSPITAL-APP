<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import= "com.emilio.init.*"%> 
<%@page import= "com.emilio.classes.Paciente"%>
<%@page import= "com.emilio.classes.Ingreso"%>
<%@ page import="java.util.*,java.sql.*" %>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="org.jfree.chart.ChartUtils" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation" %>
<!doctype html>
<html lang="en"> 
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   <!--  <link rel="icon" href="../../../../favicon.ico"> -->

     <title>Gestion de Ingresos</title>  

   <!-- Bootstrap core CSS -->
    <link href="../public/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="public/custom/css/dashboard.css" rel="stylesheet">
    
      <script src="public/custom/js/BuscadorTabla.js" type="text/javascript"></script>
      
       <script type="text/javascript" src="public/custom/js/jquery-1.3.2.js"></script>
       <script type="text/javascript" src="public/custom/js/jquery.tablesorter.js"></script>
       <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
   
  </head>

  <body>
      <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0"> -->
     <!--   <a class="navbar-brand col-sm-3 col-md-2 mr-0" ></a>  -->
      <!--  <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search"> -->
     <ul class="navbar-nav px-3"> 
      <!--  <li class="nav-item text-nowrap"> -->
        <!--  <a class="nav-link" href="#">Sign out</a> -->
        
     </ul>
    </nav> 

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link " href="MostrarPaciente.jsp">
                  <span data-feather="home"></span>
                 Base de Datos del Hospital <span class="sr-only"></span>
                </a>
              </li>
               <li class="nav-item">
                <a class="nav-link " href="MostrarPaciente.jsp">
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
                <a class="nav-link active" href="MostrarIngresos.jsp">
                  <span data-feather="file"></span>
               INGRESOS
                </a>
              </li>
            
               <li class="nav-item">
                <a class="nav-link" href="GraficoCoste.jsp">
                  <span data-feather="file"></span>
             Número de Ingresos
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
      <div class="col-md-8 ml-sm-auto col-lg-10 pt-3 px-3" id="content">
          
          <div id="grafico">
          
     <img src="https://whispering-retreat-65233.herokuapp.com/GraficoCoste.jsp" width="900" height="380"/> 
         </div>
        
                  
          

          <h2><ins>GESTION DE INGRESOS </ins></h2>
          <div>
         
          
          <div class="form-group">
         
         
         <label  ><b>BUSCADOR: </b> </label>
          <input  id="searchTerm" type="text" onkeyup="doSearch()" class="btn" placeholder="Escriba aqui..." style="background-color: #e0fcfe;border-color: #004080;border-width: 3px;">
          
        </div>
      
          </div>
          
          <hr>
          
          
          
          
          
          
          
          
         
          
             
           <div class="aligne-right">
            
           <a class="btn btn-primary" href="FormularioAgregarIngreso.jsp" style="color: #ffffff;">NUEVO INGRESO: Pulse aquí</a> 
           </div>
         <div>&nbsp;</div>
                  

          
          <div class="table-responsive" id="tabla">
          
<script>
 $(document).ready(function() 
    { 
        $("#datos").tablesorter(); 
    } 
);
    </script>   
 
            <table class="table table-striped table-sm"  id="datos">
            
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


<a href="FormularioEditarIngreso.jsp?nexpediente=<%=ingreso.getNexpediente()%>">Editar</a>
<a href="EliminarIngreso.jsp?nexpediente=<%=ingreso.getNexpediente()%>">Eliminar</a>


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
