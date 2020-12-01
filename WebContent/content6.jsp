<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<title>content6</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href="style.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link href="https://fonts.googleapis.com/css?family=Gugi|Jua&display=swap" rel="stylesheet">
</head>
<body>
 	<%String href = "Product.jsp"; %>
 	
 	 <div class = " wrapper">
 	 
 	<nav>
 	<article>
    <div class = "navMargin">
        <div class="container-fluid text-center bg-grey">
          <h2>AIRPOD</h2>
          <h4>에어팟케이스</h4>
          <div class="row text-center">
            <div class="col-sm-4">
              <div class="thumbnail">
                <a href="<%=href %>"><img src="image/AIRPOD/airpod1.jpg" alt="airpod"></a>
                <p><strong>나는악어</strong></p>
                <p>7,900원</p>
              </div>
            </div>
            <div class="col-sm-4">
            <div class="thumbnail">
              <a href="<%=href %>"><img src="image/AIRPOD/airpod2.jpg" alt="airpod"></a>
              <p><strong>달려냥냥_남자</strong></p>
              <p>7,900원</p>
            </div>
            </div>
            <div class="col-sm-4">
              <div class="thumbnail">
                <a href="<%=href %>"><img src="image/AIRPOD/airpod3.jpg" alt="airpod"></a>
                <p><strong>달려냥냥_여자</strong></p>
                <p>7,900원</p>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="thumbnail">
                <a href="<%=href %>"><img src="image/AIRPOD/airpod4.jpg" alt="airpod"></a>
                <p><strong>얌얌</strong></p>
                <p>7,900원</p>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="thumbnail">
                <a href="#"><img src="image/AIRPOD/airpod5.jpg" alt="airpod"></a>
                <p><strong>코크체리</strong></p>
                <p>7,900원</p>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="thumbnail">
                <a href="<%=href %>"><img src="image/AIRPOD/airpod6.jpg" alt="airpod"></a>
                <p><strong>콩알</strong></p>
                <p>7,900원</p>
              </div>
            </div>


        </div>
 	 </article>
    </nav>
    </div>
</body>
</html>