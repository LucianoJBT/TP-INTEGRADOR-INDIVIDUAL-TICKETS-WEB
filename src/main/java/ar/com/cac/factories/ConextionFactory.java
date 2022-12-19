package ar.com.cac.factories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConextionFactory {
	/**/private static final String driver ="com.mysql.jdbc.Driver";
	private static final String server="jdbc:mysql://localhost:3306";
	private static final String usuario ="root";
	private static final String clave="12345678";
	private static final String base="db_grupo_9_22550";/**/
	
    /*private static final String driver ="com.mysql.jdbc.Driver";
    private static final String server="jdbc:mysql://dbs-sigeva-01-qa.cn.conicet.gov.ar";
    private static final String usuario ="test";
    private static final String clave="conicet";
    private static final String base="db_grupo_9_22550";*/
    
    
    

	public static Connection getConexion() throws SQLException {
		
		try {
			Class.forName(driver);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String conectionString = server+"/"+base;
		return DriverManager.getConnection(conectionString,usuario,clave);
	}
	
	  public static void cerrarConexion(Connection conex){
	        try{
	            // Cerramos la conexión
	            conex.close();    
	        }catch(SQLException e){
	           /* Controlamos excepción en caso de que se pueda producir
	            a la hora de cerrar la conexión*/
	            System.out.println(e.getMessage().toString());
	        }
	    }
	  
	  
	  public static void main(String[] args) {
	         
	        /*Declaramos una variable para almacenar la conexión que nos va a
	        devolver el método Conexion(). Primero la iniciamos en null.*/
		  Connection conex=null;
	         
	        /*Almacenamos lo que nos devuelve el método Conexion()
	        en la variable conex*/
	        try {
				conex= ConextionFactory.getConexion();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	         
	        // Si la variable objeto conex es diferente de nulo
	        if(conex != null){
	            // Informamos que la conexión es correcta
	            System.out.println("Conectado correctamente");
	        }else{ // Sino informamos que no nos podemos conectar.
	            System.out.println("No has podido conectarte");
	        }
	    }   

}
