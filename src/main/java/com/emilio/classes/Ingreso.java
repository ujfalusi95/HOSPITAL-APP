package com.emilio.classes;
import java.util.List;


import com.emilio.init.JDBCHelper;
public class Ingreso {
	private String fechaingreso;
	private String fechasalida;
	private String codigomedico;
	private String planta;
	private String cama; 
	private String coste;
	private String diagnostico;
	private Integer nhistorial;
	private Integer nexpediente;
	
public Ingreso(){}





public Ingreso(Integer nhistorial) {
	super();
	this.nhistorial = nhistorial;
} 





public Ingreso(String fechaingreso, String fechasalida, String codigomedico, String planta, String cama, String coste,
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





public Ingreso(String fechaingreso, String fechasalida, String codigomedico, String planta, String cama, String coste,
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



public String getCoste() {
	return coste;
}



public void setCoste(String coste) {
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

public static List<Ingreso> ListarTodosIngresos() {
	JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
	String sql = "Select fechaingreso,fechasalida,codigomedico,planta,cama,coste,diagnostico,nhistorial,nexpediente from ingreso";
	List<Ingreso> lista = helper.seleccionarRegistros(sql, Ingreso.class);
	return lista;
}

public static List<String> ListarTodosDiagonosticos() {
	JDBCHelper<String> helper = new JDBCHelper<String>();
List<String> lista= helper.seleccionarRegistros("select distinct(diagnostico) from diagnostico", String.class);
return lista ;
	
}
public  void insertarIngreso() {
   JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
   String sql = "INSERT INTO ingreso (fechaingreso,fechasalida,codigomedico,planta,cama,coste,diagnostico,nhistorial)  VALUES ('"+this.fechaingreso+"','"+this.fechasalida+"','"+this.codigomedico+"','"+this.planta+"','"+this.cama+"','"+this.coste+"','"+this.diagnostico+"','"+this.nhistorial+"')";
   helper.modificarRegistro(sql);
}
public  void editarIngreso() {
   JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
   String sql = "UPDATE ingreso SET fechaingreso='"+this.fechaingreso+"',fechasalida='"+this.fechasalida+"',codigomedico='"+this.codigomedico+"',planta='"+this.planta+"',cama='"+this.cama+"',coste='"+this.coste+"',diagnostico='"+this.diagnostico+"',nhistorial='"+this.nhistorial+"' WHERE nexpediente='"+this.nexpediente+"'";
   helper.modificarRegistro(sql);
}
public  Ingreso buscarHistorial() {
   JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
	String sql= "SELECT * FROM ingreso WHERE nhistorial="+this.nhistorial;
	List<Ingreso> lista = helper.seleccionarRegistros(sql, Ingreso.class);
	return lista.get(0);



}
public  void eliminarIngreso() {
  JDBCHelper<Ingreso> helper = new JDBCHelper<Ingreso>();
  String sql = "DELETE FROM ingreso WHERE nhistorial='"+this.nhistorial+"'";
  helper.modificarRegistro(sql);
  
}



}
