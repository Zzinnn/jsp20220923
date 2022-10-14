<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h1> ${customers.id } 사용자 </h1>
<!-- FORM 받아서 내용 SERVLET30 DOPOST로 보내줌  -->
	
	<form action="${pageContext.request.contextPath }/Servlet30" method="post" id="deleteForm1">
		
		이름 : <input type="text" name="custName" value="${customers.name }"> <br>
		별칭 : <input type="text" name="contName" value="${customers.contactName }"> <br>
		주소 : <input type="text" name="addr" value="${customers.address }"> <br>
		도시 : <input type="text" name="city" value="${customers.country }"> <br>
		국가 : <input type="text" name="country"> <br>
		<input type="hidden" name="id">
		
		<input type="submit" value="추가">

	</form>
	
	
<!-- FORM 받아서 SERVLET31 DOPOST로 보내줌 -->
	
	<form action="${pageContext.request.contextPath }/Servlet31" method="post">
		<input type="hidden" name="id" value="">
		<input id="deleteButton1" type="submit" value="삭제">
	</form>
	
	
<!-- FORM 내용 삭제 스크립트 -->
	<script>
		document.querySelector('deleteButton1').addEventListener("click",function(e){
			
			e.preventDefault();	//event가 더 진행 안되게 하는 코드
			console.log("삭제 서브밋 버튼 클릭됨.");
			console.log("하지만 더이상 진행되지 않도록 함");
			
			// confirm: 대화창 두개 / 확인:true 취소:false 리턴해 줌
			let c = confirm("삭제하시겠습니까?");
			console.log(c);
			
			if(c) {
				document.querySelector("#deleteForm1").submit();
			}
		});
	</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>