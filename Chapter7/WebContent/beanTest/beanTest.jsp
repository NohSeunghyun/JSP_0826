<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 
	id : jsp페이지에서 사용될 자바빈 객체의 참조변수명
	class : 패키지명.자바빈의 설계규약에 맞게 작성된 클래스명
	scope : 사용범위, 자바빈 객체가 저장될영역
			page(기본값) - bean객체 공유범위가 현재 페이지에만 한정. 페이지 변경되면 공유가 유지안됨
			request - request 요청을 받고 처리를 완료할 때 까지 생존. 
					    모델2 방식으로 요청처리를 할 때 서블릿에서 데이터를 공유하고 jsp페이지에서 공유된 데이터를 사용할 때 많이 사용
			session - 클라이언트당 하나씩 할당. 클라이언트가 브라우저를 종료하기 전까지 유지
					    요청이 바뀌어도 정보가 유지되어야하는 로그인이나 장바구니 등에 많이 사용
			application - 서버가 종료되기 전까지 유지
						    애플리케이션 전체영역에서 데이터를 공유해야하는 경우 즉, 전체 방문자 수 계산 등에 많이 사용
 -->
 
<!-- test.BeanTest beantest = new test.BeanTest(); 와 아래 소스는 같다.
test패키지의 BeanTest자바빈 클래스 객체를 생성하여 beantest 참조변수가 참조한다. 
이때, bean객체 공유범위가 현재페이지에만 한정됨.-->
<jsp:useBean id="beantest" class="test.BeanTest"/>

<!-- set메서드를 이용해 저장된 값을 바꾸는 방법-1 -->
<!-- 참조변수 beantest로 접근(=name=참조변수명(자바빈 클래스 객체 생성한 것))하여 
set~()메서드 호출(=setProperty)하여 
셋팅할 값(=속성=property) 이름을 java에 선언한 private 멤버변수와 같게 하고
value에 변경할 값을 넣는다. -->
<jsp:setProperty name="beantest" property="name" value='<%=request.getParameter("name")%>'/>

<!-- // beanTest에 입력한 이름을 출력하기위해 BeanTest.java의 set메서드를 이용해 저장된 값을 바꾸는 방법-2 -->
<%-- <jsp:setProperty name="beantest" property="name" param="name"/> --%>

<%-- <% // beanTest에 입력한 이름을 출력하기위해 BeanTest.java의 set메서드를 이용해 저장된 값을 바꾸는 방법-3
	beantest.setName(request.getParameter("name"));
%> --%>

<!-- 방법 2와 3을 사용시 jsp에서 실행하면 java에서 선언한 name의 명시적 기본값인 홍길동 출력. 방법1을 사용시 jsp에서 실행해도 value값에 넣은 BeanTest!출력
방법1은 입력한 이름을 출력하는것이 아닌 사용자가 설정한 이름으로 나오게 한 경우. 
입력한 이름을 출력하고자 한다면 value='< %=request.getParameter("name")%>'로 쓴다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaBean Test</title>
</head>
<body>
	<b>자바빈 사용 예제</b>
	<h3><%=beantest.getName() %></h3> <!-- ★주의 : 표현식에는 세미콜론을 붙이면 안된다. -->
</body>
</html>