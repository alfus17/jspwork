<%@page import="java.util.Enumeration"%>
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
	Enumeration name = session.getAttributeNames();
	while(name.hasMoreElements()){
		String sName = (String)name.nextElement();
		String value = (String)session.getAttribute(sName);
		
		out.print("session Name : " + sName + "<p/>");
		out.print("session Value : " + value + "<hr>");
	}
%>

</body>
</html>