<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach begin="2" end="9" var="i" step="2">
		<h3>구구단 ${i }단</h3>
		<c:forEach begin="1" end="9" var="j">
			<p>${i } X ${j } = ${i*j }</p>
		</c:forEach>
	</c:forEach>
</body>
</html>