<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>

<jsp:include page="top.jsp" flush="false"/>

	<table width="75%" align="center" bgcolor="#E0E6F8">
	<tr> 
	<td align="center" bgcolor="#F6CED8">

		<form method="post" action="Admin_ProductProc.jsp?flag=insert" enctype="multipart/form-data">
		<table width="95%" align="center" bgcolor="#1C1C1C" border="1">
		<tr bgcolor="#FE9A2E"> 
		<td colspan="2" align="center"><font color="#FFFFFF">상품 등록</font></td>
		</tr>
		<tr> 
		<td align="center">상품번호</td>
		<td align="left"><input type="text" name="no" size="20"></td>
		</tr>
		<tr> 
		<td align="center">상품이름</td>
		<td align="left"><input type="text" name="name" size="20"></td>
		</tr>
		<tr> 
		<td align="center">상품가격</td>
		<td align="left"><input type="text" name="price" size="20">원</td>
		</tr>
		<tr> 
		<td align="center">상품설명</td>
		<td><textarea rows="10" cols="45" name="detail"></textarea></td>
		</tr>
		<tr> 
		<td align="center">상품수량</td>
		<td><input type="text" name="stock" size="10">개</td>
		</tr>
		<tr> 
		<td align="center">구분등급</td>
		<td><input type="text" name="level" size="10">구분등급</td>
		</tr>
		<tr> 
		<td align="center">상품이미지</td>
		<td><input type="file" name="image"></td>
		</tr>
		<tr> 
		<td colspan="2" align="center"> 
		<input type="submit" value="상품등록">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="다시쓰기">
		</td>
		</tr>
		</table>
		</form>
	
	</td>
	</tr>
	</table>

	<jsp:include page="bottom.jsp" flush="false"/>

</body>
</html>