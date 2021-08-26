<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8"); // post방식이므로 한글깨짐방지 작성
%>

<jsp:useBean id="beantest2" class="test.BeanTest2" scope="page"/>

<%-- 
<jsp:setProperty name="beantest" property="name" value='<%=request.getParameter("name")%>'/>
<jsp:setProperty name="beantest" property="addr" param="addr"/> // property는 자바에서 선언한 멤버변수명 param은 html에서 입력한 값의 변수명
<jsp:setProperty name="beantest" property="email" param="eamil"/>
<jsp:setProperty name="beantest" property="birthday" param="birthday"/>
 --%>
 
<!-- 위 4줄 코드를 한줄로. 이때 전송되어 오는 파라미터명과 bean객체의 속성명(멤버변수명)이 같다면 사용가능 -->
<jsp:setProperty name="beantest2" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaBean Test</title>
</head>
<body>
	<b>자바빈 속성 값 출력(표현식 사용)</b><br><br>
	이름 : <%=beantest2.getName() %> <br>
	주소 : <%=beantest2.getAddr() %> <br>
	이메일주소 : <%=beantest2.getEmail() %> <br>
	생년월일 : <%=beantest2.getBirthday() %> <br>
	
	<hr>
	
	<b>자바빈 속성 값 출력(jsp:getProperty 사용)</b><br><br>
	<!-- beantest2.getName();메서드를 호출한 리턴결과을 출력한 값과 같다 -->
	이름 : <jsp:getProperty property="name" name="beantest2"/> <br>
	주소 : <jsp:getProperty property="addr" name="beantest2"/> <br>
	이메일주소 : <jsp:getProperty property="email" name="beantest2"/> <br>
	생년월일 : <jsp:getProperty property="birthday" name="beantest2"/> <br>
</body>
</html>