<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.*, util.*"%> 

<jsp:useBean id="proMgr" class="util.Admin_ProductMgr" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script language="JavaScript" src="script.js"></script>
<title>관리자 페이지</title>
</head>

<body>

	<jsp:include page="top.jsp" flush="false"/>


	<table width="75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#F5ECCE">
 
		<table width="95%" align="center" bgcolor="#E0F8F7" border="1">
		<tr bgcolor="#F5A9A9"> 
		<td align="center"><font color="#000000">번호</font></td>
		<td align="center"><font color="#000000">이름</font></td>
		<td align="center"><font color="#000000">가격</font></td>
		<td align="center"><font color="#000000">제품번호</font></td>
		<td align="center"><font color="#000000">재고</td>
		<td align="center">&nbsp;</font></td>
		</tr>
		<%
		Vector vResult= proMgr.getProductList();
		if(vResult.size() ==0){
		%>
		<tr> 
		<td align="center" colspan="5">등록된 상품이 없습니다.</td>
		</tr>
		<%}else{
			for(int i=0; i<vResult.size(); i++){
			Admin_ProductBean product = (Admin_ProductBean)vResult.get(i);
		%>
		<tr> 
		<td align="center"><%=product.getNo()%></td>
		<td align="center"><%=product.getName()%></td>
		<td align="center"><%=product.getPrice()%></td>
		<td align="center"><%=product.getLevel()%></td>
		<td align="center"><%=product.getStock()%></td>
		<td align="center"><a href="Admin_ProductDetailProc.jsp"> 상세보기</a></td>
		</tr>
		<%}
		}%>
		<tr>
		<td colspan="5" align="center"><a href="Admin_ProductInsert.jsp">상품등록</a></td>
		</tr>
		</table>
		
	</td>
	</tr>
	</table>

	<jsp:include page="bottom.jsp" flush="false"/>
	

</body>
</html>