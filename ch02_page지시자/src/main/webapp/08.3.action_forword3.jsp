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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
	당신의 아이디 <b><%= id %>이고,</b> <p/>
	비밀번호는 <%= pw %>입니다
	광진이 바보
	멍청쓰
	
</body>
</html>