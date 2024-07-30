<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chun.univ.dto.userInfo" %>
    
<!-- 페이지 실행시 서버에   -->
<% 
	userInfo userInfo = (userInfo) session.getAttribute("findPwdUserInfo");
	if(userInfo == null){
%>
		<style type="text/css">
   		.resetPwd{
   			display: none;
   		}
   		</style>
<%
	}else{
%>
		<style type="text/css">
   		.findPwd{
   			display: none;
   		}
   		.resetPwd{
   			display: block;
   		}
   		</style>
<%	
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    
    <title>Document</title>
</head>
<body>
    
    <div class="findPwd">
        <form action="find.pwd" method="post">
            <h2>비밀번호 찾기</h2>
            학번 : <input type="text" name="loginId" value=""></p>
            이름 : <input type="text" name="findStudentName" value=""></p>
            <input type="submit" value="비밀번호 찾기">

        </form>
    </div>
        
    <div class="resetPwd">
        <form action="reset.pwd" method="post">
            <h2>재설정할 비밀번호</h2>
            비밀번호 입력<input type="text" name="resetPwd" value=""></p>
			비밀번호 확인 : <input type="text" name="checkResetPwd" value=""></p>
            <input type="submit" value="비밀번호 재설정">

        </form>
    </div>
    

   

</body>
</html>