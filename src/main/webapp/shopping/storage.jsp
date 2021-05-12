<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String[] img ={"1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"};
String[] name = {"모노 서랍장 3/4/5단 서랍장 (일반형, 와이드형)","쌓아서 조합하는 래폴드 서랍장","다용도 문걸이 수납 선반, 4type","오픈형 접이식 리빙박스 폴딩박스 수납정리함 53L","원목옷걸이 모음전","다용도 리빙박스 서랍장 팬트리 수납박스 5color","모던플러스 우드상판형 서랍장 (3단/4단/5단)","드레스룸에 어울리는 슈즈 DIY 신발장","명품백 쇼룸처럼 쇼케이스 DIY 가방보관함"};
String[] price = {"39,00", "11,900", "18,900", "17,900", "9,900", "1,850", "35,800", "14,800", "12,300"};
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
	<h3>수 납 /정 리</h3>
	
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
							out.println("<img src = 'images/storage/" + img[i] + "' width='150' height='150' />");
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