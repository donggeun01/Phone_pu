<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> 회원가입</title>
 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href="style.css">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link href="https://fonts.googleapis.com/css?family=Gugi|Jua&display=swap" rel="stylesheet">
  </head>
  <body>
    
    
    <jsp:include page="top.jsp" flush="false"/>
   
   
    
    <div class = " wrapper">
 
    <nav>
    
    <div id = join>  
    <div class ="y">
        회원가입 
        <hr class = "new1" width = "580px">
     
    </div>
     <form name = "joinform" action ="JoinProc.jsp" method="post">  
     	<input class="b" type = "text" name ="user_name" placeholder= "이름" style="width:530px; height:55px; "><br>
    	<input type = "text" name ="user_id" placeholder= "아이디" style="width:530px; height:55px; "><br>
    	<input type = "password" name ="user_passwd" placeholder= "비밀번호" style="width:530px; height:55px; "><br>
    	    
     	<input type = "text" name ="user_email" placeholder= "이메일" style="width:530px; height:55px; "><br>
    	<input type = "text" name ="user_phone" placeholder= "휴대폰 번호" style="width:530px; height:55px;"><br>
    <div id = "bottom">
    <button class="button button4 w3-black" style="height:70%">회원가입</button>
   	</form>
   </div> 
   </div>
   
   </nav>
   
   </div>
   
   
   
   <jsp:include page="bottom.jsp" flush="false"/>
   
   </body>
   </html>