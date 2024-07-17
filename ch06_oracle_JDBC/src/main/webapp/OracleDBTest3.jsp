<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
<% 
	Connection con = null;
	Statement st = null;
	ResultSet rs = null;
	try {
		
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gjjang","1234");
		st = con.createStatement();
		rs = st.executeQuery("select * from  DEPARTMENT");
%>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>TITLE</th>
			<th>LOCATION</th>
		</tr>
<% 
		while(rs.next()) {
			 String id = rs.getString(1);
			 String title = rs.getString("dept_title");
			 String location = rs.getString(3);
 %>	
 		<tr>
			<td><%= id %></td>
			<td><%= title %></td>
			<td><%= location %></td>
		</tr>
 			
 <% 
		}
%>



	</table>

<% 
		System.out.println("Query Success");
		
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

%>  



</body>
</html>