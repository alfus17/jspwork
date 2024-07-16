<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"
%>    
   
<% 
	String name = request.getParameter("name");
	String sNum = request.getParameter("name");
	String major = request.getParameter("major");
	String hobby[] = request.getParameterValues("hobby");

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1><%= name %>님 환영합니다. <br></h1> 
	<h2> <%= name %>님의 학번은 <%= sNum %>이며 학과는 <%= major %> 이고,<br>
	취미는 <%= Arrays.toString(hobby) %>입니다.<br>
	
	</h2>
	
	

</body>
</html>