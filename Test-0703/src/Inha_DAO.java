import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class Inha_DAO {

	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inha", "root", "1234");
			System.out.println("mysql 연결 성공");
			Statement stmt = conn.createStatement();
			stmt.executeUpdate("");  
			
			conn.close();
			
		} catch (ClassNotFoundException error) {
			System.out.println("mysql driver 미설치 또는 드라이버 이름 오류");
		} catch (SQLException error) {
			System.out.println("DB 접속오류");
		}
	}

}
