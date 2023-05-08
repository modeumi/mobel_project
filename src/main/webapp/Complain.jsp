<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>고객센터</title>
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
      var buttons = document.getElementsByTagName("button");  // 모든 버튼 가져오기
      for (var i = 0; i < buttons.length; i++) {
        buttons[i].style.backgroundColor = "#ACFFEF";// 모든 버튼 색상을 녹색으로 설정
        buttons[i].style.color = "black";
      }
      event.target.style.backgroundColor = "Green";// 클릭한 버튼 색상 변경
      event.target.style.color = "white";
      
   }
   function Q(){
      // 새로운 ul 요소 생성
      const faqList = document.createElement("ul");
      faqList.classList.add("faq-list"); // faq-list 클래스 추가

      // 각각의 질문과 답변을 담고 있는 객체
      const faqData = [
        {
          question: "배송하는데 얼마나 걸리나요?",
          answer: "배송 시간은 지역에 따라 다르며 보통 2~3일 정도 소요됩니다.",
        },
        {
          question: "주문취소는 어떻게하나요?",
          answer: "주문 취소는 마이페이지에서 가능합니다. 또는 고객센터로 문의해주시면 도움드리겠습니다.",
        },
        {
          question: "제품의 자세한 정보를 알고 싶어요",
          answer: "제품의 자세한 정보는 제품 상세페이지에서 확인하실 수 있습니다.",
        },
        {
          question: "제품이 불량일 때는?",
          answer: "불량 제품인 경우 고객센터로 문의해주시면 신속하게 처리해드리겠습니다.",
        },
        {
          question: "비회원 및 전화주문이 가능한가요?",
          answer: "비회원 주문과 전화주문 모두 가능합니다. 자세한 내용은 고객센터로 문의해주세요.",
        },
      ];
    
      // faqData 객체에 있는 데이터를 기반으로 동적으로 li 요소 생성 및 추가
      faqData.forEach((data) => {
        const faqItem = document.createElement("li");
        faqItem.classList.add("q1");

        const question = document.createElement("button");
        question.textContent = data.question;
        faqItem.appendChild(question);

        const answer = document.createElement("p");
        answer.textContent = data.answer;
        answer.style.display = "none"; // 초기에는 답변을 숨김
        faqItem.appendChild(answer);

        const hr = document.createElement("hr");
        faqItem.appendChild(hr);

        // 질문 버튼에 이벤트 리스너 추가
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

        faqList.appendChild(faqItem); // li 요소를 ul 요소에 추가
      });

      // 새로 생성한 ul 요소를 HTML 문서에 추가
      document.body.appendChild(faqList);
    }
  function w(){
      
   }
</script>
</head>
<body>

   <div class="complainMune">
      <!-- 무엇을 도와드릴까요 창 -->
      <h3>
         ■ 무엇을 도와드릴까요?
         <h3>
            <hr>
            <form action="" method="post">
               <ol>
                  <br>
                  <li>Q.<a href="#"> 주문 / 결제 </a></li>
                  <br>
                  <li>Q.<a href="#"> 배송관련</a></li>
                  <br>
                  <li>Q.<a href="#"> 취소 / 환불</a></li>
                  <br>
                  <li>Q.<a href="#"> 반품 / 교환</a></li>
                  <br>
                  <li>Q.<a href="#"> 로그인 / 회원정보</a></li>
                  <br>
                  <li>Q.<a href="#"> 서비스 / 기타</a></li>
               </ol>
            </form>
   </div>
   <div class="complainButton">
      <h1>
         고객센터 <span class="number">09:00 ~ 18:00</span>
      </h1>
      <br>
      <h3>평일 : 전체 문의 상담 가능</h3>
      <h3>주말/공휴일 : 집 mobel은 서비스 및 기타에 관련 문의에 한해 전화 상담 가능</h3>
      <br>
      <h1>
         ☏<span class="number">1600-0000</span>
      </h1>
   </div>
   <div class="but" onclick="Q()">
      <button class="b1" onclick="off(event)">전체</button>
      <button class="b1" onclick="off(event)">주문/결제</button>
      <button class="b1" onclick="off(event)">배송</button>
      <button class="b1" onclick="off(event)">취소/환불</button>
      <button class="b1" onclick="off(event)">반품/교환</button>
      <button class="b1" onclick="off(event)">
         로그인/<br>회원정보
      </button>
      <button class="b1" onclick="off(event)">서비스/기타</button>
   </div>
</body>
</html>