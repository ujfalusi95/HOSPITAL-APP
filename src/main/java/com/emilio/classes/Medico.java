package com.emilio.classes;
import java.net.URISyntaxException;

import java.sql.SQLException;
import java.util.List;



import com.emilio.init.JDBCHelper;


public class Medico {
	private String nombremedico;
	private String apellidosmedico;
	private String especialidad;
	private String numerocolegiado;
	private String cargo;
    private String codigomedico;
	
	

public Medico() {}



public Medico(String codigomedico) {
	super();
	this.codigomedico = codigomedico;
}



public Medico(String nombremedico, String apellidosmedico, String especialidad, String numerocolegiado, String cargo,
		String codigomedico) {
	super();
	this.nombremedico = nombremedico;
	this.apellidosmedico = apellidosmedico;
	this.especialidad = especialidad;
	this.numerocolegiado = numerocolegiado;
	this.cargo = cargo;
	this.codigomedico = codigomedico;
}



public String getNombremedico() {
	return nombremedico;
}



public void setNombremedico(String nombremedico) {
	this.nombremedico = nombremedico;
}



public String getApellidosmedico() {
	return apellidosmedico;
}



public void setApellidosmedico(String apellidosmedico) {
	this.apellidosmedico = apellidosmedico;
}



public String getEspecialidad() {
	return especialidad;
}



public void setEspecialidad(String especialidad) {
	this.especialidad = especialidad;
}



public String getNumerocolegiado() {
	return numerocolegiado;
}



public void setNumerocolegiado(String numerocolegiado) {
	this.numerocolegiado = numerocolegiado;
}



public String getCargo() {
	return cargo;
}



public void setCargo(String cargo) {
	this.cargo = cargo;
}



public String getCodigomedico() {
	return codigomedico;
}



public void setCodigomedico(String codigomedico) {
	this.codigomedico = codigomedico;
}

//Metodos

public static List<Medico> ListarTodosMedicos() throws URISyntaxException, SQLException {
	JDBCHelper<Medico> helper = new JDBCHelper<Medico>();
	String sql = "Select nombremedico,apellidosmedico,especialidad,numerocolegiado,cargo,codigomedico from medico";
	List<Medico> lista = helper.seleccionarRegistros(sql, Medico.class);
	return lista;
}

public static List<String> ListarTodasEspecialidades() throws URISyntaxException, SQLException {
	JDBCHelper<String> helper = new JDBCHelper<String>();
List<String> lista= helper.seleccionarRegistros("select distinct(especialidad) from medico", String.class);
	
	
	
	return lista ;
	
}
public  void insertarMedico() throws URISyntaxException, SQLException {
	try {
   JDBCHelper<Medico> helper = new JDBCHelper<Medico>();
   String sql = "INSERT INTO medico (nombremedico,apellidosmedico,especialidad,numerocolegiado,cargo,codigomedico)  VALUES ('"+this.nombremedico+"','"+this.apellidosmedico+"','"+this.especialidad+"','"+this.numerocolegiado+"','"+this.cargo+"','"+this.codigomedico+"')";
   helper.modificarRegistro(sql);
	}catch(SQLException e){
		System.out.println("Error en la integridad de la base de datos:"+e.getMessage());
	    e.printStackTrace();
	}	
	}

public  void editarMedico() throws URISyntaxException, SQLException {
   JDBCHelper<Medico> helper = new JDBCHelper<Medico>();
   String sql = "UPDATE medico SET nombremedico='"+this.nombremedico+"',apellidosmedico='"+this.apellidosmedico+"',especialidad='"+this.especialidad+"',numerocolegiado='"+this.numerocolegiado+"',cargo='"+this.cargo+"',codigomedico='"+this.codigomedico+"' WHERE codigomedico='"+this.codigomedico+"'";
   helper.modificarRegistro(sql);
}
public  Medico buscarMedicoPorCodigo() throws URISyntaxException, SQLException {
   JDBCHelper<Medico> helper = new JDBCHelper<Medico>();
	String sql= "SELECT * FROM medico WHERE codigomedico='"+this.codigomedico+"'";
	List<Medico> lista = helper.seleccionarRegistros(sql, Medico.class);
	return lista.get(0); 



}
public  void eliminarMedico() throws URISyntaxException, SQLException {
	try {
  JDBCHelper<Medico> helper = new JDBCHelper<Medico>();
  String sql = "DELETE FROM medico WHERE codigomedico='"+this.codigomedico+"'";
  helper.modificarRegistro(sql);
}catch(SQLException e){
	System.out.println("Error en la integridad de la base de datos:"+e.getMessage());
    e.printStackTrace();
}	
}
}



