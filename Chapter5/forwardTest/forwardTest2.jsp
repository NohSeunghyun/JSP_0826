<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Forward Action Test</title>
</head>
<body>
<!-- 포워딩 방식으로 전송하면 요청(request)정보가 공유되기 때문에 파라미터값을 모두 얻을 수 있음 -->
	<h2>포워드 된 페이지(forwardTest2.jsp)</h2>
	<table>
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%=request.getParameter("age") %></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><%=request.getParameter("address") %></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><%=request.getParameter("tel") %></td>
		</tr>
	</table>
</body>
</html>