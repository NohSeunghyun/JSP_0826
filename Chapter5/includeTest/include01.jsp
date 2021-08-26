<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//미리 모든 요청 객체의 파라미터값들을 한글깨짐방지 처리함.
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Test</title>
</head>
<body>
	<h3>include01.jsp 페이지 입니다.</h3>
	
	<!-- include : 현재페이지에서 다른페이지를 삽입할 때 사용 -->
	<jsp:include page ="include02.jsp"/>
	
	<h3>다시 include01.jsp 페이지 입니다.</h3>
	<p>(실행되다가 액션태그를 만나면)include되어 페이지가 넘어가 include02실행 후 돌아오므로 실행되는 코드입니다.</p>
	
	<hr>
	
	<h3>include 액션태그에서 파라미터값을 전달하는 방법-1</h3>
	<jsp:include page="../imageTest/image.jsp">
		<jsp:param name="name" value="듀크"/>
		<jsp:param name="imgName" value="duke.png"/>
	</jsp:include>
	
	<h3>include 액션태그에서 파라미터값을 전달하는 방법-2</h3>
	<jsp:include page="../imageTest/image.jsp?name=듀크2&imgName=duke2.png"/>
	
	<h3>다시 include01.jsp 페이지로 돌아와 실행됩니다.</h3>
</body>
</html>

<!-- include하는 방법 2가지
1.include 지시어 (JSP책 157p참조) (ex)< %@ include file="include02.jsp"%> : 소스를 전부 복사하여 그위치에 넣은 후 컴파일함
2.include 액션태그 (JSP책 229p참조) (ex)<jsp :include page="include02.jsp"> : 액션태그를 만나면 해당 페이지로 이동 후 실행완료되면 다시 원래 페이지로 돌아옴
 -->