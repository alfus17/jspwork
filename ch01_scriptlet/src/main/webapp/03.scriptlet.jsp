s
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		스크립트릿 : 지역변수선언, 반복문, 조건문등 
		[사용법]
		<%
			프로그잼
		%> 
	--%>
	<% 
		String  name = "이고잉";
		int num = 3;
		boolean boo = false;
		double dobleNum = 3.14;
		
	%>
	
	나의 이름은 <%= name %> 이고, 
	<%= num %> 회차 수업 입니다.
	<br>
	지금 수업에 참여 중 입니까? <%= boo==true?"yes":"no" %>
	원주율은 <%=dobleNum %> 입니다.
	<br>
	
	<% 
		for(int i = 0; i<=10; i++){
			out.print(i);
		}
	%>
	
	
	
</body>
</html>