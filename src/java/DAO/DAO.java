package DAO;
import java.sql.*;
public class DAO {
    public static Connection getConnection() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url="jdbc:sqlserver://LAPTOP-QFLE8Q70\\SQLEXPRESS:1433;databaseName=booking_platform;encrypt=true;trustServerCertificate=true";
			String userName="sa";
			String password="12345";
			Connection connection = DriverManager.getConnection(url, userName, password);
			System.out.println("thực hiện thành công");
			return connection;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}
	public static void main(String[] args) {
		getConnection();
	}

}
