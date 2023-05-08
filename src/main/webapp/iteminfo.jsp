<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
<script type="text/javascript">
function additem(){
	var session = <%= session %>;
	
	 // 장바구니의 물건들을 불러오기
	session.getAttribute("cart"); 
	
	 // 장바구니가 비었다면 새로운 list 생성
	 if (cart == null) {
	        cart = [];
	    }
	 // 장바구니 안에 물건 추가 (item id )
	 cart.push(1001);
	 
	 // 추가한 물건을 세션에 추가 
	session.setAttribute("cart" , cart);
	
}

</script>
</head>
<body>

<form action = "Itemservlet" method = "post" >
<input type = "hidden" name = "itemid" value = "1001">
<button type = "submit" >
<span><img src = "image/cart.jpg" width= '19px' height = '19px'></span>
<span> 장바구니</span>
</button> 
</form>

<a href = " buy.jsp"><button type="button" >
<span>구매하기</span>
</button></a>

	
</body>
</html>