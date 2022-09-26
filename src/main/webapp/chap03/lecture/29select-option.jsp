<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>select option 연습</h1>
	<form action="">
		<select name="tel">
			<option value="sk">skt</option>
			<option value="kt">kt</option>
			<option value="lg">lg</option>
		</select>	
		<br>
		<select name="foods" multiple>
			<option value="pizza">피자</option>
			<option value="burger">버거</option>
			<option value="pasta">파스타</option>
		</select>
		<br>
		<input type="submit" value="전송">
	</form>
	
	<hr>
	
	<%
	String tel =request.getParameter("tel");
	String[] foods =request.getParameterValues("foods");
	
	if(tel == null){
		tel ="";
	}
	if(foods == null){
		foods =new String[]{};
	}	
	%>
	
	<p>
	통신사는 <%= tel %>이고<br>
	선택한 음식들은 <%= String.join(",", foods) %>입니다.
	</p>
	
	
</body>
</html>