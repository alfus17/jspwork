<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = (String)session.getAttribute("idKey");	
	System.out.println(id);
	if(id == null){
%>
	<script type="text/javascript">
		alert("로그인이 되지 않았습니다");
		location.href = "05.3.sessionLoginOK.jsp";
	</script>

<%
	}

	Cookie[] cookies = request.getCookies();
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("idKey")){
			id = cookies[i].getValue();
		}
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Cookie 로그인</h2>
	<h3><%= id %>님이 로그인 하셨습니다.</h3>
	<h3><a href="05.4.sessionLogout.jsp">로그아웃</a></h3>
</body>
</html>