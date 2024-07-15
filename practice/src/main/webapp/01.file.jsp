<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="02.file.jsp">
	
		<fieldset>
			이름 : <input name="name"><p/>
            <legend>혈액형</legend>
            <input type="radio" name="bloodtype" value="A">
            <label >A</label>&emsp;

            <input type="radio" name="bloodtype" value="B" >
            <label >B</label>&emsp;
            
            <input type="radio" name="bloodtype" value="O" >
            <label >O</label>&emsp;
            
            <input type="radio" name="bloodtype" value="AB" >
            <label >AB</label>&emsp;
            
        </fieldset>
        <input type="submit">
	</form>

</body>
</html>