<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
<style>
.complainMune {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-100%, -100%);
   width: 400px;
   padding: 5px;
}

.complainButton {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(10%, -100%);
   width: 400px;
   padding: 5px;
   background: #dcdcdc;
}

ol {
   list-style-type: none;
}

.number {
   color: blue;
}

.but {
   display: flex;
   justify-content: space-between;
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-48%, 100%);
   width: 850px;
   padding: 10px;
}

.b1 {
   border: none;
   border-radius: 20px;
   width: 100px;
   height: 50px;
   background-color: #ACFFEF;
}

ul {
   position: absolute;
   top: 70%;
   left: 50%;
   transform: translateX(-50%);
   width: 850px;
   background-color: white;
   padding: 20px;
   border-radius: 10px;
   box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.3);
   list-style-type: none;
}
</style>
<script type="text/javascript">
   function off(event){
      var buttons = document.getElementsByTagName("button");  // ��� ��ư ��������
      for (var i = 0; i < buttons.length; i++) {
        buttons[i].style.backgroundColor = "#ACFFEF";// ��� ��ư ������ ������� ����
        buttons[i].style.color = "black";
      }
      event.target.style.backgroundColor = "Green";// Ŭ���� ��ư ���� ����
      event.target.style.color = "white";
      
   }
   function Q(){
      // ���ο� ul ��� ����
      const faqList = document.createElement("ul");
      faqList.classList.add("faq-list"); // faq-list Ŭ���� �߰�

      // ������ ������ �亯�� ��� �ִ� ��ü
      const faqData = [
        {
          question: "����ϴµ� �󸶳� �ɸ�����?",
          answer: "��� �ð��� ������ ���� �ٸ��� ���� 2~3�� ���� �ҿ�˴ϴ�.",
        },
        {
          question: "�ֹ���Ҵ� ����ϳ���?",
          answer: "�ֹ� ��Ҵ� �������������� �����մϴ�. �Ǵ� �����ͷ� �������ֽø� ����帮�ڽ��ϴ�.",
        },
        {
          question: "��ǰ�� �ڼ��� ������ �˰� �;��",
          answer: "��ǰ�� �ڼ��� ������ ��ǰ ������������ Ȯ���Ͻ� �� �ֽ��ϴ�.",
        },
        {
          question: "��ǰ�� �ҷ��� ����?",
          answer: "�ҷ� ��ǰ�� ��� �����ͷ� �������ֽø� �ż��ϰ� ó���ص帮�ڽ��ϴ�.",
        },
        {
          question: "��ȸ�� �� ��ȭ�ֹ��� �����Ѱ���?",
          answer: "��ȸ�� �ֹ��� ��ȭ�ֹ� ��� �����մϴ�. �ڼ��� ������ �����ͷ� �������ּ���.",
        },
      ];
    
      // faqData ��ü�� �ִ� �����͸� ������� �������� li ��� ���� �� �߰�
      faqData.forEach((data) => {
        const faqItem = document.createElement("li");
        faqItem.classList.add("q1");

        const question = document.createElement("button");
        question.textContent = data.question;
        faqItem.appendChild(question);

        const answer = document.createElement("p");
        answer.textContent = data.answer;
        answer.style.display = "none"; // �ʱ⿡�� �亯�� ����
        faqItem.appendChild(answer);

        const hr = document.createElement("hr");
        faqItem.appendChild(hr);

        // ���� ��ư�� �̺�Ʈ ������ �߰�
        question.addEventListener("click", () => {
          if (answer.style.display === "none") {
            answer.style.display = "block";
          } else {
            answer.style.display = "none";
          }
          const faqList = question.closest(".faq-list");
          const otherQuestions = faqList.querySelectorAll("button");
          otherQuestions.forEach((otherQuestion) => {
            if (otherQuestion !== question) {
              otherQuestion.nextElementSibling.style.display = "none";
            }
          });
        });

        faqList.appendChild(faqItem); // li ��Ҹ� ul ��ҿ� �߰�
      });

      // ���� ������ ul ��Ҹ� HTML ������ �߰�
      document.body.appendChild(faqList);
    }
  function w(){
      
   }
</script>
</head>
<body>

   <div class="complainMune">
      <!-- ������ ���͵帱��� â -->
      <h3>
         �� ������ ���͵帱���?
         <h3>
            <hr>
            <form action="" method="post">
               <ol>
                  <br>
                  <li>Q.<a href="#"> �ֹ� / ���� </a></li>
                  <br>
                  <li>Q.<a href="#"> ��۰���</a></li>
                  <br>
                  <li>Q.<a href="#"> ��� / ȯ��</a></li>
                  <br>
                  <li>Q.<a href="#"> ��ǰ / ��ȯ</a></li>
                  <br>
                  <li>Q.<a href="#"> �α��� / ȸ������</a></li>
                  <br>
                  <li>Q.<a href="#"> ���� / ��Ÿ</a></li>
               </ol>
            </form>
   </div>
   <div class="complainButton">
      <h1>
         ������ <span class="number">09:00 ~ 18:00</span>
      </h1>
      <br>
      <h3>���� : ��ü ���� ��� ����</h3>
      <h3>�ָ�/������ : �� mobel�� ���� �� ��Ÿ�� ���� ���ǿ� ���� ��ȭ ��� ����</h3>
      <br>
      <h1>
         ��<span class="number">1600-0000</span>
      </h1>
   </div>
   <div class="but" onclick="Q()">
      <button class="b1" onclick="off(event)">��ü</button>
      <button class="b1" onclick="off(event)">�ֹ�/����</button>
      <button class="b1" onclick="off(event)">���</button>
      <button class="b1" onclick="off(event)">���/ȯ��</button>
      <button class="b1" onclick="off(event)">��ǰ/��ȯ</button>
      <button class="b1" onclick="off(event)">
         �α���/<br>ȸ������
      </button>
      <button class="b1" onclick="off(event)">����/��Ÿ</button>
   </div>
</body>
</html>