<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String imgName = request.getParameter("imgName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image Test</title>
</head>
<body>
	<br><br>
	<h3>이름은 <%=name %> 입니다.</h3><br><br>
	<!-- 상대경로(경로 맨앞에 붙이는 명령어) : 상위폴더로 이동은 ../ 현재폴더에서의 이동은 ./ 하위폴더로 이동은 / -->
	<img src="../image/<%=imgName%>">
</body>
</html>