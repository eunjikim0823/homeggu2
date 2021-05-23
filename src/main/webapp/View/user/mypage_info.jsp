<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="join.*" %>
 <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

 	<!-- HEADER -->
	 <%@include file ="/View/Common/header.jsp" %>

<body>
<div class="wrapper">


	<div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left" id="RPath"><b>회원 정보</b></h1>
        </div>
    </div><!--/breadcrumbs-->


		<div class="col-md-10">
	    	<div class="tab-pane fade in active" id="home-1">
                            <form action="#" class="sky-form">
                                <header>회원정보</header>

                                <fieldset>
                                	<div>
                                        <i class="fa fa-user">&ensp;</i><b>아이디</b> : ${member.member_id}
                                    </div>
                                    <p>
                                    <hr>
                                    <div>
                                        <i class="fa fa-user">&ensp;</i><b>이름</b> : ${member.member_name}
                                    </div>
                                    <p>
                                    <hr>
                                    <div>
                                        <i class="fa fa-envelope">&ensp;</i><b>이메일</b> : ${member.member_email}
                                    </div>
                                    <p>
                                    <hr>
                                    <div>
                                        <i class="fa fa-phone-square">&ensp;</i><b>전화번호</b> : ${member.member_phone}
                                    </div>
                                    <p>
                                    <hr>
                                    <div>
                                        <i class="fa fa-address-book">&ensp;</i><b>주소</b> : ${member.member_address}
                                    </div>
                                    <p>
                                    <hr>
                                    <div>
                                        <i class="fa fa-history">&ensp;</i><b>가입날짜</b> : ${member.member_joindate}
                                    </div>
                                    <p>
                                </fieldset>
                                <footer class="pull">
	                                	<div class="pull-left">
	                                		<a type="submit" class="btn-u" href="${pageContext.request.contextPath}/user/mypage_infoModify.do?member_id=${sessionScope.loginUser.member_id}">수정하기</a>
	                                	</div>
										<div class="pull-right">
	                                		<a type="submit" class="btn-u btn-u-red" href="${pageContext.request.contextPath}/user/mypage_infoDelete.do?member_id=${sessionScope.loginUser.member_id}">탈퇴하기</a>
	                                	</div>
                                </footer>
                            </form>
                            <!--/ Success states for elements -->
        	</div>
		</div>
	</div>

 <div class="margin-bottom-50"></div>

</body>

	<!-- FOOTER -->
	<%@include file ="/View/Common/footer.jsp" %>



<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
    });
</script>
