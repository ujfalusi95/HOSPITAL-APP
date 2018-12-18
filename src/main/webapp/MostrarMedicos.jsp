<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import= "java.io.File"%>
<%@page import= "com.emilio.classes.Paciente"%>
<%@page import= "com.emilio.classes.Medico"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="org.jfree.chart.ChartUtils" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation" %>
<%@ page import= "java.awt.image.BufferedImage"%>
  <%@ page import="javax.imageio.ImageIO"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   <!--  <link rel="icon" href="../../../../favicon.ico"> -->

     <title>Gestion de Medicos</title>  

    <!-- Bootstrap core CSS -->
    <link href="../public/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="public/custom/css/dashboard.css" rel="stylesheet">
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
                <a class="nav-link " href="MostrarPaciente.jsp">
                  <span data-feather="file"></span>
               PACIENTES
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="MostrarMedicos.jsp">
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
          
     
       <img src="https://whispering-retreat-65233.herokuapp.com/MostrarMedicos.jsp" /> 
        
                  
          

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
       
	
            
            <button id="btnBuscar" class="btn btn-primary" onKeyUp="listamedico">Buscar</button>
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

<!--   Graphs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
     <script>
     <% 
     
     
     
     

     List<Medico> listavariables = Medico.ListarTodosMedicos();
   List<String> especialidades = new ArrayList<String>();
   Set<String> rep = new HashSet<String>(especialidades);
   DefaultCategoryDataset dataset = new DefaultCategoryDataset();

   for(Medico medico :listavariables){
   	especialidades.add(medico.getEspecialidad());
   }
   for(String esp :especialidades){
   	rep.add(esp);
   //out.println(rep);
   }
   for(String key :rep){
   	 dataset.setValue(Collections.frequency(especialidades,key),"",key);
   	
   }

   	

     


   	
   		
   	
   	

	 //JFreeChart chart = ChartFactory.createBarChart("Médicos por Departamento","Especialidad","Número",dataset, PlotOrientation.HORIZONTAL,true,false,false);

	 //response.setContentType("image/png");
	 //ServletOutputStream ouputStream = response.getOutputStream();

	
	 //ChartUtils.writeChartAsPNG(ouputStream, chart, 900, 380);
			
   			  
    %>
   
   
    
    </script> 
  </body>
</html>
