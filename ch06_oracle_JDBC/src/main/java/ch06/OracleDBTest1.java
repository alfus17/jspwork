 package ch06;

import java.sql.*;


public class OracleDBTest1 {
	public static void main(String[] args) {
		try {
			
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gjjang","1234");
			
			System.out.println("Success");
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("접속오류");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("드라이버 오류");

		}
	}

}
