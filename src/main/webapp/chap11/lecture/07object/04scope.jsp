<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		pageContext.setAttribute("myName", "유재석");
		request.setAttribute("myName", "김종국");
	
		pageContext.setAttribute("your Name", "강호동");
		request.setAttribute("99name", "지석진");
	%>
	
	<p>${pageScope.myName }</p>
	<p>${requestScope.myName }</p>
	<p>${pageScope["your Name"] }</p>
	<p>${requestScope["99name"] }</p>
	<!-- 띄어쓰기 되어 있는 key를 쓸 수 없다 -->
	<!-- 숫자로 시작하는 key를 쓸 수 없다 -->
</body>
</html>