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
		request.setAttribute("num1", 5);
		request.setAttribute("num2", 3);
	
		request.setAttribute("num3", 5);
		request.setAttribute("num4", 3);
		
		request.setAttribute("n5", 5);
		request.setAttribute("n6", 5);
		
		request.setAttribute("n7", 10);
		request.setAttribute("n8", 0);
		
		request.setAttribute("num9",10);
		request.setAttribute("num10",3);
	%>
	<jsp:forward page="02to.jsp"></jsp:forward>
</body>
</html>