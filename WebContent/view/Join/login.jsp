<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <link  rel="stylesheet" href="css/new_main.css" >
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
    <div id="header">
       <a href="#홈꾸화면이동">  <img src="img/homegg.png" id="logo"> </a>
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
                
                <div class="footer-menu">
                <span onclick="showSignUp();">회원가입</span>
                |
                <span onclick="showLost();">비밀번호 찾기</span>
                
                
                </div>
</body>
</html>