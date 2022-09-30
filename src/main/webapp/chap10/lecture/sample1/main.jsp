<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 같은 브라우저에서 오는 요청을 공유해서 사용 --%>
	<%-- trim() 문자열 공백 제거 --%>
	<%
	String nameParam = request.getParameter("name");
	if (nameParam != null && !nameParam.trim().isEmpty()) {
		session.setAttribute("userName", nameParam);
	}
	
	String name = (String) session.getAttribute("userName");
	if (name == null) {
		name = "guest";
	}
	%>

	<h1><%= name  %>님 반갑습니다.</h1>
	
	<form action="">
		이름 : <input type="text" name="name">
		<input type="submit" value="등록">
	</form>
	
	<a href="other1.jsp">다른 페이지 가기</a>
</body>
</html>

