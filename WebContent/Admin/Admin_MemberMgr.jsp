<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
<%@ page import="java.util.*, util.*"%>
<jsp:useBean id="memMgr" class="util.MemberMgr" scope = "session"/>    

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>관리자 페이지</title>
   
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href="style.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>	
		<link href="https://fonts.googleapis.com/css?family=Gugi|Jua&display=swap" rel="stylesheet">
  		<script language="JavaScript" src="script.js"></script>
  </head>
  
  
  
  
  <body bgcolor = "#A4A4A4">
	
	<jsp:include page="top.jsp" flush="false"/>
	


	
	<%	Vector vResult= memMgr.getMemberList();	%>



	
	<table width="75%" align="center" bgcolor="#F8EFFB">
	<tr> 
	<td align="center" bgcolor=white>
	
		<table width="95%" align="center" bgcolor="#F6CED8" border="1">
		<tr bgcolor="#F6CED8"> 
		<td align="center"><font color="#585858">회원이름</font></td>
		<td align="center"><font color="#585858">회원아이디</font></td>
		<td align="center"><font color="#585858">패스워드</font></td>
		<td align="center"><font color="#585858">전화번호</font></td> 
		<td align="center"><font color="#585858">이메일</font></td>
		<td align="center"><font color="#585858">강퇴</font></td>
		</tr>
		<%
		
		for(int i=0; i<vResult.size(); i++){
		MemberBean regBean = (MemberBean)vResult.get(i);
		%>
		<tr> 
		<td align="center" name = "name"><%=regBean.getUser_name()%></td>
		<td align="center" name = "id"><%=regBean.getUser_id()%></td>
		<td align="center" name = "passwd"><%=regBean.getUser_passwd()%></td>
		<td align="center" name = "phone"><%=regBean.getUser_phone()%></td>
		<td align="center" name = "email"><%=regBean.getUser_email()%></td>
		<td align="center"><a href="javascript:Admin_productDelete('<%=regBean.getUser_id()%>')">삭제</a></td>
		</tr>
		
		
		<%}%>
	
		</table>
	</td>
	</tr>
	</table>
	
	
	
	
	
	<jsp:include page="bottom.jsp" flush="false"/>
	
	<form name="del" method="post" action="DeletePage.jsp?de=delete">
		<input type=hidden name=id>
	</form>
	
  </body>




</html>