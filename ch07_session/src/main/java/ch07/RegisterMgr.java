package ch07;

import java.sql.*;

public class RegisterMgr {
	private DBConnectionMgr pool;
	
	public RegisterMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public boolean loginRegister(String id, String pwd) {
		Connection con =  null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean LoginResult = false;
		
		try {
			con = pool.getConnection();
			pstmt = con.prepareStatement(pwd); 
			
//			String query = "select * from MEM where MEM_ID = "+ id +" and MEM_PW = " + pwd;
			String query = "select * from MEM where MEM_ID=? and MEM_PW=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			
			
			rs = pstmt.executeQuery();
			
			System.out.println(rs.toString());
			if(rs.next() && rs.getInt(1) == 1) {
				LoginResult = true;
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		
		
		
		return LoginResult;
	}
	
	public static void main(String[] args) {
		RegisterMgr rm = new RegisterMgr();
		
		rm.loginRegister("user01", "pass01");
	}
}
