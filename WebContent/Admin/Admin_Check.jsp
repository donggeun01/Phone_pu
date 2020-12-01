<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="memMgr" class="util.MemberMgr" />
  
  
<% 
	String admin_id = request.getParameter("admin_id");
	String admin_passwd = request.getParameter("admin_pw");
	
	boolean adminCheck = memMgr.adminCheck(admin_id, admin_passwd);
    if(adminCheck) {
	    session.setAttribute("adminKey", admin_id);
    
%> <script>
   location.href="Admin_index.jsp";
   </script>

<%}else{%>

   <script>
   alert("입력한 정보가 정확하지 않습니다.");
   location.href="Admin_LoginForm.jsp";
   </script>

<%}%>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>




</body>
</html>