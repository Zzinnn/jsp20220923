<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "java.util.* , jsp20220923.chap07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	두개의 entry를 가진 
	Map<String, Person> 타입 객체를 attribute에 넣고
	entry의 value들의 프로퍼티 el로 출력하는 코드 작성
	
	 --%>


<%
	Map<String, Person> map = new HashMap<>();
	
	Person p1 = new Person();
	Person p2 = new Person();
	
	p1.setName("A");
	p1.setAge(10);
	p2.setName("B");
	p2.setAge(20);
	
	map.put("person1",p1);
	map.put("person2",p2);
	
	request.setAttribute("m", map);
%>

<p> ${m.person1.name } </p>
<p> ${m.person1.name } </p>
<p> ${m.person1.name } </p>
<p> ${m.person1.name } </p>
<p> ${m.person1.name } </p>
<p> ${m.person1.name } </p>

</body>
</html>




