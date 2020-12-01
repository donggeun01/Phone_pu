<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.MemberMgr" %>
<jsp:useBean id="proMgr" class="util.Admin_ProductMgr" />

<%
   request.setCharacterEncoding("utf-8");
   String num = request.getParameter("no");

   boolean check = proMgr.checkNo(num);
   
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<%
		if(check){	 
		%>	
			<form id="gopage" method="post" action="Admin_ProductDetail.jsp">
				<input type="hidden" name="no" value= <%= num %>>
			</form>
		<% 	
		}else{
	  
		response.sendRedirect("Admin_ProductDetailProc.jsp");
		}
		%>
			
	

	

</body>
<script>
this.document.getElementById('gopage').submit();
</script>
</html>