<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>

<%@page import= "com.emilio.init.*"%> 
<%@page import= "com.emilio.classes.Paciente"%>

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
    
   
  
  

  List<Paciente> listavariables = Paciente.ListarTodosPacientes();
List<String> poblaciones = new ArrayList<String>();
Set<String> rep = new HashSet<String>(poblaciones);
DefaultCategoryDataset dataset = new DefaultCategoryDataset();
int total=0;
for(Paciente paciente :listavariables){
	poblaciones.add(paciente.getPoblacion());
	total++;
}
for(String pob :poblaciones){
	rep.add(pob);
//out.println(rep);
}
for(String key :rep){
	 dataset.setValue(Collections.frequency(poblaciones,key),"Total de Pacientes"+total,key);
	
}

	

  


	
		
	
	
	 JFreeChart chart = ChartFactory.createBarChart("Pacientes por Poblacion","Poblacion","Número",dataset, PlotOrientation.HORIZONTAL,true,false,false);

	 response.setContentType("image/png");
	 ServletOutputStream ouputStream = response.getOutputStream();

	 ChartUtils.writeChartAsPNG(ouputStream, chart, 900, 380);
	 ouputStream.close();
			
			  
 

 %>

</body>
</html>