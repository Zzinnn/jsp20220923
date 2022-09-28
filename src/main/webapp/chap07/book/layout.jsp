<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout1</title>
</head>
<body>

<%-- cellpadding 안쪽 내용물과 테두리의 여백 --%>
<%-- cellspacing 바깥 경계선과 테두리의 여백 --%>
<%-- valign 높이 기준 정렬 --%>

<table width="400" border="1" cellpadding ="0" cellspacing="0">
	<tr>
		<td colspan="2">
			<jsp:include page="module/top.jsp"/>
		</td>
	</tr>
	<tr>
		<td width="100" valign="top">
			<jsp:include page="module/left.jsp"></jsp:include>
		</td>
		<td width="300" valign="top">
			<!-- 내용부분: 시작 -->
			레이아웃1
			<br><br><br>
			<!-- 내용부분: 끝 -->
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="module/bottom.jsp"></jsp:include>
		</td>
	</tr>

</body>
</html>