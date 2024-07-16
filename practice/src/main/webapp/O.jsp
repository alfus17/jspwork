<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String booldtype = request.getParameter("bloodtype");
	

%>



<%= name %> 님의 혈액형은 <%= booldtype %> 형이고 성격은 O형이야
<img alt="" src="http://www.ygweekly.com/news/photo/201802/3888_4307_5157.jpg">
</body>
</html>