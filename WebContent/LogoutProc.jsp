<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 

 	session.removeAttribute("id"); 
	
	response.sendRedirect("layout.jsp");

%>