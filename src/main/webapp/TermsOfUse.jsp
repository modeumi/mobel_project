<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이용약관</title>
<style>
    .checkbox{
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      border: 2px solid #ccc;
      outline: none;
      transition: all 0.3s ease-in-out;
    }
    .terms{
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width : 600px ; padding : 5px ;
      border:5px solid #123456;
    }
    .textbox{
    position: relative;
    overflow: auto;
    height: 88px;
    margin-top: 8px;
    padding: 12px;
    border: 1px solid #dadada;
    background: #fff;
    box-sizing: border-box;
    }
     .title img{
      display: block;
      margin: 0 auto;
      
    }
</style>
<script type="text/javascript">
function allcheck() {
    var checkbox = document.getElementById("on");
    var checkboxes = document.querySelectorAll("input[type='checkbox']");
    checkboxes.forEach(function(cb) {
      cb.checked = checkbox.checked;
    });
  }

</script>
</head>
<body>
<div class="terms">
     <form action="join.jsp" method="post">
   <div class="title"><img src="img/로고.png" width="150" height="100"><a href="./homepage.jsp"></a></div>
   <center><h2>이용약관</h2></center>
    <hr>
    <p><input type="checkbox" id ="on" onclick="allcheck()">아래 내용을 확인하고 동의합니다.</input>
    <p><input type="checkbox">[필수] 집mobel이용약관</input>
    <p class= "textbox">
    <p><input type="checkbox">[필수] 개인정보 수집이용 동의</input>
    <p class= "textbox">
    <p><input type="checkbox">[필수] 가상자산 투자유의 동의</input>
    <p class= "textbox">
    <p><input type="checkbox">[선택] 마케팅수신동의</input>
    <p class= "textbox">
    <center><p><input type="button" value="취소">
   <input type="submit" value="확인"></p></center>
    </form> 
  </div>
</body>
</html>