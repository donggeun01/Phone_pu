<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>.
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

</head>
<body>

<form method="post" action="NewFile.jsp" id="frm">
	<input type="text" name="title">
    <textarea name="smarteditor" id="smarteditor" rows="10" cols="100">에디터에 기본으로 삽입할 글(수정 모드)이 없다면 이 value 값을 지정하지 않으시면 됩니다.</textarea>
    <button id = "savebutton">저장</button>
</form>
    
    


<script type="text/javascript">
$(function(){
    //전역변수선언
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "smarteditor",
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
        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#frm").submit();
    })
})


</script>



    <!-- http://naver.github.io/smarteditor2/user_guide/2_install/setting.html 
    ìëí°ì ê¸°ë³¸ì¼ë¡ ì½ìí  ê¸(ìì  ëª¨ë)ì´ ìë¤ë©´ ì´ value ê°ì ì§ì íì§ ìì¼ìë©´ ë©ëë¤.
    ìëí°ì ê¸°ë³¸ì¼ë¡ ì½ìí  ê¸(ìì  ëª¨ë)ì´ ìë¤ë©´ ì´ value ê°ì ì§ì íì§ ìì¼ìë©´ ë©ëë¤.
    -->

</body>
</html>