<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ page import="java.io.PrintWriter" %>
<%@ page import="util.*" %>


<jsp:useBean id="memMgr" class="util.MemberMgr" />
<jsp:useBean id="joinBean" class="util.MemberBean"/>
<jsp:setProperty name="joinBean" property="*" />

<%
    boolean flag = memMgr.memberInsert(joinBean);
%>

<html>
	<head>
	 <title>회원가입 확인</title>

	<body>
	
		<%
		
		if(flag){
			  out.println("<b>회원가입을 축하 드립니다.</b><p>");
			  out.println("<a href=LoginForm.jsp>로그인</a>");
			}else{
				
			out.println( );
		
			  out.println("<b>다시 입력하여 주십시오.</b><p>");
			  out.println("<a href=JoinForm.jsp>다시 가입</a>");
			}				
		%>
		
	

	</body>
</html>
