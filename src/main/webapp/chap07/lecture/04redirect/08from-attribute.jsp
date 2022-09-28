<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
// request attribute
request.setAttribute("name1", "jimin");

// session attribute
// session type : HttpSession
//6개의 지역변수 중 하나
session.setAttribute("name2", "v");

response.sendRedirect("08to-attribute.jsp");
%>