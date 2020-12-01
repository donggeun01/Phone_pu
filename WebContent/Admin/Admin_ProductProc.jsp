<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="proMgr" class="util.Admin_ProductMgr" />

<%
	String flag = request.getParameter("flag");
	boolean result = false;
	
	if(flag.equals("insert")){
    	result=proMgr.insertProduct(request);
//	}else if(flag.equals("update")){
//    	result=proMgr.updateProduct(request);
    }else if(flag.equals("delete")){
		result=proMgr.deleteProduct(request.getParameter("no"));
	}else{
		response.sendRedirect("Admin_ProductMgr.jsp");
	}
	
	if(result){
%>
	  <script>
	    alert("처리하였습니다");
		location.href="Admin_ProductMgr.jsp";
	  </script>
<%	}else{%>
	  <script>
	    alert("오류가 발생하였습니다.");
		location.href="Admin_ProductMgr.jsp";
	  </script>
<%	}%>
    