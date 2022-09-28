<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	주소 : <%= request.getParameter("address") %><br>
	이메일 : <%= request.getParameter("email") %>
</body>
</html>