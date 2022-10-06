<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import ="java.util.*, jsp20220923.chap07.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<% 
List<Car> list1 = new ArrayList<>();
Car c1 = new Car();
Car c2 = new Car();
c1.setModel("avante");
c1.setPrice(300);
c2.setModel("sonata");
c2.setPrice(400);
list1.add(c1);
list1.add(c2);
request.setAttribute("list", list1);
%>

<c:forEach items="${list }" var="cars">
	<h3>${cars.model } : ${cars.price }</h3>
</c:forEach>

<hr>
	
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>모델</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="car" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>${car.model }</td>
					<td>${car.price }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>