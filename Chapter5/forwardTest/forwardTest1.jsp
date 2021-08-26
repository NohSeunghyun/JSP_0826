<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 클라이언트에서 전송되는 파라미터값들에 대한 한글처리 -->
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Forward Action Test</title>
</head>
<body>
	<!-- ''안에는 ""이 들어가야하고 ""안에는 ''이 들어가야하지만 아래코드에서는 변수명에 ""이 들어가야하기 때문에 ''로 묶고 안에 ""로 써야함  -->
	<!-- ★주의 : ''작은따옴표 사용하기 param추가시 마지막 /제거 -->
	<!-- forwardTest2.jsp로 완전히 이동하여 기존요청을 처리하도록 함(request영역 공유) -->
	<jsp:forward page='<%=request.getParameter("forwardPage")%>'>
		<jsp:param name="tel" value="034-1234-5678"/>
	</jsp:forward>
	<!-- forwardTest에는 이름,나이,주소의 값만 넣어 forwardTest1으로 넘긴 후 Test1에서 전화번호의 값을 추가하여 forwardTest2로 넘겨 처리 -->
</body>
</html>