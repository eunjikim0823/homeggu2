<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lee.*" %>
<%@ page import="com.content.*"%>
<%@include file ="header.jsp" %>
   <%
  //Board data=(Board)request.getAttribute("data");//${data}
   BoardCommand data=(BoardCommand)request.getAttribute("data");//${data}
  int num=data.getNum();  //${data.num}
  String title=data.getTitle();
  String author=data.getAuthor();
  String content=data.getContent();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글보기 및 수정</title>
    <!-- 부트스트랩 -->

   <link href="css/Contents.css" rel="stylesheet">
    <style>
      li {
        list-style:none;
     }
      table.table2 tr {
                 width: 50px;
                 padding: 10px;
                font-weight: bold;
                vertical-align: top;
                border-bottom: 1px solid #ccc;
        }
        table.table2 td {
                 width: 100px;
                 padding: 10px;
                 vertical-align: top;
                 border-bottom: 1px solid #ccc;
        }


    </style>
    <!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js
         IE의 버전이 낮은 경우에는 html5에 대한 태그가 인식X ->인식을 시켜주는 옵션
    -->
    <!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

       </header>



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

      <!--  하단으로 정리  -->
      <%@include file ="footer.jsp" %>

    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>