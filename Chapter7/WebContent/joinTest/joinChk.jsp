<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="join" class="join.JoinBean"/>
<jsp:setProperty name="join" property="*"/>
<%
	String gender = Integer.toString(join.getGender());
	switch(gender) {
		case "1" : gender = "남";break;
		case "2" : gender = "여";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력 정보 확인 페이지</title>
<style>
	table {
		width: 400px;
	}
	
	h1 {
		text-align: center;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th>아이디</th>
			<td><jsp:getProperty name="join" property="id"/></td> <!-- name은 bean의 아이디 property는 java에 선언한 멤버변수명 -->
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><jsp:getProperty name="join" property="pass"/></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><jsp:getProperty name="join" property="name"/></td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
				<%=gender %>
			</td>
		</tr>
		<tr>
			<th>나이</th>
			<td><jsp:getProperty name="join" property="age"/></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><jsp:getProperty name="join" property="email"/></td>
		</tr>
	</table>
</body>
</html>