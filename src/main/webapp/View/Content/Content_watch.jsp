<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="content.*" %>

    <!-- css 파일   -->
    <link href="${pageContext.request.contextPath}/css/Contents.css" rel="stylesheet"  type="text/css">



	<!-- HEADER -->
	 <%@include file ="/View/Common/header.jsp" %>


	<%
	//Board data=(Board)request.getAttribute("data");//${data}
	 // BoardCommand data=(BoardCommand)request.getAttribute("Content_watch");//${data}
	 BoardCommand data=(BoardCommand)request.getAttribute("Content_watch");
	 int num=data.getNum();  //${data.num}
	  String title=data.getTitle();
	  String author=data.getAuthor();
	  String content=data.getContent();
	  String hsize = data.getHsize();
	  String mate = data.getMate();
	  String type = data.getType();
	  String writeday = data.getWriteday();
	  String fileName = data.getFileName();
	  int readcnt = data.getReadcnt();//조회수
	%>


	<!-- 글 상세보기 및 수정----------------------------------------------------------->
	<!--커버이미지  -->
	<div class="cover">
		<div class="cover_img">
	 		<img src="${pageContext.request.contextPath}/picture/upload/<%=fileName%>"
	 			 style="background:no-repeat center center; background-size:cover; width:100%; height: 500px; object-fit: cover;" >
	 		 <!-- style="width:100%; height:500px;" -->
	 	 </div>
	</div>

	<p>
	<div class="row">
		<div class="contents_write col-md-11 col-md-offset-1 col-sm-11 col-sm-offset-1">

			  	<div class="watch_form-group">
					<div class="watch_writedaty">
			  		<%=writeday.substring(0, 10)%>
			  		</div>
			  		<div class="watch_author">
			  		<%= author %>
			  		</div>
					<p>
					<div class="watch_title">
					<b><%= title %>
					</div>
			  	</div><p>

				<!-- 거주상황 표기 -->
			  	<div class="watch_livingtype">
			  	 	[<%= type %>]&nbsp; &nbsp;&nbsp;&nbsp;
			  	 	[<%= hsize %>]&nbsp; &nbsp;&nbsp;&nbsp;
			  	 	[<%= mate %>]
			  	</div><p>

			  	<div class="watch_content">
			  		<label for="content"><p><%= content %></label><p>
					<p>
				</div>
				<hr>
				<p>
				<!-- 컨텐츠 글 보기 하단 부분 -->
				<div class="text2">
					<img src="picture/home.png" class="img-rounded img-responsive" width="25" height="25"><p>
				    	<span style="color:#92B3B7" >조회수 : <%=readcnt%><p></span>
						<span style="color:gray">작성자 : <%= author %> <p></span>
						<span style="color:gray">&nbsp; &nbsp;&nbsp;&nbsp;<  <%= title %>  ></span>
				</div>


				<hr>

				<div class="other_home">
					<p>
					<h3>다른 집들이 구경하기</h3><p>
					<a href="http://localhost:8090/boardspring9/Content_search.do?searchName=type&searchValue=<%= type %>">
					<button type="button" class="btn btn-outline-danger btn-lg"><%= type %></button>&nbsp; &nbsp;&nbsp; </a>

					<a href="http://localhost:8090/boardspring9/Content_search.do?searchName=hsize&searchValue=<%= hsize %>">
					<button type="button" class="btn btn-outline-danger btn-lg"><%= hsize %></button>&nbsp; &nbsp;&nbsp;</a>

					<a href="http://localhost:8090/boardspring9/Content_search.do?searchName=mate&searchValue=<%= mate %>">
					<button type="button" class="btn btn-outline-danger btn-lg"><%= mate %></button>&nbsp; &nbsp;&nbsp;</a>
				</div>
				<hr>

				<!-- 사이트와 연관된 아이템 -->
				<%@include file ="/View/Content/Content_items.jsp" %>
				<hr>


			<div class=row></div>
				<div class="contents_write col-md-11 col-md-offset-1 col-sm-11 col-sm-offset-1">
					<a href="Content_retrieve.do?num=<%= num %>" type="button" class="btn btn-danger btn-sm float-right">글수정하기</a>
				</div>
			</div>
			</form>
    	</div><!--contents_write  ---------------------------------------------------------------------------------------------------------->
    </div>



	<!-- FOOTER -->
	<%@include file ="/View/Common/footer.jsp" %>