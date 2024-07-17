<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,ch06.*"%>

<jsp:useBean id = "uBean" class="ch06.UseBeanDB4"/>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
		<tr>
			<th>Emp_id</th>
			<th>emp_name</th>
			<th>emp_code</th>
		</tr>

<% 

	ArrayList<Bean> beanlist = uBean.getList();	
	for(int i=0; i < beanlist.size(); i++){
		/* Bean bean1 = beanlist.get(i); */
%>
	<%-- 	<tr>
			<td> <%= bean1.getEmp_id() %></td>
			<td> <%= bean1.getEmp_name() %></td>
			<td> <%= bean1.getEmp_code() %></td>
		</tr> --%>
	 	<tr>
			<td> <%=  beanlist.get(i).getEmp_id() %></td>
			<td> <%=  beanlist.get(i).getEmp_name() %></td>
			<td> <%=  beanlist.get(i).getEmp_code() %></td>
		</tr> 
		
<%		
	}
%>

</table>

</body>
</html>