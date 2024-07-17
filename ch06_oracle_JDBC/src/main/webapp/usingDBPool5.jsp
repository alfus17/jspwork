<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch06.*, java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBConnectionPool</title>
</head>
<body>
	<h1>DBConnectionPool을 이용한 ORACLE연동</h1>
<% 
	DBConnectionMgr pool = DBConnectionMgr.getInstance();

	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	
	try{
		con = pool.getConnection();
		st = con.createStatement();
		String query = "select * from emp_01 ";
		rs = st.executeQuery(query);
%>
			<table border="1">
			<tr>
				<th>ID</th>
				<th>TITLE</th>
				<th>LOCATION</th>
			</tr>
<% 
		while(rs.next()){
%>
			<tr>
				<td><%= rs.getString("emp_id") %></td>
				<td><%= rs.getString("emp_name")%></td>
				<td><%= rs.getString("emp_no") %></td>
			</tr>
<% 
			}
				
		}catch(Exception e){
			System.out.print(e);
		}finally{
			if(con != null){
				try{pool.freeConnection(con);}catch(Exception e){System.out.println(e);}
			}
		}

%>
</table>
	
</body>
</html>