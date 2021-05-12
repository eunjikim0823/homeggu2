<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String[] img ={"1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"};
String[] name = {"파인 LED 빅수납 헤드 수납침대 SS/Q ", "코지베어 먼지없는 차렵이불 단품 및 세트 S/SS/Q/K", "이든 행거형 철제 드레스룸 4colors", "소놉스 LED 리노 평상서랍 침대 (SS/Q)", "3.7V 전동 드라이버 WW-D1 (C타입 충전, 스크류 S2 강철비트, 가정용)", "두꺼운 고품질 라텍스 메모리폼 양면 침대 매트리스", "자자시리즈 본넬/독립 40T라텍폼스 매트리스 S/SS/Q", "최고급 세탁소용 보풀제거기 FX-500 전문가용 보플제거기", "자취방 원룸 서랍형 수납 침대프레임(SS/Q)"};
String[] price = {"799,000", "58,900", "129,900", "279,000", "49,900", "619,000", "210,000", "59,000", "430,000"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShopMallMain JSP</title>
<script type="text/javascript">
function fnCart(name, price) {
	//alert("Name : " + name + "\nPrice : " + price);
	if(confirm("장바구니에 담으시겠습니까?")) {
		location.href = "CartProcess.jsp?name=" + name + "&price=" + price;
	}
}

function fnView() {
	if(confirm("장바구니를 보시겠습니까?")){
		location.href = "CartView.jsp";
	}
}
</script>
</head>
<body>
<header>
		<h1>
			<img src="./images/shop.jpg" alt="shop" width="50" height="50">
			<a href="index2.jsp">홈꾸</a>
		</h1>
	</header>
<div align="center">
	<h3>홈꾸 전체상품</h3>
	
	<table border="1">
		<tr align="right">
			<td colspan="3">
				<input type="button" value="장바구니 보기" onclick="fnView()" />
			</td>
		</tr>
		<%
		for(int i = 0; i < img.length; i++) {
			if(i % 3 == 0) { 
				out.println("<tr align='center'>");
			}
			out.println("<td>");
				out.println("<table>");
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<img src = 'images/ShopMallMain/" + img[i] + "' width='150' height='150' />");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>" + name[i] + "</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							out.println("<b>￦" + price[i] + "원</b>");
						out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr align='center'>");
						out.println("<td>");
							//한 줄로 쓰기
							//out.println("<input type='button' value='장바구니 담기' onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
							//두 줄로 쓰기, 닫는 큰 따옴표와 괄호 옆의 띄어쓰기 필수
							out.println("<input type='button' value='장바구니 담기' ");
							out.println("onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />");
						out.println("</td>");
					out.println("</tr>");
				out.println("</table>");
			out.println("</td>");
			if(i % 3 == 2) {
				out.println("</tr>");
			}
		}
		%>	
	</table>
</div>
</body>
</html>