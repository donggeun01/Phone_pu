<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<title>content3</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href="style.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link href="https://fonts.googleapis.com/css?family=Gugi|Jua&display=swap" rel="stylesheet">
</head>

<body>

	<div class = " wrapper">
	<%String href = "Product.jsp"; %>
		<nav>
		<article>
	    	<div class = "navMargin">
	        <div class="container-fluid text-center bg-grey">
	          <h2>POPULAR</h2>
	          <h4>인기상품</h4>
	          <div class="row text-center">
	            <div class="col-sm-4">
	              <div class="thumbnail">
	                <a href="<%=href %>"><img src="image/POPULAR/popular1.jpg" alt="popular1"></a>
	                <p><strong>가로슈프림케이스</strong></p>
	                <p>5,900원</p>
	              </div>
	            </div>
	            <div class="col-sm-4">
	            <div class="thumbnail">
	            <a href="<%=href %>"><img src="image/POPULAR/popular2.jpg" alt="popular2"></a>
	              <p><strong>꽃병케이스</strong></p>
	              <p>5,900원</p>
	            </div>
	            </div>
	            <div class="col-sm-4">
	              <div class="thumbnail">
	                <a href="<%=href %>"><img src="image/POPULAR/popular3.jpg" alt="popular3"></a>
	                <p><strong>꽈리열매케이스</strong></p>
	                <p>5,900원</p>
	              </div>
	            </div>
	
	              <div class="col-sm-4">
	                <div class="thumbnail">
	                <a href="<%=href %>"><img src="image/POPULAR/popular4.jpg" alt="popular4"></a>
	                  <p><strong>노래듣는오리케이스</strong></p>
	                  <p>5,900원</p>
	                </div>
	              </div>
	              <div class="col-sm-4">
	                  <div class="thumbnail">
	                    <a href="<%=href %>"><img src="image/POPULAR/popular5.jpg" alt="popular5"></a>
	                    <p><strong>호랑이기운케이스</strong></p>
	                    <p>5,900원</p>
	                  </div>
	                </div>
	
	                  <div class="col-sm-4">
	                    <div class="thumbnail">
	                    <a href="<%=href %>"><img src="image/POPULAR/popular6.jpg" alt="popular6"></a>
	                      <p><strong>베르앙케이스</strong></p>
	                      <p>5,900원</p>
	                    </div>
	                  </div>
	
	                    <div class="col-sm-4">
	                      <div class="thumbnail">
	                        <a href="<%=href %>"><img src="image/POPULAR/popular7.jpg" alt="popular7"></a>
	                        <p><strong>아몬드나무케이스</strong></p>
	                        <p>5,900원</p>
	                      </div>
	                    </div>
	
	                      <div class="col-sm-4">
	                        <div class="thumbnail">
	                        <a href="<%=href %>"><img src="image/POPULAR/popular8.jpg" alt="popular8"></a>
	                          <p><strong>키스케이스</strong></p>
	                          <p>5,900원</p>
	                        </div>
	                      </div>
	
	                        <div class="col-sm-4">
	                          <div class="thumbnail">
	                          <a href="<%=href %>"><img src="image/POPULAR/popular9.jpg" alt="popular9"></a>
	                            <p><strong>허그미케이스</strong></p>
	                            <p>5,900원</p>
	                          </div>
	                        </div>
  		 	</article>
		</nav>	
	</div>
</body>
</html>