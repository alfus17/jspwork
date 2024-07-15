<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="java.util.*"
	session="true"
	buffer="16kb"
	autoFlush="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userErrorPage</title>
</head>
<body>
	<% int one=1, zero=0;  %>
	<h1>ErrorPage</h1>
	<p> one과 zero의 사칙연산</p>
	<p>one+zero =<%=one+zero%></p>
	<p>one-zero =<%=one-zero%></p>
	<p>one*zero =<%=one*zero%></p>
	<p>one/zero =<%=one/zero%></p>
	
</body>
</html>