<%@page import="kr.co.ezenac.el.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<!-- 회원정보를 저장할 빈 생성 -->
<jsp:useBean id="m1"  class="kr.co.ezenac.el.MemberBean"/>
	<!-- 전송된 회원 정보를 빈의 속성에 설정 -->
<jsp:setProperty property="*" name="m1"/>
	<!-- membersList로 ArrayList 객체 생성 -->
<jsp:useBean id="membersList" class="java.util.ArrayList"/>
	<!-- 회원 정보를 저장할 hashMap 객체를 액션태그 이용해 생성 -->
<jsp:useBean id="membersMap" class="java.util.HashMap"/>

<%
	/* 해쉬맵에 키/value 쌍으로 회원정보 저장 */
	membersMap.put("id", "ezenac6");
	membersMap.put("pwd", "0824");
	membersMap.put("name", "이젠6");
	membersMap.put("email", "ezenac6@gmail");
	
	/*회원정보 저장하는 멤버빈 객체 생성 */
	MemberBean m2 = new MemberBean("ezenac7","0824","이젠7","ezenac7@gmail");
	
	/* 전송된 회원정보(m1)와 자바코드로 생성한 회원정보(m2)  */
	membersList.add(m1);
	membersList.add(m2);
	
	/* 회원정보가 저장된 membersList를 membersList라는 key로 HashMap에 저장 */
	membersMap.put("membersList", membersList);
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원 정보 출력</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
		<tr align="center">
		
		</tr>
		
	</table>
</body>
</html>