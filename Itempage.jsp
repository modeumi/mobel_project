<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
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
	width: 85%;
	height: 20%;
}

#items {
	border-left : 1px solid;
	float: top;
	float: left;
	width: 85%;
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
	margin-left : 66vh;
}

</style>
<script type="text/javascript">
function setpage(type) {
    fetch('/setpage?type=' + type) 
    .then(response => {
        if (!response.ok) {
            throw new Error(response.status);
        }
        location.reload(); // 페이지를 새로고침합니다.
    })
    .catch(error => console.error(error));
}
</script>
</head>
<body>

	<%@ include file="Header.jsp" %>
	
	<div id="bodyfield">
		<div id="category">
		<h2 id = "cut_line2">카테고리</h2>
		<br/>
			<p>
				<a href="#" class="fontst" onclick = "setpage('desk');" > 책상 
				</a> <br>
			<p>
				<a href="#" class="fontst" onclick = "setpage('chair');"> 의자 
				</a> <br>
			<p>
				<a href="#" class="fontst"onclick = "setpage('bed')"> 침대
				</a> <br>
			<p>
				<a href="#" class="fontst"onclick = "setpage('closet')"> 옷장 
				</a> <br>
			<p>
				<a href="#" class="fontst"onclick = "setpage('shelf')"> 선반
				</a> <br>
		</div>
		

		<div>
		<c:choose>
		<c:when test="${sessionScope.page eq 'desk'}">
		<%@ include file = "item_desk.jsp" %>
		</c:when>
		<c:when test="${sessionScope.page eq 'chair'}">
		<%@ include file = "item_chair.jsp" %>
		</c:when>
		<c:when test="${sessionScope.page eq '침대'}">
		<%@ include file = "item_bed.jsp" %>
		</c:when>
		<c:when test="${sessionScope.page eq '옷장'}">
		<%@ include file = "item_closet.jsp" %>
		</c:when>
		<c:when test="${sessionScope.page eq '선반'}">
		<%@ include file = "item_shelf.jsp" %>
		</c:when>		
		<c:otherwise>
		<%@ include file = "item_desk.jsp" %>
		</c:otherwise>
		</c:choose>
		</div>
	</div>
</body>
</html>