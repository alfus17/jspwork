<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, ch06.*" %>
<jsp:useBean id = "uBean" class="ch06.UseBeanDBPool6"/>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>DBConnectionPool과 Bean을 이용한 ORACLE연동 </h1>
<table border="1">
		<tr>
			<th>ID</th>
			<th>TITLE</th>
			<th>LOCATION</th>
		</tr>
<% 
	ArrayList<Bean> beanList = uBean.getList();
	
	for(int i=0; i< beanList.size(); i++){
%>
		<tr>
			<td><%= beanList.get(i).getEmp_id() %></td>
			<td> <%= beanList.get(i).getEmp_name() %></td>
			<td><%= beanList.get(i).getEmp_code() %></td>
		</tr>


<%	
	}
%>
</table>

</body>
</html>