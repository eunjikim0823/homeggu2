<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="lee.*" %>
<%@ page import="content.*"%>
<link href="${pageContext.request.contextPath}/css/BoardList.css" rel="stylesheet">

	 <!-- HEADER -->
	 <%@include file ="/View/Common/header.jsp" %>

   <%
	  //Board data=(Board)request.getAttribute("data");//${data}
	   BoardCommand data=(BoardCommand)request.getAttribute("data");//${data}
	  int num=data.getNum();  //${data.num}
	  String title=data.getTitle();
	  String author=data.getAuthor();
	  String content=data.getContent();
	%>


  <body>

       <!--  글 상세보기 및 수정  -->

    <br>
     <form method = "get" action="update.do">

        <table  style="padding-top:50px" align = center width=700 border=0 cellpadding=2 >
                <tr>
                <td height=20 align= center bgcolor=#ccc><font color=white> 글쓰기</font></td>
                </tr>
                <tr>
                <td bgcolor=white>
                <table class = "table2">
                        <tr>
                        <td>글번호</td>
                        <td><input type = text name ="num" size=60 value="<%= num %>" /></td>
                        </tr>
                        <tr>
                        <td>작성자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><input type = text  name="author"  size=20 value="<%= author %>"> </td>
                        </tr>
                        <tr>
                        <td>제목</td>
                        <td><input type = text name ="title" size=60 value="<%= title %>" ></td>
                        </tr>
                        <tr>
                        <td>내용</td>
                          <td><textarea name="content" rows="15" cols="85" ><%= content %></textarea><p/>

                        <center>
                       <input type="submit" value="수정완료" />
                       <a href="delete.do?num=<%= num %>" >삭제</a>
                       <a href="list.do" >목록보기</a>
                        </center>

                </table>
        </table>
        </form>


  </body>

  	<!-- FOOTER -->
	<%@include file ="/View/Common/footer.jsp" %>
