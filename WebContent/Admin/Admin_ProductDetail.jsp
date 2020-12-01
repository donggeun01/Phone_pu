<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, util.*"%>
<jsp:useBean id="proMgr" class="util.Admin_ProductMgr" /> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="JavaScript" src="script.js"></script>
</head>
<body>
<jsp:include page="top.jsp" flush="false"/>
	
	<%Admin_ProductBean product= proMgr.getProduct(request.getParameter("no"));%>

	<table width="75%" align="center" bgcolor="#A9E2F3">
	<tr> 
	<td align="center" bgcolor="#F5EFFB">

		<table width="95%" align="center" bgcolor="#A9E2F3" border="1">
		<tr bgcolor="#FBEFEF"> 
		<td colspan="3" align="center"><font color="#000000"><%=product.getName()%></font></td>
		</tr>
		<tr> 
		<td width="20%">
		<img src="<%=request.getContextPath()%>/data/<%=product.getImage()%> "        > 
		</td>
		<td width="30%" valign="top">

			<table border="1" width="100%" heigth="100%">
			<tr>
			<td><b>상품이름 : </b><%=product.getName()%></td>
			</tr>			
			<tr>
			<td><b>가    격 : </b><%=product.getPrice()%></td>
			</tr>
			<tr>
			<td><b>구분등급 : </b><%=product.getLevel()%></td>
			</tr>
			<tr>
			<td><b>재    고 : </b><%=product.getStock()%></td>
			</tr>
			</table>
		
		</td>
		<td width="50%" valign="top"><b>상세설명</b><br><pre><%=product.getDetail()%></pre></td>
		</tr>
		<tr> 
		<td colspan="3" align="center">
		<a href="#">수정하기</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="javascript:productDelete('<%=product.getNo()%>')">삭제하기</a>
		</td>
		</tr>
		</table>

	</td>
	</tr>
	</table>
	
	<jsp:include page="bottom.jsp" flush="false"/>
</body>
</html>