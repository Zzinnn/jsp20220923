<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>main 컨텐츠</h1>
	<div>
		<%-- value : String으로 들어가 있음 --%>
		<jsp:include page="06sub.jsp">
			<jsp:param value="3" name="num1"/>
			<jsp:param value="5" name="num2"/>
		</jsp:include>
	</div>	
</body>
</html>