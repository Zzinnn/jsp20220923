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
	<c:choose>
		<c:when test="${param.genre == 'comedy' }">
			<p>A</p>
		</c:when>
		<c:when test="${param.genre == 'family' }">
			<p>B</p>
		</c:when>
		<c:when test="${param.genre == 'action' }">
			<p>C</p>
		</c:when>	
		<c:otherwise>
			장르를 골라주세요
		</c:otherwise>	
	</c:choose>
</body>
</html>