<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import="util.*" %>

<jsp:useBean id="memMgr" class="util.MemberMgr"/>
<jsp:useBean id="regBean" class="util.MemberBean" />

<jsp:setProperty name="regBean" property="*" />


<% 
	String bool = request.getParameter("de");
	boolean flag = false;
	String id = request.getParameter("id");
	
	if(bool.equals("delete")){
    flag = memMgr.memberDelete(id); 
	}
	else{
		response.sendRedirect("Admin_MemberMgr.jsp");
	}
%>


<%
if(flag){
%>
		<script>
		alert("성공적으로 회원 정보를 삭제하였습니다");
		location.href="Admin_MemberMgr.jsp";
		</script>
<%
	}else{
%>
		<script>
		alert("수정도중 에러가 발생하였습니다.");
		history.back();
		</script>

<%
	  }
%>