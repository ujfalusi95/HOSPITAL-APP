package com.emilio.classes;


 



import java.net.URISyntaxException;
import java.sql.SQLException;
import java.util.List;


import com.emilio.init.JDBCHelper;





public class Paciente {
	private String nombrepaciente;
	private String apellidospaciente;
	private String domicilio;
	private String poblacion;
	private String cp;
	private String telefono;
	private String fechanacimiento;
	private String sexo;
	private String dni;
	private String nss;
	private Integer nhistorial;
	
	
	public Paciente() {}
	

	
	


	public Paciente(Integer nhistorial) {
		super();
		this.nhistorial = nhistorial;
	}






	public Paciente(String dni) {
		super();
		this.dni = dni;
	}











	public Paciente(String nombrepaciente, String apellidospaciente, String domicilio, String poblacion, String cp,
			String telefono, String fechanacimiento, String sexo, String dni, String nss) {
		super();
		this.nombrepaciente = nombrepaciente;
		this.apellidospaciente = apellidospaciente;
		this.domicilio = domicilio;
		this.poblacion = poblacion;
		this.cp = cp;
		this.telefono = telefono;
		this.fechanacimiento = fechanacimiento;
		this.sexo = sexo;
		this.dni = dni;
		this.nss = nss;
	}

	public Paciente(String nombrepaciente, String apellidospaciente, String domicilio, String poblacion, String cp,
			String telefono, String fechanacimiento, String sexo, String dni, String nss, Integer nhistorial) {
		super();
		this.nombrepaciente = nombrepaciente;
		this.apellidospaciente = apellidospaciente;
		this.domicilio = domicilio;
		this.poblacion = poblacion;
		this.cp = cp;
		this.telefono = telefono;
		this.fechanacimiento = fechanacimiento;
		this.sexo = sexo;
		this.dni = dni;
		this.nss = nss;
		this.nhistorial = nhistorial;
	}




	public String getNombrepaciente() {
		return nombrepaciente;
	}




	public void setNombrepaciente(String nombrepaciente) {
		this.nombrepaciente = nombrepaciente;
	}




	public String getApellidospaciente() {
		return apellidospaciente;
	}




	public void setApellidospaciente(String apellidospaciente) {
		this.apellidospaciente = apellidospaciente;
	}




	public String getDomicilio() {
		return domicilio;
	}




	public void setDomicilio(String domicilio) {
		this.domicilio = domicilio;
	}




	public String getPoblacion() {
		return poblacion;
	}




	public void setPoblacion(String poblacion) {
		this.poblacion = poblacion;
	}




	public String getCp() {
		return cp;
	}




	public void setCp(String cp) {
		this.cp = cp;
	}




	public String getTelefono() {
		return telefono;
	}




	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}




	public String getFechanacimiento() {
		return fechanacimiento;
	}




	public void setFechanacimiento(String fechanacimiento) {
		this.fechanacimiento = fechanacimiento;
	}




	public String getSexo() {
		return sexo;
	}




	public void setSexo(String sexo) {
		this.sexo = sexo;
	}




	public String getDni() {
		return dni;
	}




	public void setDni(String dni) {
		this.dni = dni;
	}




	public String getNss() {
		return nss;
	}




	public void setNss(String nss) {
		this.nss = nss;
	}
	
	public Integer getNhistorial() {
		return nhistorial;
	}






	public void setNhistorial(Integer nhistorial) {
		this.nhistorial = nhistorial;
	}
 











	//Metodos
	
	










	public static List<Paciente> ListarTodosPacientes() throws URISyntaxException, SQLException {
		JDBCHelper<Paciente> helper = new JDBCHelper<Paciente>();
		String sql = "Select nombrepaciente,apellidospaciente,domicilio,poblacion,cp,telefono,fechanacimiento,sexo,dni,nss,nhistorial from paciente";
		List<Paciente> lista = helper.seleccionarRegistros(sql, Paciente.class);
		return lista;
	}
	
	public static List<String> ListarTodasPoblaciones() throws URISyntaxException, SQLException {
		JDBCHelper<String> helper = new JDBCHelper<String>();
	List<String> lista= helper.seleccionarRegistros("select distinct(poblacion) from paciente", String.class);
		
		
		
		return lista ;
		
	}
   public  void insertarPaciente() throws URISyntaxException, SQLException {
	   JDBCHelper<Paciente> helper = new JDBCHelper<Paciente>();
	   String sql = "INSERT INTO paciente (nombrepaciente,apellidospaciente,domicilio,poblacion,cp,telefono,fechanacimiento,sexo,dni,nss)  VALUES ('"+this.nombrepaciente+"','"+this.apellidospaciente+"','"+this.domicilio+"','"+this.poblacion+"','"+this.cp+"','"+this.telefono+"','"+this.fechanacimiento+"','"+this.sexo+"','"+this.dni+"','"+this.nss+"')";
       helper.modificarRegistro(sql);
   }
   public  void editarPaciente() throws URISyntaxException, SQLException {
	   JDBCHelper<Paciente> helper = new JDBCHelper<Paciente>();
	   String sql = "UPDATE paciente SET nombrepaciente='"+this.nombrepaciente+"',apellidospaciente='"+this.apellidospaciente+"',domicilio='"+this.domicilio+"',poblacion='"+this.poblacion+"',cp='"+this.cp+"',telefono='"+this.telefono+"',fechanacimiento='"+this.fechanacimiento+"',sexo='"+this.sexo+"',dni='"+this.dni+"',nss='"+this.nss+"' WHERE nhistorial='"+this.nhistorial+"'";
       helper.modificarRegistro(sql);
}
   public  Paciente buscarPacientePorDNI() throws URISyntaxException, SQLException {
	   JDBCHelper<Paciente> helper = new JDBCHelper<Paciente>();
		String sql= "SELECT * FROM paciente WHERE nhistorial="+this.nhistorial;
		List<Paciente> lista = helper.seleccionarRegistros(sql, Paciente.class);
		return lista.get(0);
   }
		   public  Paciente buscarPacientePorNombre() throws URISyntaxException, SQLException {
			   JDBCHelper<Paciente> helper = new JDBCHelper<Paciente>();
				String sql= "SELECT * FROM paciente WHERE nombrepaciente="+this.nombrepaciente;
				List<Paciente> lista = helper.seleccionarRegistros(sql, Paciente.class);
				return lista.get(0);
   
}
  public  void eliminarPaciente() throws URISyntaxException, SQLException {
	  JDBCHelper<Paciente> helper = new JDBCHelper<Paciente>();
	  String sql = "DELETE FROM paciente WHERE dni='"+this.dni+"'";
	  helper.modificarRegistro(sql);
	  
  }
}