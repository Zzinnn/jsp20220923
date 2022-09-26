<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>form element</h1>
	
	<%-- form요소의 action attr : form요소 내에 인풋 값을 어디로 보내야 하는지 --%>
	<form action="12formElement.jsp">
		
		<%-- text input field --%>
		<%-- name 어떤 이름으로 보내져야 하는가 --%>
		<%-- name attr : 쿼리스트링을 완성할 때  --%>
		
		<input type="text" name ="coffee" />
		
		<%-- submit button --%>
		<input type="submit" />
	</form>

<hr />

<%
String val = request.getParameter("coffee");
%>

coffee : <%= val %>
	
</body>
</html>