import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class UsersDAO {
	public void insert(String 성명, String id, String pw, String 전화번호) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection
					("jdbc:mysql://localhost/inha","root","1234");
			Statement stmt = conn.createStatement();
			stmt.executeUpdate
			("Insert into users(성명,id,pw,전화번호) values('"+성명+"','"+ id +"','"+ pw +"','"+ 전화번호 +"')");
			System.out.println("<p>성명 : " + 성명);
			System.out.println("<p>ID : " + id);
			System.out.println("<p>PW : " + pw);
			System.out.println("<p>전화번호 : " + 전화번호);
			System.out.println("<h1>회원 정보 등록이 완료되었습니다.</h1>");
			stmt.close();
			conn.close();
		}catch(Exception e){		
			e.printStackTrace();
		}
	}
}
