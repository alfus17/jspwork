<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>    
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
		rs = st.executeQuery("select * from  TB_PRODUCT");
%>
	<table border="1">
		<tr>
			<th>Product_Code</th>
			<th>Product_Name</th>
			<th>Brand</th>
			<th>Stock_Quant</th>
		</tr>
<% 
		while(rs.next()) {
			 String pcode = rs.getString(1);
			 String pname = rs.getString(2);
			 String brand = rs.getString(3);
			 String stock_quant = rs.getString(4);
 %>	
 		<tr>
			<td><%= pcode %></td>
			<td><%= pname %></td>
			<td><%= brand %></td>
			<td><%= stock_quant %></td>
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