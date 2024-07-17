package ch06;

import java.io.PrintWriter;
import java.sql.*;

public class OracleDBTest2 {

	public static void main(String[] args) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		
		try {
				
				Class.forName("oracle.jdbc.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gjjang","1234");
				
				System.out.println("Success");
				
				st = con.createStatement();
				// select문 사용시 executeQuery() 메소드 사용
				rs = st.executeQuery("select * from  DEPARTMENT");
				String dId = "";
				String title = "";
				String location = "";
				
				while(rs.next()) {
					 dId = rs.getString(1);
					 title = rs.getString("dept_title");
					 location = rs.getString(3);
					 System.out.println(dId + ", " + title + " , " + location);
				}
				
				
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				System.out.println("접속오류");
				
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
				System.out.println("드라이버 오류");
				
			}finally {
				if(st !=null) {
					try {st.close();}catch (Exception e) {System.out.println(e);}
				}
				if(st !=null) {
					try {con.close();}catch (Exception e) {System.out.println(e);}
				}
				if(st !=null) {
					try {rs.close();}catch (Exception e) {System.out.println(e);}
				}
			}

	}

}
