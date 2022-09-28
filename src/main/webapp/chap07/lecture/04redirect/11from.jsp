<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
Map<String, String> map = Map.of("song2","1","song1","2");
session.setAttribute("songs", map);

response.sendRedirect("11to.jsp");
%>