<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>

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
    
   
  
  

  List<Medico> listavariables = Medico.ListarTodosMedicos();
List<String> especialidades = new ArrayList<String>();
Set<String> rep = new HashSet<String>(especialidades);


for(Medico medico :listavariables){
	especialidades.add(medico.getEspecialidad());
}
out.println(especialdidades);
for(String key :rep){
	out.println(key + " : " + Collections.frequency(especialidades,key));
}

	

  


	  //dataset.setValue(coste,"Total de Euros",ingreso.getDiagnostico());
		
	
	
	 //JFreeChart chart = ChartFactory.createBarChart("Coste por diagnostico","Diagnostico","Dinero",dataset, PlotOrientation.HORIZONTAL,true,false,false);

	 //response.setContentType("image/png");
	 //ServletOutputStream ouputStream = response.getOutputStream();

 //ChartUtils.writeChartAsPNG(ouputStream, chart, 800, 600);
	 //ouputStream.close();
			
			  
 

 %>

</body>
</html>