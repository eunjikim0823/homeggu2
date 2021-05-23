<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="join.*" %>
 <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

 	<!-- HEADER -->
	 <%@include file ="/View/Common/header.jsp" %>

<!--
====================로그인 구역 시작========================
-->
	<!-- Cookie가 비어있지 않을 때 checked 속성을 줌 -->
	<c:if test="${not empty cookie.user_check}">
		<c:set value="checked" var="checked"/>
	</c:if>

	<form method="post" action="/user/login.do" id="loginform" >
    <!--=== Content Part ===-->
    <div class="container content">
    	<div class="row">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                <form class="reg-page">
                    <div class="reg-header">
                        <h2>사용자 로그인</h2>
                    </div>

                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" id="member_id" name="member_id" value="${cookie.user_check.value}" placeholder="아이디" class="form-control">
                    </div>
                    <div class="input-group margin-bottom-10">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" id="pwd1" name="member_pwd" placeholder="비밀번호" class="form-control">
                    </div>
					<div class="row">
                        <div class="col-md-12">
                            <label class="pull-left">
                            	<input type="checkbox" id="remember_us" name="remember_userId" ${checked}> 아이디 저장
                        	</label>
                        </div>
            		</div>
					<input type="button" onclick="signInValidation()" class="btn-u btn-u-lg btn-block btn-u-blue" value="로그인">
                    <hr>
					<div class="col-md-pull">
                    <p style="text-align:center;" class="color-blue">아직 회원이 아니신가요?</p>
                    </div>
                    <p><a href="${pageContext.request.contextPath}/user/register.do"><button class="btn-u btn-block btn-u-blue" type="button" >회원가입</button></a></p>
                    <div class="row">
                    	<div class="col-md-12">
                        	<span class="pull-right">
                            	<a class="color-blue" href="#">비밀번호 찾기</a>
                            </span>
                            <span class="pull-left">
                            	<a class="color-blue" href="#">아이디 찾기</a>
                            </span>
                        </div>
                	</div>
                </form>
            </div>
        </div><!--/row-->
    </div><!--/container-->
    <!--=== End Content Part ===-->
    </form>
</body>

	<!-- FOOTER -->
	<%@include file ="/View/Common/footer.jsp" %>

<%-- <!-- JS Global Compulsory -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugins/smoothScroll.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/app.js"></script> --%>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        });
</script>


<script type="text/javascript">
	function signInValidation(){
		var userId = $("#member_id").val();
		var userPw = $("#pwd1").val();

		if(!userId){
    		alert("아이디 입력은 필수입니다.");
    		$("#member_id").focus();
    	}else if(!userPw){
    		alert("비밀번호 입력은 필수입니다.");
    		$("#pwd1").focus();
    	}else {
    		signIn()
    	}
	}

    function signIn(){
    	$.ajax({
    		url : "${pageContext.request.contextPath}/user/login.do",
    		type:'POST',
    		data : {
    			member_id : $("#member_id").val(),
    			member_pwd : $("#pwd1").val(),
				remember_userId : $("#remember_us").is(':checked')
			},
    		success:function(data){
    			if(data == "success"){
    				alert("로그인에 성공하셨습니다.");
    				location.href = "${pageContext.request.contextPath}/main.do";
    			}else if(data == "idFail"){
    				alert("ID가 존재하지 않습니다");
    				return false;

    			} else if(data == "pwdFail") {
    				alert("패스워드가 틀렸습니다. 비밀번호를 확이해주세요");
    				return false;
    			}
    		}
    	})
    }
</script>

