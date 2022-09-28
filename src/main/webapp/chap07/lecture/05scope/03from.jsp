<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%
	request.setAttribute("attr1", "request");
	session.setAttribute("attr1", "session");
	application.setAttribute("attr1", "application");
%>
<jsp:forward page="03to.jsp"></jsp:forward>