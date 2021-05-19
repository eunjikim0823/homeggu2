<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.content.*" %>
<%@include file ="header.jsp" %>
    <!-- css 파일   -->
    <link href="css/Contents.css" rel="stylesheet">

 <!--  글 상세보기 및 수정  -->
 <%
 //Board data=(Board)request.getAttribute("data");//${data}
    BoardCommand data=(BoardCommand)request.getAttribute("Content_update");//${data}
   int num=data.getNum();  //${data.num}
   String title=data.getTitle();
   String author=data.getAuthor();
   String content=data.getContent();
   String hsize = data.getHsize();
   String mate = data.getMate();
   String type = data.getType();
   String fileName = data.getFileName();
 %>


	<!-- 글 상세보기 및 수정----------------------------------------------------------->
	<div class="contents_write col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">

		<form action="update.do" method="post" enctype="multipart/form-data" >
					 <!-- enctype="multipart/form-data" -->

		  	<div class="form-group">

		  		<label for="num"><h2>글번호</h2></label>
			    <input type="text"  name ="num" class="form-control" value="<%= num %>" readonly="readonly"/>

			    <label for="author"><h2>작성자</h2></label>
			    <input type="text" name="author" class="form-control" value="<%= author %>">

			    <label for="title"><h2>제목</h2></label>
			    <input type="text" name ="title" class="form-control" value="<%= title %>">

		  	</div><!-- 제목 그룹 -->



		<!-- 거주상황 표기 -->
		  	<div class="livingtype">
			  	<select name="type" class="type">
			  		<option><%= type %></option>
			  		<option value="아파트" class="아파트">아파트</option>
			  		<option value="빌라&연립" class="빌라&연립">빌라&연립</option>
			  		<option value="오피스텔" class="오피스텔">오피스텔</option>
			  		<option value="주택" class="주택">주택</option>
			  	</select>

			  	<select name="hsize" class="hsize">
			  		<option><%= hsize %></option>
			  		<option value="10평 이하" class="10평 이하">10평 이하</option>
			  		<option value="10평" class="10평">10평</option>
			  		<option value="20평" class="20평">20평</option>
			  		<option value="30평" class="">30평</option>
			  	</select>

			  	<select name="mate" class="mate">
			  	<option><%= mate %></option>
			  		<option value="싱글라이프" class="싱글라이프">싱글라이프</option>
			  		<option value="신혼부부" class="신혼부부">신혼부부</option>
			  		<option value="아이가 있는 집" class="아이가 있는 집">아이가 있는 집</option>
			  		<option value="부모님과 함께 사는 집" class="부모님과 함께 사는 집">부모님과 함께 사는 집</option>
			  	</select>
		  	</div>


		  <div class="form-group">
		  		<label for="content"><h1>내용</h1></label>
		  		<textarea class="form-control summernote" rows="10" name="content" placeholder="홈꾸와 멋진 집을 공유해주세요">
		  		<%= content %></textarea><!-- 내용 그룹 -->
		  </div>

		  	<!-- 비밀번호 :<input type = password name = pw size=10 maxlength=10><p> -->
		  <!-- 	<input type="button" class="btn btn-warning btn-lg" value="대표사진 선택">
		  	<input type="button" class="btn btn-warning btn-lg" onclick="delbtn();" value="사진 삭제"> 	 -->

 			<%-- 대표사진<p>
             <input name="fileName" type="file" value="<%= fileName %>"><p> --%>
			<input type="submit" class="btn btn-danger btn-lg" onclick="alert('글수정이 완료되었습니다')"  value="수정완료" />
           <a href="delete.do?num=<%= num %>" type="button" class="btn btn-danger btn-lg">삭제</a>
			<a href="list.do" class="btn btn-danger btn-lg" role="button">글목록</a>

		<!-- 	<input type="submit" class="btn btn-danger btn-lg" onclick="alert('글쓰기가 완료되었습니다')" value="글쓰기 완료">
			<input type="button" class="btn btn-danger btn-lg" action="list.jsp" value="글목록">   -->
		</form>
    </div><!--contents_write  ---------------------------------------------------------------------------------------------------------->










	<!-- 글쓰기 양식 관련 스크립트/링크 ------------------------------------------------------------------------------------------------------->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<!-- 글쓰기 양식 폼 관련 스크립트  -->
 <script>
      $('.summernote').summernote({
        tabsize: 2,
        height: 400
      });
    </script>
<%@include file ="footer.jsp" %>