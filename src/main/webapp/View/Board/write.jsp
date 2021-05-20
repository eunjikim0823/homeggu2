<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="content.*"%>
<link href="${pageContext.request.contextPath}/css/BoardList.css" rel="stylesheet">

	 <!-- HEADER -->
	 <%@include file ="/View/Common/header.jsp" %>

<title>글작성</title>

  <body>


       <!--  글쓰기  -->
    <br>
     <form method = "get" action = "write.do">
        <table  style="padding-top:50px" align = center width=700 border=0 cellpadding=2 >
                <tr>
                <td height=20 align= center bgcolor=#ccc><font color=white> 글쓰기</font></td>
                </tr>
                <tr>
                <td bgcolor=white>
                <table class = "table2">
                        <tr>
                        <td>작성자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><input type = text  name="author"  size=20> </td>
                        </tr>

                        <tr>
                        <td>제목</td>
                        <td><input type = text name ="title" size=60></td>
                        </tr>

                        <tr>
                        <td>내용</td>
                        <td><textarea name="content" cols=85 rows=15></textarea></td>
                        </tr>

                        </table>

                        <center>
                        <input type="submit" value="글쓰기"/>
                        <input type="button" value="취소하기" action="list.jsp" />
                        </center>
                </td>
                </tr>
        </table>
        </form>


                <i class="fab fa-java fa-2x"></i><i class="fab  fa-html5 fa-2x"></i><i class="fab fa-github-alt fa-2x"></i>


    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->

  </body>

 	 <!-- FOOTER -->
	<%@include file ="/View/Common/footer.jsp" %>
