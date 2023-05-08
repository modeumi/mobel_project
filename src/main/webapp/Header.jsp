<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#top_ban {
	margin-left: 3%;
	display: flex;
/* 	align-items: center; */
	width: 100%;
	height: 3%;
}

#login_left {
	margin-left: 45vh;
}
</style>
</head>
<body>

	<header>
		<div id="top_ban">
			<div>
				<a href="main.jsp"><img src="image/ci.png" width="30%"
					height="100%"></a>
			</div>
			<div id="top_but">
				<div id="login_left">`
					<c:choose>
						<c:when test="${empty sessionScope.log_name}">
							<a href="login.jsp">로그인</a>
							<a href="join.jsp">회원가입</a>
							<a href="Complain.jsp">고객센터</a>

						</c:when>


						<c:otherwise>
							<div>${sessionScope.log_name}님환영합니다.</div>
							<button onclick="invlidate()">로그아웃</button>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>

	</header>

</body>
</html>