<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<%@include file ="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑화면</title>

	<!-- 스타일 시트 적용 -->
	<link rel="stylesheet" href="./css/index.css">
	<link href="./css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<header>		
				<input type="button"  style="float:right" value="장바구니 보기" onclick="location.href='CartView.jsp'  " />
				<br>
	</header>
	<!-- 네비게이션 바 -->
	<nav>
		<ul>
			<li><a href="ShopMallMain.jsp">전체상품</a></li>
			<li><a href="ranking.jsp">랭킹</a></li>
			<li><a href="review.jsp">홈꾸리뷰</a></li>
			<li><a href="furniture.jsp">가구</a></li>
			<li><a href="fabric.jsp">패브릭</a></li>
			<li><a href="light.jsp">조명</a></li>
			<li><a href="kitchen.jsp">주방</a></li>
			<li><a href="storage.jsp">수납/정리</a></li>
			<li><a href="electronics.jsp">가전</a></li>
			<li><a href="home-deco.jsp">홈데코</a></li>
			<li><a href="supplies.jsp">생활용품</a></li>
			<li><a href="self-interior.jsp">셀프인테리어</a></li>
			<li><a href="pet.jsp">반려동물</a></li>
		</ul>
	</nav>
	
 <!-- 신상품 -->
 <table border=0>
    <div>
        <h2>신상품</h2>
         <hr width = "90%" color = "red">
   		</div>
   	</div>

<tr>
<td>  
                <div class="col-xs-6 col-md-4">
                <a href="#">
                    <div class="content">
                     <img src="./images/10.jpg" class="img-rounded">
                    </div>
                </a>
                <div class="description">
   						      <div class="name">[단독특가] 우유팩 그대로<p> 요거트 제조기 2종 택1</div>
                    <div class="price_original">
                                                    <s>39,800 원</s><p>
                                            </div>
                    <div class="price_discount">
                        <span>7,900 </span>
                        <span class="unit">원</span>
                        <span class="discount">80%</span>
                    </div>
                </div>
            </div></td>
            
            <td><div class="col-xs-6 col-md-4">
   				<article class="content">
   						<div class=top_img>
   						  <img src="./images/11.jpg" class="img-rounded">
   						  <div class="text">
   						  푹쉼 아리엘 클리너블 3,4인<p>
   						   소파 2종 택1 스툴 추가<p>
   						  <p style="text-decoration:line-through">567,000 원</p>
   						  189,000 원 67%
   						  </div>
   						 </div>
   				</article>
   			</div>
   			</td>
   			
   			<td>
   			<div class="col-md-4 col-sm-4">
   				<article class="content">
   						<div class=top_img>
   						  <img src="./images/12.jpg" class="img-rounded">
   						  <div class="text">
   						  안아파 발톱깎이<p>
   						  <p style="text-decoration:line-through">20,000 원</p>
   						  8,900 원 56%
   						  </div>
   						 </div>
   				</article>
   			</div>
   			</td>
   			
   			<tr>
 <td><div class="col-md-4 col-sm-4">
   				<article class="content">
   						<div class=top_img>
   						  <img src="./images/13.jpg" class="img-rounded">
   						  <div class="text">
   						  여리체크 순면 쿠션 50x50 3colors<p>
   						  <p style="text-decoration:line-through">21,500 원</p>
   						  11,400 원 47%
   						  </div>
   						 </div>
   				</article>
   			</div>
   			</td>

<td><div class="col-md-4 col-sm-4">
   				<article class="content">
   						<div class=top_img>
   						  <img src="./images/14.jpg" class="img-rounded">
   						  <div class="text">
   						  프리미엄 하이퍼 점보 <p>고밀도 순면 요 토퍼(SS)(Q)<p>   						  
   						  <p style="text-decoration:line-through">164,200 원</p>
   						  59,900 원 64%
   						  </div>
   						 </div>
   				</article>
   			</div>
   			</td>

<td>	<div class="col-md-4 col-sm-4">
   				<article class="content">
   						<div class=top_img>
   						  <img src="./images/15.jpg" class="img-rounded">
   						  <div class="text">
   						  마이홈 스탠딩 2인 홈세트(14p)-1set<p>
   						  <p style="text-decoration:line-through">99,000 원</p>
   						  34,900 원 65%
   						  </div>
   						 </div>
   				</article>
   			</div>
   			</td>
</tr> 
</table> 
   			  			        
</body>
</html>
<%@include file ="footer.jsp" %>