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
        <li><a href="LoginForm.jsp">�α���</a></li>           
        <li><a href="JoinForm.jsp">ȸ������</a></li>
        <li><a href="#">��ٱ���</a></li>
        <li><a href="#">�ֹ����</a></li>
        <li><a href="#">����������</a></li>
        
<% 
	response.sendRedirect("LoginForm.jsp");
	}else{
%>		
        <li style = color:black;><%= check %>�� �ݰ����ϴ�</li>           
        <li><input type="button" value="�α׾ƿ�" style = color:black; onclick="location.href='LogoutProc.jsp'" ></li>
        <li><a href="#">��ٱ���</a></li>
        <li><a href="#">�ֹ����</a></li>
        <li><a href="#">����������</a></li>
<%         response.sendRedirect("layout.jsp");
	}
%>
          </ul>
          <ul id = "menuRight">
          <li><a href="#">Q&A</a></li>
          <li><a href="#">ȸ���ı�</a></li>
          <li><a href="#">NOTE</a></li>
      </ul>
      </div>

      <div class = "centerMenu">
            <div id="title"><a href="layout.jsp"><img src="image/title.jpg" alt="title"></a></div>
      </div>

      <div class = "bottomMenu">
        <ul id="downMenu">
            <li><a href="#">�ϵ����̽�</a></li>
            <li><a href="#">�������̽�</a></li>
            <li><a href="#">�׸���</a></li>
            <li><a href="#">�����̷����̽�</a></li>
            <li><a href="#">���������̽�</a></li>
            <li><a href="#">�⺻ ���̽�</a></li>
            </ul>

      </div>
    </header>
</body>
</html>