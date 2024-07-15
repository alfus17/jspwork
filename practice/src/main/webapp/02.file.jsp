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
	String bloodtype = request.getParameter("bloodtype");
	
	switch(bloodtype){
		case "A" :%>				
			<jsp:forward page="A.jsp"></jsp:forward>
<%			break;
		case "B" :%>				
		<jsp:forward page="B.jsp"></jsp:forward>
<%			break;
		case "O" :%>				
		<jsp:forward page="O.jsp"></jsp:forward>
<%			break;
		case "AB" :%>				
		<jsp:forward page="AB.jsp"></jsp:forward>
<%			break;
}
%>

</body>
</html>