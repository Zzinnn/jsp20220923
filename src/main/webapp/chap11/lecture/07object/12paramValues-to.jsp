<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>NAME : ${param.n }</p>
	<p>HEROS : <br> </p>
	<p>${paramValues.heros[0] }</p>
	<p>${paramValues.heros[1] }</p>
	<p>${paramValues.heros[2] }</p>
	<p>${paramValues.heros[3] }</p>
	<p>${paramValues.heros[4] }</p>
</body>
</html>