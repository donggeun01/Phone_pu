<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>로그인</title>
    <style>
      .wrapper{width : 1200px; margin : 0 auto; font-family: 'Jua', sans-serif;}
      #menu{                            /*상단 메뉴 섹션*/
            border-bottom: solid 1px black;
            height:20px;
            list-style-type:none;
            list-style-position:inside;

           }
      #menu li{
               color : white;
               display:inline;
               font-size:15px;
               margin-top : 50px;
              }
      #menu li a {
                  float : left;
                  margin-right : 20px;
                  text-decoration: none;
                 }
      #menu a:link{color : black ; text-decoration: none;}
      #menu a:visited{color : black ; text-decoration: none;}
      #menu a:hover{color : black ; text-decoration: underline;}
      #menu a:active{color : black; text-decoration: underline;}
      #menuRight{
              list-style-type:none;
            list-style-position:inside;
            margin-top : -100px;
           }
      #menuRight li{
               color : white;
               display:inline;
               font-size:15px;
               margin-top : 50px;
              }
      #menuRight li a {
                  float : right;
                  margin-right : 20px;
                  text-decoration: none;
                 }
      #menuRight a:link{color : black ; text-decoration: none;}
      #menuRight a:visited{color : black ; text-decoration: none;}
      #menuRight a:hover{color : black ; text-decoration: underline;}
      #menuRight a:active{color : black; text-decoration: underline;}
      .centerMenu{border-bottom: solid 1px black;
                  height:300px; margin-top: 100px;}
      #title{margin-left: 250px;}
      #bottomMenu{margin : 0 auto;}
      #downMenu{
              border-bottom: solid 1px black;
              height:20px;
              list-style-type:none;
              list-style-position:inside;
              padding-left : 200px;
              padding-bottom : 15px;
            }
    #downMenu li{
              color : white;
              display:inline;
              font-size:15px;

            }
    #downMenu li a {
                float : center;
                margin-right : 70px;
                text-decoration: none;
              }
    #downMenu a:link{color : black ; text-decoration: none;}
    #downMenu a:visited{color : black ; text-decoration: none;}
    #downNenu a:hover{color : black ; text-decoration: underline;}
    #downMenu a:active{color : black; text-decoration: underline;}
	#bot {margin-top: 130px; text-align: center;}
    .container {
  padding: 80px 120px;
  }
  .person {
  border: 10px solid transparent;
  margin-bottom: 25px;
  width: 80%;
  height: 80%;
  opacity: 0.7;
  }
.person:hover {
  border-color: #f1f1f1;
div.carousel {width : 80px; height : 100px; margin-up : 300px;}
}
.navMargin{margin-top : 100px;}
nav img:hover{opacity:0.5;}
    #login{position:relative; width:500px; height:500px;
       left: 30%; margin-top:12%; border: solid 1px black; border-radius: 18px}

    #login_bottom{position: absolute; width:30% height:30%; right:36%; top: 360px;}



    #login_left{position: absolute;width:30% height:30%; left:170px; top: 150px;}

    #login_bot_left{position: absolute;width:30% height:30%; left:160px;top:210px;}

    #title_login{padding:  20px;text-align: center; font-size: 20px;}

    .jb-text {  color:#8c8c8c; }
    .w3-button{background:#F6CECE;}
    .y { text-align: center; }
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
    
    <jsp:include page="top.jsp" flush="false"/>
    <nav>

      <div id = "login">

        <div id = title_login>
          <b>MEMBER LOGIN</b>
      </div>
      
      <div id = "login_left" style = 'text-align:center'>
          <form method = "post" action = "LoginCheck.jsp">
          
          <input type = "text" name = "id" placeholder= "ID"> <p>
          <input type = "password" name = "pw" placeholder= "password"> <p>
		  
      </div>

      <div id = "login_bot_left" style = 'text-align:center'>
      <input type = "checkbox" name = "idcheck">아이디 저장
      <input type = "checkbox" style = "border: solid" name = "logincheck">로그인 상태유지<p>
        <b2 class="jb-text" style ="text-align:center";>아이디 / 비밀번호 찾기</b2><p>
        <p><button class="`-button w3-null w3-round-large">로그인</button></p>
      </div>
			</form>
      <div id = "login_bottom" style = 'text-align:center'>
        <p><b1 class=jb-text>아직 회원이 아니신가요?</b1></p>
        <p><button class="w3-button w3-null w3-round-large" onclick = 'JoinForm.jsp'>회원가입</button></p>

      </div>
    </div>
    
    </nav>
    </div>
    
    
    		<jsp:include page="bottom.jsp" flush="false"/>
    </body>
    </html>
    