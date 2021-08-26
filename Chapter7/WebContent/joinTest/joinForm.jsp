<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<style>
	#formArea {
		margin: auto;
		width: 400px;
		border: 1px solid black;
		text-align: center;
	}
	
	h1 {
		text-align: center;
	}
	
	table {
		margin: auto;
		width: 380px;
		text-align: center;
	}
</style>
</head>
<body>
	<section id="formArea">
		<h1>회원정보 입력</h1>
		<form action="joinChk.jsp" method="post">
			<table>
				<tr>
					<td><label for="id">아이디 : </label></td>
					<td><input type="text" name="id" id="id"></td>
				</tr>
				<tr>
					<td><label for="pass">패스워드 : </label></td>
					<td><input type="password" name="pass" id="pass"></td>
				</tr>
				<tr>
					<td><label for="name">이름 : </label></td>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<td><label for="gender">성별 : </label></td>
					<td>
						<label>남<input type="radio" name="gender" id="gender" value="1" checked></label>
						<label>여<input type="radio" name="gender" value="2"></label>
					</td>
				</tr>
				<tr>
					<td><label for="age">나이 : </label></td>
					<td><input type="text" name="age" id="age"></td>
				</tr>
				<tr> <!-- 실행시 크롬에서 실행 : 타입이 email이므로 제대로 인식되도록 하기 위해 -->
					<td><label for="email">이메일 : </label></td>
					<td><input type="email" name="email" id="email"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="가입하기">
						<input type="reset" value="다시쓰기">
					<td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>