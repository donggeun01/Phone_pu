<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>


	<title>top</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href="style.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link href="https://fonts.googleapis.com/css?family=Gugi|Jua&display=swap" rel="stylesheet">
</head>

<body>
	 <div class = " wrapper">

    <header>
      <div class = "topMenu">
      <ul id="menu">
<%	
	String check = null;
	check = (String)session.getAttribute("id");
	if(check == null){
%>
        <li><a href="LoginForm.jsp">로그인</a></li>           
        <li><a href="JoinForm.jsp">회원가입</a></li>
        <li><a href="#">장바구니</a></li>
        <li><a href="#">주문배송</a></li>
        <li><a href="#">마이페이지</a></li>
        
<% 
	response.sendRedirect("LoginForm.jsp");
	}else{
%>		
        <li style = color:black;><%= check %>님 반갑습니다</li>           
        <li><input type="button" value="로그아웃" style = color:black; onclick="location.href='LogoutProc.jsp'" ></li>
        <li><a href="#">장바구니</a></li>
        <li><a href="#">주문배송</a></li>
        <li><a href="#">마이페이지</a></li>
<%         response.sendRedirect("layout.jsp");
	}
%>
          </ul>
          <ul id = "menuRight">
          <li><a href="#">Q&A</a></li>
          <li><a href="#">회원후기</a></li>
          <li><a href="#">NOTE</a></li>
      </ul>
      </div>

      <div class = "centerMenu">
            <div id="title"><a href="layout.jsp"><img src="image/title.jpg" alt="title"></a></div>
      </div>

      <div class = "bottomMenu">
        <ul id="downMenu">
            <li><a href="#">하드케이스</a></li>
            <li><a href="#">젤리케이스</a></li>
            <li><a href="#">그립톡</a></li>
            <li><a href="#">하프미러케이스</a></li>
            <li><a href="#">에어팟케이스</a></li>
            <li><a href="#">기본 케이스</a></li>
            </ul>

      </div>
    </header>
</body>
</html>