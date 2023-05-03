<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<style>
.join {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   width: 600px;
   padding: 5px;
   border: 5px solid #123456;
}

.impo, .memberimp {
   transform: translate(10%, -1%);
}

.title img {
   display: block;
   margin: 0 auto;
}
</style>
<script type="text/javascript">
   function showPassword1() {
      var passwordInput = document.getElementById("pw");
      if (passwordInput.type === "password") {
         passwordInput.type = "text";
      } else {
         passwordInput.type = "password";
      }
   }
   function showPassword2() {
      var passcheckInput = document.getElementById("pwc");
      if (passcheckInput.type === "password") {
         passcheckInput.type = "text";
      } else {
         passcheckInput.type = "password";
      }
   }
   function checkMember() {
      var phone1 = document.getElementsByName("phone1")[0].value;
      var phone2 = document.getElementsByName("phone2")[0].value;
      var phone3 = document.getElementsByName("phone3")[0].value;
      var phone = phone1 + "-" + phone2 + "-" + phone3;
      document.getElementsByName("phone")[0].value = phone;
   }
   function checkLogin() {
      var form = document.member;
      var id = form.id.value;
      var pw = form.pw.value;
      var idPattern = /^[a-zA-Z0-9]{5,20}$/; //ID pattern (5-20 letters or numbers)
      var pwPattern = /^[0-9]*$/;

      if (!idPattern.test(id)) {
         alert("ID는 5~20자의 영문 대소문자와 숫자로만 입력해주세요.");
         form.id.select();
         return;
      }
      if (!pwPattern.test(pw)) {
         alert("비밀번호는 숫자로만 입력해주세요.")
         form.pw.select();
         return;
      }

   }
   function checkPw() {
      var pw = document.member.pw.value;
      var pwc = document.member.pwc.value;

      if (pw === "" || pwc === "") {
         alert("비밀번호를 입력해주세요.")
         return;
      }
      if (pw !== pwc) {
         alert("비밀번호가 일치하지 않습니다.")
         document.member.pwc.select();
         return;
      }
   }
    function changeEmailDomain() {
           var selectElement = document.getElementsByName("site")[0];
           var inputDomain = document.getElementById("inputDomain");
           if (selectElement.value === "직접입력") {
               inputDomain.style.display = "inline-block";
           } else {
              // inputDomain.style.display = "none";
           }
       }
    function changeEmailDomain() {
        const select = document.querySelector('select[name="site"]');
        const inputDomain = document.querySelector('#inputDomain input[name="domain"]');
        const emailInput = document.querySelector('#email');

        const selectedValue = select.value;
        if (selectedValue !== "직접입력") {
          inputDomain.value = selectedValue;
          emailInput.value = ""; // 선택된 값으로 입력된 이메일 초기화
        } else {
          inputDomain.value = "";
        }
      }
</script>
<body>
   <div class="join">
      <form action="insert" method="post" name="member">
         <div class="title">
            <img src="img/로고.png" width="150" height="100"><a
               href="./homepage.jsp"></a>
         </div>
         <center>
            <h2>회원가입</h2>
         </center>
         <hr>
         <div class="loginimp">
            <p>
            <h3>■ 개인정보</h3>
            </p>
            <div class="impo">
               <p>
                  아 이 디 : <input type="text" name="id" onchange="checkLogin()">
                  <input type="button" value="중복확인" onclick="doublecheck()">
               <p>
                  비밀번호 : <input type="password" name="pw" id="pw"
                     onchange="checkLogin()"> <input type="button"
                     value="자물쇠" onclick="showPassword1()">
               <p>
                  비밀번호확인 : <input type="password" name="pwc" id="pwc"
                     onchange="checkPw()"> <input type="button" value="자물쇠"
                     onclick="showPassword2()">
               <p>
                  이름: <input type="text" name="name" onchange="checkname()">
            </div>
         </div>
         <hr>
         <p>
         <h3>■ 회원정보</h3>
         </p>
         <div class="memberimp">
            <p>
               이메일 <input type="text" name="email" id="email"
                  placeholder="이메일을 입력해주세요"> 
                  @<span id="inputDomain"> 
                  <input type="text" name="domain" id="domain" placeholder="도메인을 입력해주세요">
                   </span>
                  <select name="site" onchange="changeEmailDomain()">
                  <option value="직접입력">직접입력</option>
                  <option value="@naver.com">naver.com</option>
                  <option value="@daum.net">daum.net</option>
                  <option value="@gmail.net">gmail.net</option>
               </select> 
            </p>
            <p>
               연락처 : <select name="phone1" onselect="checkMember()">
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="019">019</option>
                  <option value="017">017</option>
                  <option value="016">016</option>
               </select> -<input type="text" maxlength="4" size="4" name="phone2">-
               <input type="text" maxlength="4" size="4" name="phone3"
                  onchange="checkMember()">
            <center>
               <p>
                  <input type="submit" value="가입하기"> <input type="button"
                     value="취소" onclick="">
            </center>
         </div>
      </form>
   </div>
</body>
</html>