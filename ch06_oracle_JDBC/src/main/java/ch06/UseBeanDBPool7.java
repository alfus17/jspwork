package ch06;

import ch06.*;

import java.util.ArrayList;
import java.sql.*;

public class UseBeanDBPool7 {
	private DBConnectionMgr pool = null;
	
	public UseBeanDBPool7() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public  ArrayList<Bean_EMP> getList(){
		ArrayList<Bean_EMP> returnBean = new ArrayList<Bean_EMP>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try{
			con = pool.getConnection();
			st = con.createStatement();
			String query = "select EMP_ID,EMP_NAME,EMAIL,PHONE,JOB_CODE from EMPLOYEE ";
			rs = st.executeQuery(query);
			
			while(rs.next()){
				Bean_EMP bean = new Bean_EMP();
				bean.setEmp_id(rs.getString("emp_id"));
				bean.setEmp_name(rs.getString("emp_name"));
				bean.setEmail(rs.getString("email"));
				bean.setPhone(rs.getString("phone"));
				bean.setJob_code(rs.getString("job_code"));
			
				returnBean.add(bean);
			}
					
			}catch(Exception e){
				System.out.print(e);
			}finally{
				if(con != null){
					try{pool.freeConnection(con);}catch(Exception e){System.out.println(e);}
				}
			}
		return returnBean;
		
	}
	
}
