<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "util.DatabaseUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
</head>
<body>
       <p>관리자 페이지</p>
       
      <table width = "100%" border = "1">
      <tr>
            <td>이름</td>
            <td>아이디</td>
         
            <td>이메일</td>
            <td>전화번호</td>
            <td>정지</td>
      </tr>
 
<%
      // 1. JDBC 드라이버 로딩
      Class.forName("com.mysql.cj.jdbc.Driver");
  
      Connection conn = null; // DBMS와 Java연결객체
      Statement stmt = null; // SQL구문을 실행
      ResultSet rs = null; // SQL구문의 실행결과를 저장
  
      try
      {
            String jdbcDriver = "jdbc:mysql://localhost:3306/memberInfo?characterEncoding=UTF-8&serverTimezone=UTC";
            String dbUser = "root";
            String dbPass = "1234";
   
            String query = "select * from user order by userid";
   
            // 2. 데이터베이스 커넥션 생성
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
   
            // 3. Statement 생성
            stmt = conn.createStatement();
   
            // 4. 쿼리 실행
            rs = stmt.executeQuery(query);
   
            // 5. 쿼리 실행 결과 출력
            while(rs.next())
            {
            	String name = rs.getString("username");
 	           	String id = rs.getString("userid");	           	 
 	          	String email = rs.getString("useremail"); 
 	          	String phone = rs.getString("userphone");
            		
            	
            
            	
%>
      <tr>
      		
	            <td><%= rs.getString("username") %></td>
	            <td><%= rs.getString("userid") %></td>           
	            <td><%= rs.getString("useremail") %></td>
	            <td><%= rs.getString("userphone") %></td>
	            <td> <a href = "DeletePage.jsp?id=<%=rs.getString("userid")%>"> 강퇴 </a></button></td>
           
      </tr>
<%	}
            
      }catch(SQLException ex){
            out.println(ex.getMessage());
            ex.printStackTrace();
      }finally{
            // 6. 사용한 Statement 종료
            if(rs != null) try { rs.close(); } catch(SQLException ex) {}
            if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
   
            // 7. 커넥션 종료
            if(conn != null) try { conn.close(); } catch(SQLException ex) {}
      }
%>
      </table> 
      
       <button onclick="location.href='index.jsp' ">홈으로</button>
      
</body>
</html>