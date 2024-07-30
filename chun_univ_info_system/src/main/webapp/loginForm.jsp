<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Login Page</title>
</head>

<div>
	<form action="do.login" method="post">
		<h2>로그인 페이지</h2>
		아이디 : <input type="text" name="login_id" value="">
		</p>
		비밀번호 : <input type="text" name="login_pwd" value="">
		</p>
		<a href="" onclick="findPwdPopup()"> 아이디 / 비밀번호 찾기</a> <input type="submit" value="로그인">

	</form>
</div>
<div class="">
	<img src="" alt="">
	<p>로그인 이미지</p>
</div>

<script>
        function findPwdPopup(){
            var url = "findPwd.jsp";
            var name = "popup test";
            var option = "width = 500, height = 500, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
</script>


</body>
</html>