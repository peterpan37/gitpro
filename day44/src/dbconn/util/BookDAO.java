package dbconn.util;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

public class BookDAO {
	int numPerPage=0;
	public static void loadOracleDriver(){
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			DriverManager.setLogWriter(new PrintWriter(System.out));
			
		}catch(Exception e){
			e.printStackTrace();
		}	
	}
	public static Connection getConnection(String url, String user, String pwd) throws Exception{
		return DriverManager.getConnection(url, user, pwd);
	}
	public static Connection getConnection() throws Exception{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "lst";
		String pwd = "oracle";
		return DriverManager.getConnection(url, user, pwd);
	}
	

	
}
