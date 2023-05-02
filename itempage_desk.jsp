<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
a {
	text-decoration-line: none;
}

#bodyfield {
	position: relative;
	width: 95%;
	height: 230vh;
	margin-left: 2.5%;
	border: 3px solid black;
}

#category {
	text-align: center;
	margin-top : 5%;
	margin-left: 2%;
	float: left;
	width: 10%;
	height: 100vh;
}

.fontst {
	font-size: 25px;
	font-style: bold;
}

#eventbanner {
	border-left : 1px solid;
	float: left;
	margin-left: 1%;
	width: 70%;
	height: 20%;
}

#items {
	border-left : 1px solid;
	float: top;
	float: left;
	width: 70%;
	height: 80%;
	background-color: white;
	margin-left: 1%;
}

#items h2:first-letter {
	font-size: 140%;
	font-style: bold;
	color: black;
}

.items_field {
	text-align: center;
	padding: 4px;
}

.item_slot {
	border: 1px solid silver;
}

#cut_line {
	border-bottom: 2px dotted black;
}
#cut_line2 {
	border-bottom: 3px solid black;
}
#top_ban {
	margin-left : 3%;
	display: flex;
	align-items: center;
	width: 100%;
	height: 3%;
}

#login_left{
	display : flex;
	margin-left : 66%;
}

</style>
</head>
<body>
<div id = "top_ban">
		<a href = "main.jsp"><img src="imgp/ci.png" width="30%" height="100%"></a>
		<c:choose>
			<c:when test="${empty sessionScope.log_name}">
			<div id = "login_left">
				<a href="login.jsp"><button wui>로그인</button></a>
				<a href="join.jsp"><button>회원가입</button></a>
				<a href="help.jsp"><button>고객센터</button></a>
			</div>
			</c:when>
			<c:otherwise>
				<div>${sessionScope.log_name}님 환영합니다.</div>
				<button onclick="invlidate()"> 로그아웃 </button>
				</c:otherwise>
		</c:choose>
	</div>
	<div id="bodyfield">
		<div id="category">
		<h2 id = "cut_line2">카테고리</h2>
		<br/>
			<p>
				<a href="Desk.jsp" class="fontst"> 책상 </a> <br>
			<p>
				<a href="Desk.jsp" class="fontst"> 의자 </a> <br>
			<p>
				<a href="Desk.jsp" class="fontst"> 침대 </a> <br>
			<p>
				<a href="Desk.jsp" class="fontst"> 옷장 </a> <br>
			<p>
				<a href="Desk.jsp" class="fontst"> 선반 </a> <br>
		</div>

		<div id="eventbanner">
			<img src="imgp/banner.png" width="100%" height="100%" />
		</div>

		<div id="items">
			<p>
			<h2>인기상품</h2>
			<table class="items_field">
				<tr>
					<td class="item_slot"><a href="desk1.jsp"><img
							src="imgp/desk1.png" width="100%" height="100%" /> <br> 책상
							1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="desk2.jsp"><img
							src="imgp/desk2.png" width="100%" height="100%" /> <br> 책상
							2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="desk3.jsp"><img
							src="imgp/desk3.png" width="100%" height="100%" /> <br> 책상
							3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="desk4.jsp"><img
							src="imgp/desk4.png" width="100%" height="100%" /> <br> 책상
							4 </a><br> 69,800원</td>
				</tr>
			</table>
			<div id="cut_line"></div>
			<p>
			<h2>전체상품</h2> 
			<table class = "item_field">
				<tr>
					<td class="item_slot"><a href="desk1.jsp"><img
							src="imgp/desk1.png" width="100%" height="100%" /> <br> 책상
							1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="desk2.jsp"><img
							src="imgp/desk2.png" width="100%" height="100%" /> <br> 책상
							2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="desk3.jsp"><img
							src="imgp/desk3.png" width="100%" height="100%" /> <br> 책상
							3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="desk4.jsp"><img
							src="imgp/desk4.png" width="100%" height="100%" /> <br> 책상
							4 </a><br> 69,800원</td>
				</tr>
				<tr>
					<td class="item_slot"><a href="desk1.jsp"><img
							src="imgp/desk1.png" width="100%" height="100%" /> <br> 책상
							1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="desk2.jsp"><img
							src="imgp/desk2.png" width="100%" height="100%" /> <br> 책상
							2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="desk3.jsp"><img
							src="imgp/desk3.png" width="100%" height="100%" /> <br> 책상
							3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="desk4.jsp"><img
							src="imgp/desk4.png" width="100%" height="100%" /> <br> 책상
							4 </a><br> 69,800원</td>
				</tr>
				<br>
				<tr>
					<td class="item_slot"><a href="desk1.jsp"><img
							src="imgp/desk1.png" width="100%" height="100%" /> <br> 책상
							1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="desk2.jsp"><img
							src="imgp/desk2.png" width="100%" height="100%" /> <br> 책상
							2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="desk3.jsp"><img
							src="imgp/desk3.png" width="100%" height="100%" /> <br> 책상
							3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="desk4.jsp"><img
							src="imgp/desk4.png" width="100%" height="100%" /> <br> 책상
							4 </a><br> 69,800원</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>