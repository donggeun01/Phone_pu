<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>tablepop</title>

<link rel="stylesheet" href="/lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script language="JavaScript" src="script.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>

<script type="text/javascript">
$(function(){
    //전역변수선언
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "reviewtxt",
        sSkinURI: "se2/SmartEditor2Skin.html",
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,            
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,    
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true,
        }
    });
     
    //전송버튼 클릭이벤트
    $("#savebutton").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입

        editor_object.getById["reviewtxt"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#frm").submit();
    })
})



</script>

<% String check = (String)session.getAttribute("id");%>

<%if (check != null){  %>

<!-- 새로운페이지로 후기글 작성 -->

<form id = "frm" name="frm" action ="ReviewPro.jsp" method="post"> 
	
	<table style="width:100%">
	<tr>
	<td style='width:"1px"'>제목</td>
	<td> <input type="text" name ="Review_title" placeholder="제목"/></td>
	</tr>
	<tr>
	<td>내용</td>
	<td><textarea name="Review_review" id="reviewtxt" rows="13" cols="65"></textarea></td>
    </tr>
    <tr>
    <td><button id = "savebutton">등록</button></td>	
	</tr>
	
	</table>	
	<input type="hidden" id ="name" name = "Review_name" value="<%=check %>">
</form>
<%} 

// 회원가입 없이 후기작성시 메세지 후 창닫음
else {%>
	<script>
		alert("회원가입을 해주세요.");
		window.close();
	</script> <% }%>


</body>
</html>