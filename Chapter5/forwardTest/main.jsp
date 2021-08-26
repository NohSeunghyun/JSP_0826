<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward Test</title>
</head>
<body>
	<h3>main.jsp 페이지 입니다.</h3>
	
	<!--
	 forward : 완전히 페이지를 전환. 주소그대로=기존요청=request영역 공유 
	<JSP책 224p참조 할 내용> 
	1.페이지 속성을 지정할 때 http://localhost:8090 생략해야함 
	2.컨텍스트 루트(/)의 절대경로를 기준으로(ex)"/forwardTest/sub.jsp")-Chapter5기준(현재 프로젝트기준으로 폴더안에있다면 그 위치까지 상세히 경로를 적어야함.)
	3.현재 페이지를 기준으로 상대경로(ex)"sub.jsp") - main.jsp와 sub.jsp가 같은 forwardTest폴더에 있으므로 폴더명은 안적어도 된다는것을 의미
	-->
	
	<%-- <jsp:forward page="sub.jsp"/> --%> <!-- 상대경로 -->
	<jsp:forward page="/forwardTest/sub.jsp"/> <!-- 절대경로 -->
	
	<p>(실행되다가 액션태그를 만나면)forward되어 페이지가 넘어가 sub.jsp실행 후 안돌아오므로 실행되지 않는 코드입니다.</p>
</body>
</html>