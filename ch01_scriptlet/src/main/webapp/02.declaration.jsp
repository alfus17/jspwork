<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html 주석  -->
<%-- jsp 주석 (html과 jsp가 혼재되어 있을 때 사용) --%> 
<%! 
	// 한줄 주석
	/*
		여러줄 주석
	*/
%>
	

<%-- 선엄눈 : 메소드 생성 및 멤버변수 생성시
	[사용방법]
	
	<%! 프로그램 %> 
	
	--%>

	나의 이름은 <%= name  %> 입니다.<br>
	나이는  <%=age %> 입니다
	<!-- 선언문으로 되어있는건 html올라오고 올라오기 때문에 순서상관없이  어디든 선언해줘도 다 된다.  -->
	<%! 
		String name = "아무개";
		int age = 25;
	%>
	
	
	
	<!-- 하지만 %의 경우 멤버 변수이기 때문에 순차적으로 선언이 필요하다.  -->
	<% 
		String name2 = "아무개";
		int age2 = 25;
	%>  
	 
	나의 이름은 <%= name2  %> 입니다.<br>
	나이는  <%=age2 %> 입니다
	<!-- 선언문으로 되어있는건 html올라오고 올라오기 때문에 순서상관없이  어디든 선언해줘도 다 된다.  -->

 	<!-- 메소드 선언은 반드시 선언문에서만 가능 -->
	<%! 
		int one;
		int two =1;
		
		public int plusMethod(int one, int two){
			return one + two;
		}
	%>
	one과 two의 합은 ? <%=plusMethod(3, 5) %>
	
	
	
	
	
</body>
</html>