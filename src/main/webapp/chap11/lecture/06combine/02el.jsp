<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, jsp20220923.chap07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<Car> list = new ArrayList<Car>();
	Car c1 = new Car();
	Car c2 = new Car();

	c1.setModel("2");
	c1.setPrice(100);

	c2.setModel("3");
	c2.setPrice(200);
	
	list.add(c1);
	list.add(c2);
	
	request.setAttribute("cars", list);
	
	%>
<%--
attribute 에 List<Car> 타입 객체 추가

--%>

	<p>${cars[0].company }</p>
	<p>${cars[0].price }</p>
	<p>${cars[0].model }</p>
	<p>${cars[1].company }</p>
	<p>${cars[1].price }</p>
	<p>${cars[1].model }</p>
</body>
</html>
