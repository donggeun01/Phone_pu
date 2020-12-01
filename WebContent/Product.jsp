<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>휴대폰 케이스 구매페이지</title>
   <style>
      
      .right-box {
      width:45%;
      float:right;
      }
      .left-box {
      width:45%;
      float:left;
      }
      .text-box {
      width:53%
      }
      .p {
      font-size: 17px;
      }
      #relative1 {
      position:relative;
      left:300px;
      top:100px;
      }
   </style>
   <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel = "stylesheet" href="style.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <link href="https://fonts.googleapis.com/css?family=Gugi|Jua&display=swap" rel="stylesheet">
  </head>
  
  <body>
  
    <div class = " wrapper">
   <div>
    <jsp:include page="top.jsp" flush="false"/>
    </div>
   <nav>
   
   
   <div class = 'left-box' style = "margin-top:5%">
<div class="w3-content" style="max-width:400px">
  <img class="mySlides" src="image/POPULAR/popular1.jpg" style="width:90%;display:none">
  <img class="mySlides" src="image/POPULAR/popular2.jpg" style="width:90%">
  <img class="mySlides" src="image/POPULAR/popular3.jpg" style="width:90%;display:none">

  <div class="w3-row-padding w3-section">
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="image/POPULAR/popular1.jpg" style="width:60%;cursor:pointer" onclick="currentDiv(1)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="image/POPULAR/popular2.jpg" style="width:60%;cursor:pointer" onclick="currentDiv(2)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="image/POPULAR/popular3.jpg" style="width:60%;cursor:pointer" onclick="currentDiv(3)">
    </div>
  </div>
</div>

<script>
function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
}
</script>

      </div>
      <div class = 'right-box p' style = "margin-top:3%">
         <style>
         .textbox {
         width:70%;
         }
         ul{
            list-style-type:none;
            padding: 0;   
            }
                  
         </style>
         <h1>핸드폰 케이스 이름</h1>
         <hr style = "border:solid 1px #D8D8D8">
         <ul style="line-height:200%">   
            <li>정가
            <del><span>19,900</span>원</del>   
            </li>
            <li>판매가</li>
            <li>구매제한</li> 
            <li>배송비</li> 
         </ul>   
         
         <hr style = "border:solid 1px #D8D8D8">
         <ul>
         <li>기종선택
          <select style = "height:28px; margin-left:23px;" name = 'type' class = 'textbox'>
            <option value='' selected> == 기종선택 == </option>
            <option value='iPhone'>[무광하드] 아이폰 7/8</option>
            </select></li> <p>
         <li>색상    
          <select style = "height:28px; margin-left:50px;" name = 'color' class = 'textbox'>
            <option value='' selected> == 색상선택 == </option>
            <option value='red'>red</option>
            </select> </li> <p> 
            </ul>
         <hr style = "border:solid 1px black">
         <button class="button button3 w3-hover-dark-grey w3-light-grey w3-wide" style="width:30%">장바구니</button>
         <button class="button button3 w3-hover-dark-grey w3-light-grey w3-wide" style="width:30%">구매하기</button>
         
      </div>
      
      <div id="relative1" class = "text-box p" style = "clear:both;">
      <div>
      <style>
      h1.a:after {
      content: "";
        width: 110%;
        font-size:20px;
        border-bottom: 1px solid #bcbcbc;
        display: block;
      }
      </style>
      <h1 class = "a">Check it</h1>
      주문 전 필독 사항입니다. <p>
      </div>
      
      <img title="check1.jpg" src="image/check1.jpg" style="width:40%;">&nbsp;&nbsp;&nbsp;
      <img src="image/check2.jpg" style="width:40%;">
      <ul style="list-style-type: decimal; ">
         <li>모니터,핸드폰  등 화면상의 컬러와 실제 인쇄후 컬러는 약간의 차이가 있을 수 있습니다.</li>
         <li>동일한 디자인, 컬러를 주문 하시더라도 케이스재질, 기종등에 따라 약간의 색상 차이가 있을 수 있습니다.</li>
         <li>100%핸드메이드로 진행되는 제조공정상 약간의 정중앙이 안맞는 오차범위가 있을 수 있습니다.</li>
         <li>작업 공정상 인쇄물이 케이스에 압축되면서 미묘한 늘어짐 현상이 보일 수 있습니다.</li>
         <li>제조공정 특성상 제품에 미세한 먼지자국과 스크래치가 생길수 있습니다.</li>
         <li>각 기종마다 제작 방식이 다르기에,제작시 케이스 안쪽 각 모서리마다 찍힘현상이 있을 수 있습니다.</li>
         
      </ul>
      </div>
   
   </nav>
   </div>
   <div style="clear:both; margin-top:200px">
   <jsp:include page = "table.jsp" flush = "false"/>
    </div>
    
    <div style="clear:both; margin-top:250px">
       <jsp:include page="bottom.jsp" flush="false"/>
   </div>
   
</body>
</html>