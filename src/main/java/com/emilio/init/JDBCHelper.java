package com.emilio.init;
 
import java.lang.reflect.Method;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class JDBCHelper<T> {

	public static Connection getConexion() {
		Connection conexion = null;
		Properties properties = new Properties();
		try {
			
			
			//  2 maneras de hacerla properties.load(JDBCHelper.class.getClassLoader().getResourceAsStream("config.properties"));
			properties.load(Thread.currentThread().getContextClassLoader()
					.getResourceAsStream("config.properties"));
			String driver = System.getenv().get("key.driver");
			String url = System.getenv().get("key.url");
			String user = System.getenv().get("key.user");
			String password = System.getenv().get("key.password");
			Class.forName(driver);
			conexion = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			System.out.println("Error en getConexion: " + e.getMessage());
		}
		return conexion;
	}
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<T> seleccionarRegistros(String sql, @SuppressWarnings("rawtypes") Class clase) {
		Connection conexion = getConexion();
		Statement sentencia = null;
		ResultSet filas = null;
		List<T> listaDeObjetos = new ArrayList<T>();
		try {
			
			sentencia = conexion.createStatement();
			filas = sentencia.executeQuery(sql);
			while (filas.next()) {
				T objeto = (T) Class.forName(clase.getName()).newInstance();// Principio de reflexioon de objetos
				Method[] metodos = objeto.getClass().getDeclaredMethods();
				for (int i = 0; i < metodos.length; i++) {
					if (metodos[i].getName().startsWith("set")) {
						//Comprobando los tipos de paramaetros set
						
						if (metodos[i].getParameterTypes()[0].getSimpleName()
								.equals("Integer")) {
							metodos[i].invoke(objeto, Integer.parseInt(filas
									.getString(metodos[i].getName()
											.substring(3)))); // quito las tres letras a set y asi obtengo los parametros DNI que lo voy a hacer autonumerable
						} else {
							metodos[i].invoke(objeto, filas
									.getString(metodos[i].getName()
											.substring(3)));
						}
					}
					if (objeto.getClass().getName().equals("java.lang.String")) {
						objeto = (T)filas.getString(1);
					}
				}
				listaDeObjetos.add(objeto);
			}
		} catch (Exception e) {
			System.out.println("Error de SQL: " + e.getMessage());
		} finally {
			if (sentencia != null) {
				try {
					sentencia.close();
				} catch (SQLException e2) {
 				}
			}
			if (conexion != null) {
				try {
					conexion.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		return listaDeObjetos;
	}
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	public int modificarRegistro(String sql) {
		Connection conexion = getConexion();
		Statement sentencia = null;
		int filasAfectadas = 0;
		try {
			
		
			sentencia = conexion.createStatement();
			filasAfectadas = sentencia.executeUpdate(sql);
		} catch (SQLException e) {
			System.out.println("Error de SQL" +e.getMessage());
		
		} finally {
			if (sentencia != null) {
				try {
					sentencia.close();
				} catch (SQLException e) {
				}
			}
			if (conexion != null) {
				try {
					conexion.close();
				} catch (SQLException e) {
				}
			}
		}
		return filasAfectadas;
	}
	
	
	
	
}
