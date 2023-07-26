import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Inha_DAO {

	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://122.43.183.107:3306/inha", "root", "1234");
			Statement stmt = conn.createStatement();
			
			stmt.executeUpdate("insert into tb1 (id, name) values ('kim', 'jungin')");
			
			
			stmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
