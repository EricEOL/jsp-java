package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionDB {

	private static String db = "jdbc:postgresql://localhost:5433/curso-jsp?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "admin";
	private static Connection connection = null;
	
	static {
		connect();
	}
	
	public SingleConnectionDB() {
		connect();
	}
	
	private static void connect() {
		
		try {
			if(connection == null) {
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(db, user, password);
				connection.setAutoCommit(false); //Para não fazer atualizações no banco sem comando
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		return connection;
	}
	
}
