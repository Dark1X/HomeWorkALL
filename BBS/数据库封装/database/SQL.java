package database;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class SQL {
	
	//·â×°SQLÁ¬½Ó
	
	private String Driver = "com.mysql.jdbc.Driver";
	private String connectSQL="jdbc:mysql://localhost:3306/soft";
	private String user = "root";
	private String passwd = "";
	
	public Connection getConnection(){
		
		try {
			Class.forName(Driver);
			Connection conn=(Connection) DriverManager.getConnection(connectSQL,user,passwd);
			return conn;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} 
		
	}
	
}
