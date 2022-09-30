<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--map 이라는 이름의 Map타입 attribute 추가--%>
	<%
	
	Map<String, String> map = new HashMap<>();
	map.put("abc", "hulk");
	map.put("my key", "avenger");
	map.put("marvle", "superman");
	map.put("2", "two");
	
	request.setAttribute("map", map);
	pageContext.setAttribute("def", "marvle");
	%>

	<p>${map.abc }</p>
	<p>${map["my key"] }</p>
	<p>${map[def] }</p>
	<p>${map["2"] }</p>
	<p>${map[2] }</p>
</body>
</html>







