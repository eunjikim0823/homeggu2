<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String[] img ={"1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"};
String[] name = {"강아지 옷걸이 행거&옷걸이","강아지 고양이 밥그릇 애견 식기 모음전","원목 스크래쳐 캣타워 DIY (3단/5단)","캣츠빈 고양이 반자동 화장실","완벽한 고정력 방수 강아지 배변보조패드 배변판 매트","강아지방석 사계절 2중누빔 마약방석 켄넬방석","원목 반려동물 하우스 강아지집","제리파파 마약 패티 방석","강아지매트"};
String[] price = {"14,900", "12,900", "39,900", "45,000", "15,800", "22,900", "54,900 ", "48,900", "3,120"};
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
	<h3>반 려 동 물</h3>
	
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
							out.println("<img src = 'images/pet/" + img[i] + "' width='150' height='150' />");
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