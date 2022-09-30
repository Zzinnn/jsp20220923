<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Person p1 = new Person();
	Person p2 = new Person();
	
	p1.setName("");
	p1.setAge(23);
	p1.setAlive(true);
	
	request.setAttribute("a", p1);
	 %>
	 
	
	<p> ${a.name } </p>
	<p> ${a.age } </p>
	<p> ${a.alive } </p>
</body>
</html>