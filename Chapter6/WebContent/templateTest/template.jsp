<!-- <템플릿 페이지를 사용하는 이유 
웹사이트의 좌측이나 상단메뉴, 하단 등 고정된 레이아웃 패턴을 작성하고
메뉴에 따라 메인영역에만 내용이 바뀌도록 하여 편의성을 제공
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String pagefile = request.getParameter("page");
	if (pagefile == null) pagefile="newitem"; // 처음 실행시 기본으로 보여줄 목록
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Template Test</title>
<style>
	table {
		margin: auto;
		width: 960px;
		color: gray;
		border: 1px solid gray;
	}
	td {
		border: 1px solid black;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td height="43" colspan="3" align="left">
				<jsp:include page="top.jsp"/>
			</td>
		</tr>
		<tr>
			<td width="15%" valign="top"><br>
				<jsp:include page="left.jsp"/>
			</td>
			<td colspan="2" align="center">
				<jsp:include page='<%=pagefile+".jsp" %>'/> <!-- "< %=fagefile%>.jsp"로 쓸 경우 오류발생. -->
				<!-- ★주의 + ".jsp"는 문자열이기 때문에 무조건 ""로 써야하므로 밖에 값을 묶어주는것은 ""이아닌 ''로 써야한다. -->
			</td>
		</tr>
		<tr>
			<td width="100%" height="40" colspan="3">
				<jsp:include page="bottom.jsp"/>
			</td>
		</tr>
	</table>
</body>
</html>