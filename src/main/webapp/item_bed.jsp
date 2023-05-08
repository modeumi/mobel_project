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

#eventbanner {
	border-left: 1px solid;
	float: left;
	margin-left: 1%;
	width: 85%;
	height: 15%;
}

#items {
	border-left: 1px solid;
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
	width: 20%;
	height: 15%;
	border: 1px solid silver;
}

#cut_line {
	border-bottom: 2px dotted black;
}
</style>
</head>
<body>
	<header>
		<div id="eventbanner">
			<img src="image/banner.png" width="100%" height="100%" />
		</div>

		<div id="items">
			<p>
			<h2>인기상품</h2>
			<table class="items_field">
				<tr>
					<td class="item_slot"><a href="bed1.jsp"><img
							src="image/bed/bed1.png" width="100%" height="100%" /> <br>
							책상 1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="bed2.jsp"><img
							src="image/bed/bed2.png" width="100%" height="100%" /> <br>
							책상 2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="bed3.jsp"><img
							src="image/bed/bed3.png" width="100%" height="100%" /> <br>
							책상 3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="bed4.jsp"><img
							src="image/bed/bed4.png" width="100%" height="100%" /> <br>
							책상 4 </a><br> 69,800원</td>
				</tr>
			</table>
			<div id="cut_line"></div>
			<p>
			<h2>전체상품</h2>
			<table class="item_field">
				<tr>
					<td class="item_slot"><a href="bed1.jsp"><img
							src="image/bed/bed1.png" width="100%" height="100%" /> <br>
							책상 1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="bed2.jsp"><img
							src="image/bed/bed2.png" width="100%" height="100%" /> <br>
							책상 2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="bed3.jsp"><img
							src="image/bed/bed3.png" width="100%" height="100%" /> <br>
							책상 3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="bed4.jsp"><img
							src="image/bed/bed4.png" width="100%" height="100%" /> <br>
							책상 4 </a><br> 69,800원</td>
				</tr>
				<tr>
					<td class="item_slot"><a href="bed1.jsp"><img
							src="image/bed/bed1.png" width="100%" height="100%" /> <br>
							책상 1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="bed2.jsp"><img
							src="image/bed/bed2.png" width="100%" height="100%" /> <br>
							책상 2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="bed3.jsp"><img
							src="image/bed/bed3.png" width="100%" height="100%" /> <br>
							책상 3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="bed4.jsp"><img
							src="image/bed/bed4.png" width="100%" height="100%" /> <br>
							책상 4 </a><br> 69,800원</td>
				</tr>
				<tr>
					<td class="item_slot"><a href="bed1.jsp"><img
							src="image/bed/bed1.png" width="100%" height="100%" /> <br>
							책상 1 </a><br> 39,800원</td>
					<td class="item_slot"><a href="bed2.jsp"><img
							src="image/bed/bed2.png" width="100%" height="100%" /> <br>
							책상 2 </a><br> 49,800원</td>
					<td class="item_slot"><a href="bed3.jsp"><img
							src="image/bed/bed3.png" width="100%" height="100%" /> <br>
							책상 3 </a><br> 59,800원</td>
					<td class="item_slot"><a href="bed4.jsp"><img
							src="image/bed/bed4.png" width="100%" height="100%" /> <br>
							책상 4 </a><br> 69,800원</td>
				</tr>
			</table>
		</div>
	</header>

</body>
</html>