<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.content.*" %>

<!--  ======================= -->
	<nav id="Contents_Board">
		<div class="row">
			<div class="col-md-8 col-sm-8">

 					 <select name="type" class="type"  onchange="window.open(value,'_self');">
				  		<option selected value hidden class="type">조회기준</option>
				  		<option value="getPopList.do" class="인기순">인기순</option>
				  		<option value="Content_list.do" class="최신순">최신순</option>
				  	</select>

			  <!-- 		<select name="type" class="type">
				  		<option selected value hidden class="searchType">주거형태</option>
				  		<option value="아파트" class="아파트">아파트</option>
				  		<option value="빌라&연립" class="빌라&연립">빌라&연립</option>
				  		<option value="오피스텔" class="오피스텔">오피스텔</option>
				  		<option value="주택" class="주택">주택</option>
				  	</select>

				  	<select name="hsize" class="hsize">
				  		<option selected value hidden class="searchHsize">평수</option>
				  		<option value="10평 이하" class="10평 이하">10평 이하</option>
				  		<option value="10평" class="10평">10평</option>
				  		<option value="20평" class="20평">20평</option>
				  		<option value="30평" class="">30평</option>
				  	</select>

				  	<select name="mate" class="mate">
				  		<option selected value hidden class="searchMate">거주형태</option>
				  		<option value="싱글라이프" class="싱글라이프">싱글라이프</option>
				  		<option value="신혼부부" class="신혼부부">신혼부부</option>
				  		<option value="아이가 있는 집" class="아이가 있는 집">아이가 있는 집</option>
				  		<option value="부모님과 함께 사는 집" class="부모님과 함께 사는 집">부모님과 함께 사는 집</option>
				  	</select> -->

			</div><!--col-md-6 col-sm-6-->



			<div class="col-md-4 col-sm-6 text-right">
				<form action="Content_search.do">
			   		<select name="searchName" size="1">
		          		<option value="author">작성자</option>
		   	      		<option value="title">제목</option>
		   	      		<option value="hsize">평수</option>
		   	      		<option value="mate">거주형태</option>
		   	      		<option value="type">주거형태</option>
		          	</select>

			   		<input type="text" name="searchValue">
			   		<input type="submit" value="검색">


				</form>

				 <a href="Content_write.jsp" class="btn btn-danger icon3" role="button">글작성</a>
			</div><!--col-md-6 col-sm-6-->
		</div><!--row  -->
	</nav>

		<hr/>