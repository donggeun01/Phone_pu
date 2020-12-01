<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
<%@ page import="java.io.PrintWriter" %>
<%@ page import="util.*" %>


<jsp:useBean id="review" class="util.ReviewMgr" />
<jsp:useBean id="reBean" class="util.ReviewBean"/>
<jsp:setProperty name="reBean" property="*" />


<%


    boolean flag = review.ReviewInsert(request.getParameter("Review_title"),
    		request.getParameter("Review_review"),request.getParameter("Review_name"));
%>


<html>

	<head>
		<title>리뷰등록 확인</title>
	</head>
<body>



<% if (flag) {%>
	<script>
	alert("후기를 등록하셨습니다.");
	location.href="Product.jsp";
	</script>
<% }

 else {%>
	<script>
	alert("오류가 발생했습니다.");
	window.close();
	</script>
<% }%>



</body>
</html>

