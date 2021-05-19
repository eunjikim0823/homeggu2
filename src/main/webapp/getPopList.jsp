<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="header.jsp" %>
    <link href="css/Contents.css" rel="stylesheet">
<%@ page import="java.util.*,content.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


			<!-- 조회내용 / 검색어 -->
			<%@include file ="Search.jsp" %>

			<!-- 인기순 조회내역  -->
			<%
			ArrayList getPopList = (ArrayList) request.getAttribute("getPopList");//${list}
				if (getPopList != null) {//데이터가 존재한다면
					Iterator iter = getPopList.iterator();
					while (iter.hasNext()) {//꺼낼 데이터가 존재한다면
						//Board data=(Board)iter.next();//Object ->(Board)형변환
						BoardCommand data = (BoardCommand) iter.next();
						//-------------------------------------------------------
						int num = data.getNum();
						String title = data.getTitle();
						String author = data.getAuthor();
						String hsize = data.getHsize();
						String mate = data.getMate();
						String type = data.getType();
						//String writeday=data.getDate();//날짜출력 ->10글자뿐만 출력하라
						String writeday = data.getWriteday();
						String fileName = data.getFileName();
						//------------------------------------------------
						int readcnt = data.getReadcnt();//조회수
			%>


			<!-- https://ohou.se/projects/30967/detail	 -->

				<!-- <div class="row"> -->
						<div class="col-md-4 col-sm-4">
						    <article class="content">

								<div class="text2">
							    	&nbsp; &nbsp;&nbsp;
							    	조회수:<%=readcnt%>
							    </div>
							   <div class="text3">
							    	작성날짜:<%=writeday.substring(0, 10)%>
							    	&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
							    </div><!-- text -->

						     	<a href="Content_watch.do?num=<%= num %>"> <!-- 사진이랑 제목 눌러야지만 링크 이동 -->
						        	 <div class="thumbnail">
						        	    <img src="picture/upload/<%=fileName%>" height="400" height="400" class=" img-rounded img-responsive">
						       	     </div><!-- thumbnail -->
						         	 <div class="text">
						               <%=title%>
						             </div><!-- text -->
						       </a>


					            <div class="content_writer">
					               <%=author%>
					            </div><!-- content_writer -->

						       <div class="style_tag">
							       <hr>
							      <%=hsize%> &nbsp;&nbsp; <%=mate%> &nbsp;&nbsp; <%=type%>
							       <hr/>
						       </div><!-- style_tag -->
						    </article><!-- content -->
						</div><!-- class="col-md-4 col-sm-4" -->

				<!-- </div>	 -->

				<%
				} //end while
				} //end if
				%>


<!-- <script>

 $(document).ready(function(){
	 $('.type').on('change',function(){
		// alert(this.value);
		 alert($(".type option:selected").val())
	 });

 });

</script>


 -->
<%@include file ="footer.jsp" %>