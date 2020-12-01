<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<title>content4</title>
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
	          <h2>JELLY</h2>
	          <h4>젤리케이스</h4>
	          <div class="row text-center">
	            <div class="col-sm-4">
	              <div class="thumbnail">
	                <a href="<%=href %>"><img src="image/JELLY/jelly1.jpg" alt="jelly1"></a>
	                <p><strong>굉장해엄청나</strong></p>
	                <p>4,900원</p>
	              </div>
	            </div>
	            <div class="col-sm-4">
	            <div class="thumbnail">
	            <a href="<%=href %>"><img src="image/JELLY/jelly2.jpg" alt="jelly2"></a>
	              <p><strong>너만먹냐</strong></p>
	              <p>4,900원</p>
	            </div>
	            </div>
	            <div class="col-sm-4">
	              <div class="thumbnail">
	              <a href="#"><img src="image/JELLY/jelly3.jpg" alt="jelly3"></a>
	                <p><strong>러브미모어</strong></p>
	                <p>4,900원</p>
	              </div>
	            </div>
	            <div class="col-sm-4">
	              <div class="thumbnail">
	                <a href="<%=href %>"><img src="image/JELLY/jelly4.jpg" alt="jelly4"></a>
	                <p><strong>식탁남녀젤리</strong></p>
	                <p>4,900원</p>
	              </div>
	            </div>
	            <div class="col-sm-4">
	              <div class="thumbnail">
	            <a href="<%=href %>"><img src="image/JELLY/jelly5.jpg" alt="jelly5"></a>
	                <p><strong>집에가고싶어</strong></p>
	                <p>4,900원</p>
	              </div>
	            </div>
	            <div class="col-sm-4">
	              <div class="thumbnail">
	              <a href="<%=href %>"><img src="image/JELLY/jelly6.jpg" alt="jelly6"></a>
	                <p><strong>하나둘</strong></p>
	                <p>4,900원</p>
	              </div>
	            </div>
	
	        </div>
 		 </article>
 	 </nav>
 	 </div>
</body>
</html>