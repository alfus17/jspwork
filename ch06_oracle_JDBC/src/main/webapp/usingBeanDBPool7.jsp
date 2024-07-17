<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, ch06.*" %>
<jsp:useBean id = "uBean" class="ch06.UseBeanDBPool7"/>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EMPLOYEE 테이블</h1>
<table border="1">
		<tr>
			<th>emp_id</th>
			<th>emp_name</th>
			<th>email</th>
			<th>phone</th>
			<th>job_code</th>
		</tr>
<% 
	ArrayList<Bean_EMP> beanList = uBean.getList();
	
	for(int i=0; i< beanList.size(); i++){
%>
		<tr>
			<td><%= beanList.get(i).getEmp_id() == null ?"":beanList.get(i).getEmp_id()%></td>
			<td> <%= beanList.get(i).getEmp_name() == null ?"": beanList.get(i).getEmp_name() %></td>
			<td><%= beanList.get(i).getEmail() == null ?"": beanList.get(i).getEmail()%></td>
			<td><%= beanList.get(i).getPhone() == null ?"":beanList.get(i).getPhone()%></td>
			<td><%= beanList.get(i).getJob_code() == null?"":beanList.get(i).getJob_code()%></td>
		</tr>


<%	
	}
%>
</table>

</body>
</html>