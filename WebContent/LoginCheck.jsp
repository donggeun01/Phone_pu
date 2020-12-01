<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "util.*" %>
<jsp:useBean id="memMgr" class="util.MemberMgr" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw"); 
	
	boolean loginCheck = memMgr.loginCheck(id,pw); 
	
	if(loginCheck){
		out.println("<script>");
		out.println("alert('로그인 되었습니다.')");
		out.println("location.href ='top.jsp' "); 
		out.println("</script>");    
		session.setAttribute("id",id);
		
	} else {
		out.println("<script>");
		out.println("alert('정보가 틀렸습니다.')");
		out.println("location.href ='LoginForm.jsp' "); 
		out.println("</script>"); 	
		
		
	}
	
	
	
	

%>


</body>
</html>