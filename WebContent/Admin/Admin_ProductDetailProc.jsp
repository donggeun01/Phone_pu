<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="top.jsp" flush="false"/>
	<form action="Admin_ProductDetailProc2.jsp" method="post" align="center">
		<h2>수정할 고유번호를 입력하세요 </h2>
		<input type="text" name="no" size="10" >		
		<input type="submit" value="입력" >
	</form>
	
	
	
	<jsp:include page="bottom.jsp" flush="false"/>
	

</body>
</html>