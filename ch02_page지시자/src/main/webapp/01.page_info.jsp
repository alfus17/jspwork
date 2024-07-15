<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"
		session="true"
		buffer="8kb"
		autoFlush="true"
%>

  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>page_info</h1>
	<%= this.getServletInfo() %>
</body>
</html>