<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "util.DatabaseUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	Connection conn = null; 
	PreparedStatement pstmt = null; 
	String id = null;
	if(!request.getParameter("id").equals("poly123")){
		id = request.getParameter("id");
	}

	
	int n = 0; 
	
	try{
		conn = DatabaseUtil.getConnection();
		String sql = "delete from user where userid =?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		
		n = pstmt.executeUpdate();
	} catch(SQLException se){
		System.out.println(se.getMessage());
	} finally {
		if(pstmt!=null) pstmt.close(); 
		if(conn != null) conn.close();
	}
	response.sendRedirect("ManagerPage.jsp");
	
	
	
	

%>


</body>
</html>