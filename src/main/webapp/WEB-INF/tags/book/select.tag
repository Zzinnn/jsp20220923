<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ tag dynamic-attribute="optionMap" %>
<%@ attribute name = "name" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<select name ="${name }">
	<c:forEach items ="${option }" var="option">
		<option value="${option.key }">${option.value}</option>
	</c:forEach>
</select>


