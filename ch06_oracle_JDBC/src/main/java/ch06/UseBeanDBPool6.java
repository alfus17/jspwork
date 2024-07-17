package ch06;

import ch06.*;

import java.util.ArrayList;
import java.sql.*;

public class UseBeanDBPool6 {
	private DBConnectionMgr pool = null;
	
	public UseBeanDBPool6() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public  ArrayList<Bean> getList(){
		ArrayList<Bean> returnBean = new ArrayList<Bean>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try{
			con = pool.getConnection();
			st = con.createStatement();
			String query = "select * from emp_01 ";
			rs = st.executeQuery(query);
			
			while(rs.next()){
				Bean bean = new Bean();
				bean.setEmp_id(rs.getString("emp_id"));
				bean.setEmp_name(rs.getString("emp_name"));
				bean.setEmp_code(rs.getString("emp_no"));
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
