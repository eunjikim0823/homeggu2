<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="join.*" %>
 <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

 	<!-- HEADER -->
	 <%@include file ="/View/Common/header.jsp" %>


<body>

		<div class="col-md-10">
	    	<div class="tab-pane fade in active" id="home-1">
                <form action="/user/mypage_infoModify.do" id="updateform" class="sky-form" method="post">
                    <header>회원정보 수정하기</header>

                      <fieldset>
                      	<div>
                              <i class="fa fa-user">&ensp;</i><b>아이디</b> : ${member.member_id}
                          </div>
                          <p>
                          <hr>
                          <div>
                              <i class="fa fa-lock">&ensp;</i><b>비밀번호</b>
                              <input type="password" class="form-control" id="pwd1" name="member_pwd" placeholder="Password">
                          </div>
                          <p>
                          <div>
                              <i class="fa fa-lock">&ensp;</i><b>비밀번호 재입력</b>
                              <input type="password" class="form-control" id="pwd2" placeholder="Password">
                          </div>
                          <p>
                          <hr>
                          <div>
                              <i class="fa fa-user">&ensp;</i><b>이름</b>
                              <input type="text" id="member_name" name="member_name" class="form-control" placeholder="이름을 입력해주세요" value="${member.member_name}">
                          </div>
                          <p>
                          <hr>
                          <div>
                              <i class="fa fa-envelope">&ensp;</i><b>이메일</b>
                              <input type="email" class="form-control" id="member_email" name="member_email" placeholder="예시) aaa@aaa.com" value="${member.member_email}" >
                          </div>
                          <p>
                          <hr>
                          <div>
                              <i class="fa fa-phone-square">&ensp;</i><b>전화번호</b>
                              <input type="text" id="member_phone" name="member_phone" class="form-control" placeholder="전화번호 ex)01012345678" value="${member.member_phone}">
                          	<input type="hidden" id="member_id" name="member_id" value="${sessionScope.loginUser.member_id}">
                          </div>

                          <div>
                              <i class="fa fa-address-book">&ensp;</i><b>주소</b>
                              <input type="text" id="member_address" name="member_address" class="form-control" placeholder="주소 ex)서울시 강남구" value="${member.member_address}">
                          	<input type="hidden" id="member_id" name="member_id" value="${sessionScope.loginUser.member_id}">
                          </div>
                          <p>
                      </fieldset>
                      <footer class="pull">
                       	<div class="pull-left">
                       		<a type="submit" class="btn-u btn-u-blue" onclick="updateValidation()">수정완료</a>&ensp;&ensp;&ensp;
                       		<a type="submit" class="btn-u btn-u-yellow" href="${pageContext.request.contextPath}/user/mypage_info.do?member_id=${sessionScope.loginUser.member_id}">취소하기</a>
                       	</div>
                      </footer>
                  </form>
                  <!--/ Success states for elements -->
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

    function updateValidation(){
    	var userPw = $("#pwd1").val();
    	var userPwCheck = $("#pwd2").val();
    	var name = $("#member_name").val();
    	var email = $("#member_email").val();
    	var phone = $("#member_phone").val();
    	var address = $("#member_address").val();

		if(!userPw){
    		alert("비밀번호 입력은 필수입니다.");
    		$("#pwd1").focus();
    	}else if(!userPwCheck){
    		alert("비밀번호 확인 입력은 필수입니다.");
    		$("#pwd2").focus();
    	}else if(userPw != userPwCheck){
    		alert("비밀번호가 맞지 않습니다.");
    		$("#userPwCheck").focus();
    	}else if(!email){
    		alert("이메일 입력은 필수입니다.");
    		$("#member_email").focus();
    	}else if(!phone){
    		alert("핸드폰 번호 입력은 필수입니다.");
    		$("#member_phone").focus();
    	}else if(!address){
       		alert("주소 입력은 필수입니다.");
       		$("#member_address").focus();
    	}else {
    		update()
    	}
    }

    function update(){
    	$.ajax({
    		url : "${pageContext.request.contextPath}/user/mypage_infoModify.do",
    		type:'POST',
    		data :  $("#updateform").serialize(),
    		success:function(data){
    			if(data == "success"){
    				alert("회원수정이 완료됐습니다.^^");
    				location.href = "${pageContext.request.contextPath}/user/mypage_info.do?member_id=${sessionScope.loginUser.member_id}"
    			}
    		}
    	})
    }
</script>