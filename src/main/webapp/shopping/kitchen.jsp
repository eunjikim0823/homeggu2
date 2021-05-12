<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String[] img ={"1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"};
String[] name = {"국내배송 뭉뚝 머그 플레이트 세트","써니 플레이트 양손 내열유리 나눔 브런치접시","마그넷 슬라이서 채칼","NOWA 뉴 쿡웨어 7종 세트","플루딕 진공 음식물쓰레기통 3L","피카 주방용품 모음 (택1)","깔끔도마 세트","무타공 스탠드식 스테인레스 1단/2단 식기건조대","씽크대 하부장 정리! 씽크인 선반 & 수납장"};
String[] price = {"29,000", "7,900", "17,900", "68,900", "18,900", "29,900", "65,900", "29,900", "14,500"};
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
	<h3>주 방</h3>
	
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
							out.println("<img src = 'images/kitchen/" + img[i] + "' width='150' height='150' />");
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