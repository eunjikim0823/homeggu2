<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="content.*" %>

    <!-- css 파일   -->
    <link href="css/Contents.css" rel="stylesheet"  type="text/css">






	<!-- header -->
	<%@include file ="header.jsp" %>

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
	%>


	<!-- 글 상세보기 및 수정----------------------------------------------------------->
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


				<!-- 사이트와 연관된 아이템 -->
				<%@include file ="Content_items.jsp" %>



				<a href="Content_retrieve.do?num=<%= num %>" type="button" class="btn btn-danger btn-sm text-center">글수정하기</a>

			</form>
    	</div><!--contents_write  ---------------------------------------------------------------------------------------------------------->
    </div>



	<!-- footer  -->
	<%@include file ="footer.jsp" %>