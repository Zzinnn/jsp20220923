<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session ="true" %><!-- 세션 만들건지 아닌지. 안써주면 true 기본값 -->
<%@ page import ="java.util.Date" %>
<%@ page import ="java.text.SimpleDateFormat" %>
<%
	Date time = new Date();
	SimpleDateFormat formatter =
		new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
%>
<html>
<head><title></title></head>
<body>
세션ID : <%= session.getId() %><br>
	<%
		time.setTime(session.getCreationTime());
	%>
세션생성시간: <%= formatter.format(time) %> <br>
	<%
		time.setTime(session.getLastAccessedTime());
	%>
최근 접근시간: <%= formatter.format(time) %>
</body>

</html>