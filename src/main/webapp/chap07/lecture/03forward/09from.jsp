<%@page import="java.util.Map"%>
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
	
	Map<String, String> map = Map.of("trump", "new york", "donald","chicago");
	
	request.setAttribute("address", map);
	
	<jsp:include page="09to.jsp" />
	 %>
</body>
</html>