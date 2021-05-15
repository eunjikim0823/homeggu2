<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <link  rel="stylesheet" href="css/new_main.css" >
<meta charset="UTF-8">
   <link  rel="stylesheet" href="css/join.css" >
 
<title>login</title>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
  <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

</head>
<body>
    <div id="header">
       <a href="homegg">  <img src="img/homegg.png" id="logo"> </a>
       <br>
        <div id="header2"><h4>HommGG</h4></div>
        </div>

			        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">


				 <div>
 
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20" placeholder="아이디 입력">
                     <!--    <span class="step_url"></span> -->
                    </span>
                </div>
                
                
             <div>
                  <p>
                    <span class="box int_pass">
                    
                        <input type="password" id="pswd1" class="int" maxlength="20" placeholder="비밀번호 입력">
                        
                    </span>
                </div>
                
                <p>
                   <div class="btn_area">
                    <button type="button" id="btnLog">
                        <span>로그인</span>
                    </button>
                </div>
                
                <!-- 네이버 로그인 창으로 이동 -->
 <div id="naver_id_login" style="text-align:center">
 <a href="${url}">
	<img width=100%   height="80"  src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png"/>
	</a>
	
	</div>
<br> 


              <!-- 카카오 로그인 창으로 이동  -->  
      <div  id="kakao_id_login" style="text-align: center"> <a href="${kakao_url}"> 		
      <img width=100% height="80" src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"/>
      </a> </div>

                <div class="footer-menu">
                <a href="join.jsp"><span onclick="showSignUp();">회원가입</span></a>
                |
                <span onclick="showLost();">비밀번호 찾기</span>
                
                
                </div>
</body>
</html>