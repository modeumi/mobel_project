<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="EUC-KR">
  <title>�α���</title>

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
   <center><h2>�α���</h2></center>
    <hr>
    <div class = "input">
    <p>�� �� ��: <input type="text" name ="id" id="id">
    <br>
    <p>��й�ȣ : <input type="password" name ="pw" id="pw">
    <input type="button" value ="�ڹ���" onclick="showPassword()">
     <hr>
    <p><h5><input type="checkbox" id="keep" name="idlog" value ="off">
    �α��λ�������</h5></p></div>
    <p>
       <div class ="box">
       <div><a href="#">��й�ȣã��</a></div>
       /
       <div><a href="#">���̵�ã��</a></div>
       </div>
    <center><P><input type="submit" value ="�α���"></center>
    <center><P><a href ="join.jsp"><input type="button" value ="ȸ������"></a></center>
   
    </form> 
  </div>
</body>
</html>