<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.*, util.*" %>

 <jsp:useBean id="revMgr" class="util.ReviewMgr" />
<jsp:useBean id = "revBean" class = "util.ReviewBean"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ReviewPage</title>
<script language="JavaScript" src="script.js"></script>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<% 
ReviewBean review = revMgr.getReview(request.getParameter("no"));
%>

		<jsp:include page="top.jsp" flush="false"/>

<div class="w3-container">

  <table class="w3-table w3-striped w3-bordered">
    <tr>
      <th>상품후기</th>
    </tr>
    <tr>
      <td><b>제목 : <%=review.getReview_title()%></b></td>    
    </tr>
    <tr>
      <td>작성자 : <%=review.getReview_name()%></td>
    </tr>
    <tr>
    <td>내용 : <%=review.getReview_review()%></td>
    </tr>
  </table>
</div>
	<jsp:include page="bottom.jsp" flush="false"/>

	
</body>
</html>