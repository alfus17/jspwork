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


	// 생성자 생성시 DB 객체 생성
	public LoginDao() {
		pool = DBConnectionMgr.getInstance();
	}
	
	// 로그인시 학번과 pw로 조회 이후 userInfo 객체 반환
	public userInfo checkLogIn(String id , String pwd) {
		userInfo userinfo = null;
		
		try {
			con = pool.getConnection();
			// id와 pwd 가 맞는 유저 검색 후 있을 경우 true 리턴			
			String query = "select * from TB_STUDENT where STUDENT_NO = ? and STUDENT_PWD = ? ";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			System.out.println("query :" + query);
			
			// db쪽에 쿼리문 날리기 			
			rs = pstmt.executeQuery();
			
			// 로그찍으면 한번 빠져서 다음 값으로 넘어가게됨 그렇기에 while 과 동시에 사용 불가 한번만 체크해야함				
			/* System.out.println("rs.next() :" + rs.getString("student_no")); */
			
			if(rs.next()) {
			
				userinfo = new userInfo();
				userinfo.setstudentNo(rs.getString("student_no")); 
				userinfo.setdepartmentNo(rs.getString("department_no")); 
				userinfo.setstudentName(rs.getString("student_name")); 
				userinfo.setstudentSsn(rs.getString("student_ssn")); 
				userinfo.setstudentAddress(rs.getString("student_address")); 
				userinfo.setentranceDate(rs.getString("entrance_date")); 
				userinfo.setabsenceYs(rs.getString("absenceys")); 
				userinfo.setcoachProfessorNo(rs.getString("coach_professor_no")); 
				
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			// 오류 및 처리 완료 이후 db 커넥션 끊기
			pool.freeConnection(con);
		}
		return userinfo;
	}
	
	public userInfo findPwd(String id , String name) {
		userInfo userinfo = null;
		
		try {
			con = pool.getConnection();
			// id와 pwd 가 맞는 유저 검색 후 있을 경우 true 리턴			
			String query = "select * from TB_STUDENT where STUDENT_NO = ? and STUDENT_NAME = ? ";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			
			System.out.println("query :" + query);
			
			// db쪽에 쿼리문 날리기 			
			rs = pstmt.executeQuery();
			
			// 로그찍으면 한번 빠져서 다음 값으로 넘어가게됨 그렇기에 while 과 동시에 사용 불가 한번만 체크해야함				
			/* System.out.println("rs.next() :" + rs.getString("student_no")); */
			
			if(rs.next()) {
			
				userinfo = new userInfo();
				userinfo.setstudentNo(rs.getString("student_no")); 
				userinfo.setdepartmentNo(rs.getString("department_no")); 
				userinfo.setstudentName(rs.getString("student_name")); 
				userinfo.setstudentSsn(rs.getString("student_ssn")); 
				userinfo.setstudentAddress(rs.getString("student_address")); 
				userinfo.setentranceDate(rs.getString("entrance_date")); 
				userinfo.setabsenceYs(rs.getString("absenceys")); 
				userinfo.setcoachProfessorNo(rs.getString("coach_professor_no")); 
				
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			// 오류 및 처리 완료 이후 db 커넥션 끊기
			pool.freeConnection(con);
		}
		return userinfo;
		
	}
	
	public boolean UpdatePwd(userInfo userInfo ,String resetpwd) {
		String id= userInfo.getstudentNo();
		String name = userInfo.getstudentName();
		boolean flag = false;
		try {
			con = pool.getConnection();
			// id와 pwd 가 맞는 유저 검색 후 있을 경우 true 리턴			
			String query = "update TB_STUDENT set student_pwd =?  where student_name = ? and student_no = ?" ;
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, resetpwd);
			pstmt.setString(2, name);
			pstmt.setString(3, id);
		
			
			System.out.println("query :" + query);
			System.out.println(pstmt.executeUpdate());
			// db쪽에 쿼리문 날리기 			
			/*
			 * if(pstmt.executeUpdate() >0) {
			 * 
			 * flag = !flag; System.out.println("flag : " + flag); };
			 */
			// 로그찍으면 한번 빠져서 다음 값으로 넘어가게됨 그렇기에 while 과 동시에 사용 불가 한번만 체크해야함				
			/* System.out.println("rs.next() :" + rs.getString("student_no")); */	
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			// 오류 및 처리 완료 이후 db 커넥션 끊기
			pool.freeConnection(con);
		}
		return flag;
		
	}
	
	

}
