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
	String s1 = (String) request.getAttribute("attr1");
	String s2 = (String) session.getAttribute("attr1");
	String s3 = (String) application.getAttribute("attr1");
%>
	<p><%= s1 %></p>
	<p><%= s2 %></p>
	<p><%= s3 %></p>
</body>
</html>