<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import= "com.emilio.init.*"%> 
<%@page import= "com.emilio.classes.Medico"%>
<%@page import= "com.emilio.classes.Ingreso"%>
<%@ page import="java.util.*,java.sql.*" %>
<%@ page import="org.jfree.data.category.DefaultCategoryDataset" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="org.jfree.chart.ChartUtils" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grafico</title>
</head>
<body>
<% 
    
   
  
  

  DefaultCategoryDataset dataset = new DefaultCategoryDataset();
  List<Medico> listavariables = Medico.ListarTodosMedicos();
  ArrayList<String> lista = new ArrayList(); 
  int totalmedicos=0;
  int i=0;
  for(Medico medico : listavariables){
	totalmedicos++;
     i++;
lista.add(medico.getEspecialidad());
  
  out.println(lista);
  }
	//out.println("los diagnosticos repetidos son: " +ingreso.getDiagn);
	  //dataset.setValue(coste,"Total de Euros",ingreso.getDiagnostico());
		
	
	
	 //JFreeChart chart = ChartFactory.createBarChart("Coste por diagnostico","Diagnostico","Dinero",dataset, PlotOrientation.HORIZONTAL,true,false,false);

	 //response.setContentType("image/png");
	 //ServletOutputStream ouputStream = response.getOutputStream();

 //ChartUtils.writeChartAsPNG(ouputStream, chart, 800, 600);
	 //ouputStream.close();
			
			  
 

 %>

</body>
</html>