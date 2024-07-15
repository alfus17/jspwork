<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if_2</title>
<%-- <%! String msg; %>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");

	
/* 	switch(color){
	case "blue" :
		msg = "파란색";
		break;
	case "yellow":
		msg = "노란색";
		break;
	case "pink":
		msg = "핑크색";
		break;
	case "etc":
		msg = "기타";
	} */
	
	if(color.equals("blue")){
		msg = "파란색";
	}
	else if(color.equals("yellow")){
		msg = "노란색";
	}
	else if(color.equals("pink")){
		msg = "핑크색";
	}else{
		msg = "기타";
	}
	
%> --%>

</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String msg;

	
/* 	switch(color){
	case "blue" :
		msg = "파란색";
		break;
	case "yellow":
		msg = "노란색";
		break;
	case "pink":
		msg = "핑크색";
		break;
	case "etc":
		msg = "기타";
	} */
	
	if(color.equals("blue")){
		msg = "파란색";
	}
	else if(color.equals("yellow")){
		msg = "노란색";
	}
	else if(color.equals("pink")){
		msg = "핑크색";
	}else{
		msg = "기타";
	}
	
%>
	 <b><%= name %><br> </b> 님이 좋아하는 색상은 <b> <%= msg %> 입니다.</b> <br>
	<%= color %> <br>
</body>
</html>