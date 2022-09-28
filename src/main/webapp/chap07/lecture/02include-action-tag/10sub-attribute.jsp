<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
Object b = request.getAttribute("list1");
List<String> list = (List<String>) b;

for(String value : list){
	out.print(value + " ");
}


Object a = request.getAttribute("map1");
Map<String,String> map = (Map<String,String>) a;

%>
<p><%= map.get("jisu") %></p>
<p><%= map.get("v") %></p>