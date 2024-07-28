<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="loginDao" class="chun.univ.dao.LoginDao"/>
<jsp:useBean id="userInfo" class="chun.univ.dto.userInfo"/>

<% 
	/* 사용자 요청 아이디 비밀번호를 받아와서 */
	String id  =  request.getParameter("login_id");
	String pwd = request.getParameter("login_pwd");
	
	 /* 로그 찍기 */
	System.out.println("request id :" + id);
	System.out.println("request pwd :" + pwd);
	
	/* 로그인다오에서 로그인 체크이후 userInfo 객체 전달 */
	userInfo = loginDao.checkLogIn(id,pwd);
	
	 /* 로그 찍기 */
	System.out.println("userInfo :" + userInfo);
	
	
	/* 로그인 결과값 불린 */
	boolean loginResult = false;
	
	
	/* 반환되는 객체의 값이 null값인지 비교하여 로그인  */
	if(userInfo != null){
		/* 세션에 userInfo 객체 넣기 */
		session.setAttribute("userInfo", userInfo);	
		loginResult = !loginResult;
%>
		<script type="text/javascript">
			alert("로그인에 성공하셨습니다.");
			location.href = "mainHomePage.jsp";
		</script>
<%
	}else{
%>
		<script type="text/javascript">
			alert("로그인에 실패하셨습니다.");
			location.href = "loginForm.jsp";
		</script>
		
		
<%		
	}
%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Proc</title>
</head>





</body>
</html>