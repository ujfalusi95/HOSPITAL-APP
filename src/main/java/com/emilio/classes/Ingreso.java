package com.emilio.classes;
import java.net.URISyntaxException;

import java.sql.SQLException;
import static java.lang.System.out;


import java.util.List;



import com.emilio.classes.Medico;
import com.emilio.classes.Paciente;


import com.emilio.init.JDBCHelper;
public class Ingreso {
	private String fechaingreso;
	private String fechasalida;
	private String codigomedico;
	private String planta;
	private String cama; 
	private Integer coste;
	private String diagnostico;
	private Integer nhistorial;
	private Integer nexpediente;
	
public Ingreso(){}





public Ingreso(Integer coste, String diagnostico) {
	super();
	this.coste = coste;
	this.diagnostico = diagnostico;
}





public Ingreso(Integer nexpediente) {
	super();
	this.nexpediente = nexpediente;
} 





public Ingreso(String fechaingreso, String fechasalida, String codigomedico, String planta, String cama, Integer coste,
		String diagnostico, Integer nhistorial) {
	super();
	this.fechaingreso = fechaingreso;
	this.fechasalida = fechasalida;
	this.codigomedico = codigomedico;
	this.planta = planta;
	this.cama = cama;
	this.coste = coste;
	this.diagnostico = diagnostico;
	this.nhistorial = nhistorial;
}





public Ingreso(String fechaingreso, String fechasalida, String codigomedico, String planta, String cama, Integer coste,
		String diagnostico, Integer nhistorial, Integer nexpediente) {
	super();
	this.fechaingreso = fechaingreso;
	this.fechasalida = fechasalida;
	this.codigomedico = codigomedico;
	this.planta = planta;
	this.cama = cama;
	this.coste = coste;
	this.diagnostico = diagnostico;
	this.nhistorial = nhistorial;
	this.nexpediente = nexpediente;
}





public String getFechaingreso() {
	return fechaingreso;
}



public void setFechaingreso(String fechaingreso) {
	this.fechaingreso = fechaingreso;
}



public String getFechasalida() {
	return fechasalida;
}



public void setFechasalida(String fechasalida) {
	this.fechasalida = fechasalida;
}



public String getCodigomedico() {
	return codigomedico;
}



public void setCodigomedico(String codigomedico) {
	this.codigomedico = codigomedico;
}



public String getPlanta() {
	return planta;
}



public void setPlanta(String planta) {
	this.planta = planta;
}



public String getCama() {
	return cama;
}



public void setCama(String cama) {
	this.cama = cama;
}



public Integer getCoste() {
	return coste;
}



public void setCoste(Integer coste) {
	this.coste = coste;
}



public String getDiagnostico() {
	return diagnostico;
}



public void setDiagnostico(String diagnostico) {
	this.diagnostico = diagnostico;
}



public Integer getNhistorial() {
	return nhistorial;
}



public void setNhistorial(Integer nhistorial) {
	this.nhistorial = nhistorial;
}



public Integer getNexpediente() {
	return nexpediente;
}



public void setNexpediente(Integer nexpediente) {
	this.nexpediente = nexpediente;
}

//Metodos

public static List<Ingreso> ListarTodosIngresos() throws URISyntaxException, SQLException {
	JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
	String sql = "Select fechaingreso,fechasalida,codigomedico,planta,cama,coste,diagnostico,nhistorial,nexpediente from ingreso";
	List<Ingreso> lista = helper.seleccionarRegistros(sql, Ingreso.class);
	return lista;
}

public static List<String> ListarTodosDiagonosticos() throws URISyntaxException, SQLException {
	JDBCHelper<String> helper = new JDBCHelper<String>();
List<String> lista= helper.seleccionarRegistros("select distinct(diagnostico) from diagnostico", String.class);
return lista ;
	
}
public  boolean insertarIngreso() throws URISyntaxException, SQLException {
   JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
   JDBCHelper<Paciente> pacienteHelper = new JDBCHelper<Paciente>();
   JDBCHelper<Medico> medicoHelper = new JDBCHelper<Medico>();
   //String compruebaIngreso="SELECT M.codigomedico,P.nhistorial FROM ingresos i JOIN paciente p on p.nhistorial=i.nhistorial JOIN medico m ON m.codigomedico=i.codigomedico;";
   //helper.modificarRegistro(compruebaIngreso);
   String compruebaPaciente="SELECT P.nhistorial FROM paciente p where nhistorial="+this.nhistorial+";";
   List<Paciente> listaPacientes=pacienteHelper.seleccionarRegistros(compruebaPaciente,Paciente.class);
   String compruebaMedico="SELECT m.codigomedico FROM medico m where codigomedico="+this.codigomedico+";";
   List<Medico> listaMedicos=medicoHelper.seleccionarRegistros(compruebaMedico,Medico.class);
   
   if (listaPacientes==null || listaMedicos==null || listaPacientes.size()==0 || listaMedicos.size()==0) {
	   //String sql1 = "INSERT INTO ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,coste,diagnostico,nhistorial)  VALUES ('1111/09/09','1111/09/09','12','1','1','1','1','7')";
	   //helper.modificarRegistro(sql1);
	   return false;
   }
   else{String sql2 = "INSERT INTO ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,coste,diagnostico,nhistorial)  VALUES ('"+this.fechaingreso+"','"+this.fechasalida+"','"+this.codigomedico+"','"+this.planta+"','"+this.cama+"','"+this.coste+"','"+this.diagnostico+"','"+this.nhistorial+"')";
   helper.modificarRegistro(sql2);
   return true;
   }
//   try {
//   String sql = "INSERT INTO ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,coste,diagnostico,nhistorial)  VALUES ('"+this.fechaingreso+"','"+this.fechasalida+"','"+this.codigomedico+"','"+this.planta+"','"+this.cama+"','"+this.coste+"','"+this.diagnostico+"','"+this.nhistorial+"')";
//   helper.modificarRegistro(sql);
//   }
//   catch (SQLException e) {
//	   String sql = "INSERT INTO ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,coste,diagnostico,nhistorial)  VALUES ('1111/09/09','1111/09/09','12','1','1','1','1','7')";
//	   helper.modificarRegistro(sql);
//	 return false;  
//   }
//   catch (SQLException e) {
//	   String sql = "INSERT INTO ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,coste,diagnostico,nhistorial)  VALUES ('1111/09/09','1111/09/09','12','1','1','1','1','7')";
//	   helper.modificarRegistro(sql);
//	 return false;  
//   }
  

}
public  void editarIngreso() throws URISyntaxException, SQLException {
   JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
   String sql = "UPDATE ingreso SET fechaingreso='"+this.fechaingreso+"',fechasalida='"+this.fechasalida+"',codigomedico='"+this.codigomedico+"',planta='"+this.planta+"',cama='"+this.cama+"',coste='"+this.coste+"',diagnostico='"+this.diagnostico+"',nhistorial='"+this.nhistorial+"' WHERE nexpediente='"+this.nexpediente+"'";
   helper.modificarRegistro(sql);
}
public  Ingreso buscarHistorial() throws URISyntaxException, SQLException {
   JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
	String sql= "SELECT * FROM ingreso WHERE nexpediente='"+this.nexpediente+"'";
	List<Ingreso> lista = helper.seleccionarRegistros(sql, Ingreso.class);
	return lista.get(0);



}
public  void eliminarIngreso() throws URISyntaxException, SQLException {
  JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
  String sql = "DELETE FROM ingreso WHERE nexpediente='"+this.nexpediente+"'";
  helper.modificarRegistro(sql);
  
}

public static List<Ingreso> ObtenerParametrosGraficos() throws URISyntaxException, SQLException {
	JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
	String sql = "Select coste,diagnostico from ingreso";
	List<Ingreso> lista = helper.seleccionarRegistros(sql, Ingreso.class);

 return lista;
			  
			  
			
			  
		


}

}