<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원정보출력</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
			<td width="20%"><b>주소</b></td>
		</tr>
		<tr align="center">
			<tr align="center">
			<td>${param.id }</td>	
			<td>${param.pwd }</td>
			<td>${param.name }</td>
			<td>${param.email }</td>
			<td>${requestScope.address }</td>	<!-- requestScope를 이용해 바인딩된 주소정보 출력 -->
		</tr>
	</table>
</body>
</html>