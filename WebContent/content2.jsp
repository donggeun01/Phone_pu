<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.*,util.*" %>

<jsp:useBean id="proMgr" class="util.Admin_ProductMgr" />
<!DOCTYPE html>
<html>
<head>

	<title>content2</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href="style.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link href="https://fonts.googleapis.com/css?family=Gugi|Jua&display=swap" rel="stylesheet">
		<script language="JavaScript" src="script.js"></script>
</head>
<body>

	<div class = " wrapper">
	<%Vector vResult= proMgr.getProductList();%>
	<%String href = "Product.jsp"; %>
	<nav>
		<article>
	    <div class = "navMargin">
		        <div class="container-fluid text-center bg-grey">
		          <h2>New</h2>
		          <h4>신상품</h4>
		          <div class="row text-center">
		            <div class="col-sm-4">
		              <div class="thumbnail">
		                <a href="<%=href %>"><img src="image/NEW/new1.jpg" alt="new1"></a>
		                <p><strong>나는악어케이스</strong></p>
		                <p>5,900원</p>
		              </div>
		            </div>
		            <div class="col-sm-4">
		            <div class="thumbnail">
		              <a href="<%=href %>"><img src="image/NEW/new2.jpg" alt="new2"></a>
		              <p><strong>보미요미케이스</strong></p>
		              <p>5,900원</p>
		            </div>
		            </div>
		            <div class="col-sm-4">
		              <div class="thumbnail">
		               <a href="<%=href %>"><img src="image/NEW/new3.jpg" alt="new3"></a>
		                <p><strong>봄앤꽃케이스</strong></p>
		                <p>5,900원</p>
		              </div>
		            </div>
		            <div class="col-sm-4">
		              <div class="thumbnail">
		                <a href="<%=href %>"><img src="image/NEW/new4.jpg" alt="new4"></a>
		                <p><strong>야호케이스</strong></p>
		                <p>5,900원</p>
		              </div>
		            </div>
		            <div class="col-sm-4">
		              <div class="thumbnail">
		                <a href="<%=href %>"><img src="image/NEW/new5.jpg" alt="new5"></a>
		                <p><strong>커플달달케이스</strong></p>
		                <p>8,900원</p>
		              </div>
		            </div>
		            <div class="col-sm-4">
		              <div class="thumbnail">
		                <a href="<%=href %>"><img src="image/NEW/new6.jpg" alt="new6"></a>
		                <p><strong>코크케이스</strong></p>
		                <p>5,900원</p>
		              </div>
		            </div>
		            <div class="col-sm-4">
		              <div class="thumbnail">
		                <a href="<%=href %>"><img src="image/NEW/new7.jpg" alt="new7"></a>
		                <p><strong>퓨전케이스</strong></p>
		                <p>5,900원</p>
		              </div>
		            </div>
		            <div class="col-sm-4">
		              <div class="thumbnail">
		                <a href="<%=href %>"><img src="image/NEW/new8.jpg" alt="new8"></a>
		                <p><strong>피자케이스</strong></p>
		                <p>5,900원</p>
		              </div>
		            </div>
		            <div class="col-sm-4">
		              <div class="thumbnail">
		                <a href="<%=href %>"><img src="image/NEW/new9.jpg" alt="new9"></a>
		                <p><strong>핫도그케이스</strong></p>
		                <p>5,900원</p>
		              </div>
		              
		              <div class="col-sm-4">
		              <div class="thumbnail">              
					<% 
						for(int i=0; i<vResult.size(); i++){
						Admin_ProductBean product = (Admin_ProductBean)vResult.get(i);
						%>
						
							<a href="<%=href %>"><img src="data/<%=product.getImage()%>" alt= "new10"></a>
							 <strong><%=product.getName()%></strong><br>
									 <%=product.getPrice()%>원 <br>
					<%}%>
		                 
		             
		            </div>
		        </div>
		  </article>
		</nav>
	</div>
</body>
</html>