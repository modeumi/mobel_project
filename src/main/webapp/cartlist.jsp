<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 세션에서 cart 속성값 가져오기 --%>
	<%
	List<String> cart = (List<String>) session.getAttribute("item");
	if (cart == null) {
		cart = new ArrayList<>();
	}
	%>

	<%-- HTML 테이블에 cart 값 출력하기 --%>
	<table>
		<%
		for (String item : cart) {
		%>
		<tr>
			<td rowspan="2"><img src="${sessionScope.item_img}"></td>
			<td>${sessionScope.item_name}</td>
		</tr>
		<tr>
			<td>${sessionScope.item_price}</td>

			<%
			}
			%>
		</tr>
	</table>
</body>
</html>