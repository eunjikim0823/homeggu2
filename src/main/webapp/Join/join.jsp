<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="join.*" %>
<link href="/css/join.css" rel="stylesheet">





<!-- header-->
<%@include file ="/header.jsp" %>



<title>회원가입</title>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="/resources/js/addressapi.js"></script>
</head>
<body>
   <!-- header -->
        <div id="header">
       <a href="homgg">  <img src="img/homegg.png" id="logo"> </a>
       <br>
        <div id="header2"><h4>HommGG</h4></div>
        </div>

  <form action="userJoinPro" method="post" role="form" id="usercheck" name="user">

        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- ID -->
                <div>


                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20" placeholder="이메일 주소를 입력해주세요"">
                     <!--    <span class="step_url"></span> -->
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">

                        <input type="password" id="pswd1" class="int" maxlength="20">
                        <img src="img/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                        <span id="alertTxt">사용불가</span>

                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20">
                        <img src="img/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- BIRTH -->
                <div>
                    <h3 class="join_title"><label for="yy">생년월일</label></h3>

                    <div id="bir_wrap">
                        <!-- BIRTH_YY -->
                        <div id="bir_yy">
                            <span class="box">
                                <input type="text" id="yy" class="int" maxlength="4" placeholder="년(4자)">
                            </span>
                        </div>

                        <!-- BIRTH_MM -->
                        <div id="bir_mm">
                            <span class="box">
                                <select id="mm" class="sel">
                                    <option>월</option>
                                    <option value="01">1</option>
                                    <option value="02">2</option>
                                    <option value="03">3</option>
                                    <option value="04">4</option>
                                    <option value="05">5</option>
                                    <option value="06">6</option>
                                    <option value="07">7</option>
                                    <option value="08">8</option>
                                    <option value="09">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>
                            </span>
                        </div>

                        <!-- BIRTH_DD -->
                        <div id="bir_dd">
                            <span class="box">
                                <input type="text" id="dd" class="int" maxlength="2" placeholder="일">
                            </span>
                        </div>

                    </div>
                    <span class="error_next_box"></span>
                </div>

                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>


                    <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>
                </div>


                <div>
                    <h3 class="join_title"><label for="email">이메일<span class="optional"></span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
                </div>



              <!--  <div>
                    <h3 class="join_title"><label for="address">주소<span class="optional"></span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="address" class="int" maxlength="100" placeholder="선택입력">
                    </span>readonly="readonly"
                    <span class="error_next_box">주소를 다시 확인해주세요.</span>
                </div> -->

             <div class="form-group1">
            <h3 class="join_title"><label for="address">주소<span class="optional"></span></label></h3>
               <span class="box int_email">
				<input type="text" class="int" maxlength=placeholder="우편번호" name="addr1" id="addr1" >
    			</span>
    			</div>

    			<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>

			<div class="form-group">
			<h3 class="join_title"/>
			  <span class="box int_email">
    			<input type="text"  class="int" placeholder="도로명 주소" name="addr2" id="addr2"/>
				</span>
			</div>

			  <div class="form-group">
			  	<h3 class="join_title"/>
			  <span class="box int_email">

    			<input type="text" class="int"  placeholder="상세주소" name="addr3" id="addr3" />
				</span>

			</div>




                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>가입하기</span>
                    </button>
                </div>


                 <div class="btn_area">
                    <button type="button" id="btnBack">
                        <span>이전으로</span>
                    </button>
                </div>



            </div>
            <!-- content-->

        </div>

        <!-- wrapper -->
    <script src="js/join.js"></script>
    </form>
</body>
</html>