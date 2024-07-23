package chun.univ.dao;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
// userInfo bean
import chun.univ.dto.userInfo;

public class LoginDao {
	// db 연결 관련 인스턴트 변수
	private DBConnectionMgr pool;
	Connection con = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = null;

	// 생성자 생성시 DB 객체 생성
	public LoginDao() {
		pool = DBConnectionMgr.getInstance();
	}
	
	// 로그인시 정보 조회
	public userInfo checkLogIn(String id , String pwd) {
		userInfo userinfo = null;
		
		try {
			con = pool.getConnection();
			// id와 pwd 가 맞는 유저 검색 후 있을 경우 true 리턴			
			sql = "select * from TB_STUDENT where STUDENT_NO = ? and STUDENT_PWD = ? ";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			// db쪽에 쿼리문 날리기 			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				while (rs.next()) {
					userinfo = new userInfo();
					userinfo.setstudentNo(rs.getString("student_no")); 
					userinfo.setdepartmentNo(rs.getString("department_no")); 
					userinfo.setstudentName(rs.getString("student_no")); 
					userinfo.setstudentSsn(rs.getString("student_no")); 
					userinfo.setstudentAddress(rs.getString("student_no")); 
					userinfo.setentranceDate(rs.getString("student_no")); 
					userinfo.setabsenceYs(rs.getString("student_no")); 
					userinfo.setcoachProfessorNo(rs.getString("coach_professor_no")); 
					
				}
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			// 오류 및 처리 완료 이후 db 커넥션 끊기
			pool.freeConnection(con);
		}
		
		
		return userinfo;
	}
	
	

}
