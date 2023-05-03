<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
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
         alert("ID�� 5~20���� ���� ��ҹ��ڿ� ���ڷθ� �Է����ּ���.");
         form.id.select();
         return;
      }
      if (!pwPattern.test(pw)) {
         alert("��й�ȣ�� ���ڷθ� �Է����ּ���.")
         form.pw.select();
         return;
      }

   }
   function checkPw() {
      var pw = document.member.pw.value;
      var pwc = document.member.pwc.value;

      if (pw === "" || pwc === "") {
         alert("��й�ȣ�� �Է����ּ���.")
         return;
      }
      if (pw !== pwc) {
         alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.")
         document.member.pwc.select();
         return;
      }
   }
    function changeEmailDomain() {
           var selectElement = document.getElementsByName("site")[0];
           var inputDomain = document.getElementById("inputDomain");
           if (selectElement.value === "�����Է�") {
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
        if (selectedValue !== "�����Է�") {
          inputDomain.value = selectedValue;
          emailInput.value = ""; // ���õ� ������ �Էµ� �̸��� �ʱ�ȭ
        } else {
          inputDomain.value = "";
        }
      }
</script>
<body>
   <div class="join">
      <form action="insert" method="post" name="member">
         <div class="title">
            <img src="img/�ΰ�.png" width="150" height="100"><a
               href="./homepage.jsp"></a>
         </div>
         <center>
            <h2>ȸ������</h2>
         </center>
         <hr>
         <div class="loginimp">
            <p>
            <h3>�� ��������</h3>
            </p>
            <div class="impo">
               <p>
                  �� �� �� : <input type="text" name="id" onchange="checkLogin()">
                  <input type="button" value="�ߺ�Ȯ��" onclick="doublecheck()">
               <p>
                  ��й�ȣ : <input type="password" name="pw" id="pw"
                     onchange="checkLogin()"> <input type="button"
                     value="�ڹ���" onclick="showPassword1()">
               <p>
                  ��й�ȣȮ�� : <input type="password" name="pwc" id="pwc"
                     onchange="checkPw()"> <input type="button" value="�ڹ���"
                     onclick="showPassword2()">
               <p>
                  �̸�: <input type="text" name="name" onchange="checkname()">
            </div>
         </div>
         <hr>
         <p>
         <h3>�� ȸ������</h3>
         </p>
         <div class="memberimp">
            <p>
               �̸��� <input type="text" name="email" id="email"
                  placeholder="�̸����� �Է����ּ���"> 
                  @<span id="inputDomain"> 
                  <input type="text" name="domain" id="domain" placeholder="�������� �Է����ּ���">
                   </span>
                  <select name="site" onchange="changeEmailDomain()">
                  <option value="�����Է�">�����Է�</option>
                  <option value="@naver.com">naver.com</option>
                  <option value="@daum.net">daum.net</option>
                  <option value="@gmail.net">gmail.net</option>
               </select> 
            </p>
            <p>
               ����ó : <select name="phone1" onselect="checkMember()">
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
                  <input type="submit" value="�����ϱ�"> <input type="button"
                     value="���" onclick="">
            </center>
         </div>
      </form>
   </div>
</body>
</html>