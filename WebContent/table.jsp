<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@page import="java.util.*, util.*" %>

<jsp:useBean id="revMgr" class="util.ReviewMgr" />
<jsp:useBean id="revBean" class="util.ReviewBean" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script language="JavaScript" src="script.js"></script>
<link rel = "stylesheet" href="style.css">
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body class="w3-container">
<% 
Vector vResult= revMgr.getReviewList(); 
int j = 0;
%>

<table class="w3-table w3-striped w3-bordered w3-hoverable"> 

<thead>

<tr style="border-bottom:1px solid #A4A4A4;">
  <th style="width:15%;">상품후기Q&A</th>
  <th style="width:50%;"></th>
  <th style="width:15%;"></th>
  
</tr>
</thead>
  <%  
  if (vResult.size() ==0){%>
  	<tr> 
		<td align="center" colspan="5">등록된 상품이 없습니다.</td>
	</tr>	
  <%}
  
  
  else {	  
  for(int i=0; i<vResult.size(); i++){
	  ReviewBean reviewBean = (ReviewBean)vResult.get(j); %>
  <tr style = "cursor:pointer;" onClick = "location.href='ReviewPage.jsp?no=<%=reviewBean.getReview_no()%>'">
  <td><%=reviewBean.getReview_no() %></td>
  <td><%=reviewBean.getReview_title() %></td>
  <td><%=reviewBean.getReview_name() %></td>
  </a>   
		<%}
  } %>  
</tr>
<button id = "savebutton" onclick="window.open('tablepop.jsp','글쓰기 페이지',
		'width=900,height=500');">후기등록</button>
</table>


  <form name="rev" action="ReviewPage.jsp">
  	<intup type="hidden" name="no">
  </form>
</body>
</html>