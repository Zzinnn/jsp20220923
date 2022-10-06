<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="left" %>
<%@ attribute name="right" %>
<%@ attribute name="active" %>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
<!--     <li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">3</a></li> -->
	
	<c:forEach begin="${left }" end="${right }" var="pageNumber">
		<li class="page-item ">
			<a class="page-link ${pageNumber eq active ? 'active' : '' }" href="#">${pageNumber }</a>
		</li>
	</c:forEach>
	
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>



