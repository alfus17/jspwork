<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Request Info Method</h1>
	프로토콜 : <%= request.getProtocol() %> <br>
	서버의 이름 :  <%= request.getServerName() %><p/>
	서버의 포트번호 : <%= request.getServerPort() %> <p/>
	클라이언트의 주소 : <%= request.getRemoteAddr() %><p/>
	클라이언트의 이름 :  <%= request.getRemoteHost() %><p/>
	사용한 Method : <%= request.getMethod() %><p/>
	요청 경로(URI) : <%= request.getRequestURI() %><p/>
	요청 경로(URL) : <%= request.getRequestURL() %><p/>
	현재 사용하는 브라우저 : <%= request.getHeader("User-Agent") %><p/>
	파일 type : <%= request.getHeader("Accept") %><p/>
	

</body>
</html>