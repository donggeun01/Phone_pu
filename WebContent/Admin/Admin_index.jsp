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
  </head>
  
  
  
  
  <body bgcolor = "#A4A4A4">
	
	<jsp:include page="top.jsp" flush="false"/>
	


	<table width="75%" align="center" bgcolor="#9fc93c">
	<tr bordercolor="#FFFF99"> 
	<td height="190" align="center">[관리자님, 어서오세요].</td>
	</tr>
	</table>
	
	
	
	<jsp:include page="bottom.jsp" flush="false"/>
	
  </body>




</html>