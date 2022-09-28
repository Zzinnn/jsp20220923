<%@page import="java.util.*"%>
<%@ page import="jsp20220923.chap07.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Person> people = new ArrayList<Person>();
	Person p1 = new Person();
	Person p2 = new Person();
	Person p3 = new Person();
	
	
	request.setAttribute("list", people);
	%>
	
	<jsp:forward page="11to.jsp"></jsp:forward>
</body>
</html>