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
	<c:if test="${not empty param.dan }">
		<c:forEach var="i" begin="1" end="9">
			${param.dan } X ${i} = ${param.dan * i }<br>		
		</c:forEach>
	</c:if>
	<c:if test="${empty param.dan}">
		단을 입력해주세요.
	</c:if>
</body>
</html>