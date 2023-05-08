<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Item"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 세션에서 cart 속성값 가져오기 --%>
	<c:choose>
		<c:when test="${empty sessionScope.item_id}">
비어있어
</c:when>
		<c:otherwise>
			<%-- HTML 테이블에 cart 값 출력하기 --%>
			<table border = '2px'>
				<%
				HttpSession sessionm = request.getSession();
				// 				List<Integer> itemList = new ArrayList<>(); 
				// 				int num = (Integer) session.getAttribute("item_id");
				// 				itemList.add(num);
				// 				int itemCount = itemList.size();
// 				List<Integer> itemList = (List<Integer>) sessionm.getAttribute("item_id");
				int itemCount = (Integer) sessionm.getAttribute("item_num");
				for (int i = 1; i <= itemCount; i++) {
				%>

				<tr>
					<td rowspan="2"><img src="${sessionScope.item_img}" width = '200px' height = '200px'></td>
					<td> <%= itemCount %></td>
					<td>${sessionScope.item_name}</td>
				</tr>
				<tr>
					<td>${sessionScope.item_price} \</td>

					<%
					}
					%>
				</tr>
			</table>
		</c:otherwise>
	</c:choose>
	<script>
	
	</script>
	<button onclick = "location.href='iteminfo.jsp'">
	<span><img src ="image/ci.png" width = '100px' height = '100px'></span>
	</button>
</body>
</html>