<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="EUC-KR">
  <title>로그인</title>

  <style>
    .login {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width : 600px ; padding : 5px ;
      border:5px solid #123456;
    }
    .input{
      top: 50%;
      left: 50%;
      transform: translate(25%, 5%);
      width : 380px ; padding : 5px ;
      border:2px solid Gray;
    }
    .box{
    display: flex;
    flex-direction: row-reverse;
    
    }
    .title img{
      display: block;
      margin: 0 auto;
      
    }
    
  </style>
  <script type="text/javascript">
  function showPassword(){
      var passwordInput = document.getElementById("pw");
       if (passwordInput.type === "password") {
         passwordInput.type = "text";
       } else {
         passwordInput.type = "password";
       }
     }
  

  </script>
</head>
  <div class="login">
    <form action="loginservlet" method="post">
   <div class="title"><img src="image/ci.png" width="150" height="100"><a href="./homepage.jsp"></a></div>
   <center><h2>로그인</h2></center>
    <hr>
    <div class = "input">
    <p>아 이 디: <input type="text" name ="id" id="id">
    <br>
    <p>비밀번호 : <input type="password" name ="pw" id="pw">
    <input type="button" value ="자물쇠" onclick="showPassword()">
     <hr>
    <p><h5><input type="checkbox" id="keep" name="idlog" value ="off">
    로그인상태유지</h5></p></div>
    <p>
       <div class ="box">
       <div><a href="#">비밀번호찾기</a></div>
       /
       <div><a href="#">아이디찾기</a></div>
       </div>
    <center><P><input type="submit" value ="로그인"></center>
    <center><P><a href ="join.jsp"><input type="button" value ="회원가입"></a></center>
   
    </form> 
  </div>
</body>
</html>