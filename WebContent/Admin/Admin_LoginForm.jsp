<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>관리자 로그인</title>
    <style>
    
    #login{position:relative; width:480px; height:330px;
       left: 30%; margin-top:12%; border: solid 1px black; border-radius: 18px}
    #login_left{position: absolute;width:30% height:30%; left:170px; top: 90px;}
    #login_bot_left{position: absolute;width:30% height:30%; left:195px;top:160px;}
    #title_login{padding:  20px;text-align: center; font-size: 20px;}
   
    </style>
    
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href="style.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		
		<link href="https://fonts.googleapis.com/css?family=Gugi|Jua&display=swap" rel="stylesheet">
  </head>
  
  <body>
    <div class = " wrapper">
   
    <jsp:include page="/top.jsp" flush="false"/>
    <nav>

      <div id = "login">

        <div id = title_login>
          <b>Admin LOGIN</b>
      </div>
      
      <div id = "login_left" style = 'text-align:center'>
     <form method = "post" action = "Admin_Check.jsp">
          
          <input type = "text" name = "admin_id" placeholder= "ID"> <p>
          <input type = "password" name = "admin_pw" placeholder= "password"> <p>
		  
      </div>

      <div id = "login_bot_left" style = 'text-align:center'>
      <input type = "checkbox" style = "border: solid" name = "logincheck"> 로그인유지<p>
        <p><button class="w3-button w3-null w3-round-large">로그인</button></p>  
      </div>
	</form>
    </div>
    
    </nav>
    </div>
    
    
    		<jsp:include page="bottom.jsp" flush="false"/>
    </body>
    </html>
    