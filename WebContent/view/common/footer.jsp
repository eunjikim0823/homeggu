<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 
              어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
   
   
	<!-- 부트스트랩/글씨체 -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     
   
    <!-- 자바스크립트 라이브러리 -->
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="../js/bootstrap.min.js"></script>
  
    
    <!-- css 파일   -->
     <link href="../css/Footer.css" rel="stylesheet">
  

   <title>홈꾸 메인화면</title>
  
  </head>

  <body>
  	<!-- 헤더영역------------------------------------------------- -->





	<!--footer영역  -->
	 <div id="footer">
	 	<div class="footer_container col-md-12 col-sm-12">
	 		<div><hr></div>
	 		<div class="col-md-3 col-sm-3">
	 			<ul>
                    <li><b>사업장명 : 홈꾸미기<hr></b></li>
                    <li>대표자명 : 김대표</li>
                    <li>대표번호 :<p>
                    		02-123-1234</li>
                    <li>사업자번호 :<p>
                    		217-88-66697</li>
                    <li>사업장주소 : <p>
                    	   서울시 강남구 역삼동<p>
                    	   홈꾸빌딩</li>
                 </ul>
	          </div>   <!-- col-md-3 -->
			  <div class="col-md-3 col-sm-3" >
		 		 <ul>
                    <li><b>홈꾸안내<hr></b></a></li>
                    <li><a href="Footer_info1.html">배송비 안내</a></li>
                    <li><a href="Footer_info2.html">교환,반품 방법 안내</a></li>
                    <li><a href="Footer_info3.html">배송상태 및 취소 변경 안내</a></li>
                 </ul>
		 	  </div>	<!-- col-md-3 -->
		 	  <div class="col-md-3 col-sm-3">
	 			<ul>
                    <li><b>입금계좌<hr></b></li>
                    <li>국민 : 000-000-0000</li>
                    <li>예금주 : 홈꾸미기</li>
                </ul>
	 		 </div>	<!-- col-md-3 -->
	 		 <div class="col-md-3 col-sm-3">
	 			<ul>
                    <li><b>고객센터<hr></b></li>
                    <li>1588-1588</li>
                    <li>OPEN : 10:00 ~ 17:00</li>
                    <li>공휴일 및 토요일 일요일<p>[휴무]</li>
                </ul>
		 	  </div>	<!-- col-md-3 -->
	 		</div><!-- footer_container -->
	 	</div> <!-- footer -->
	
	
	<!-- 메인 슬라이드 기능 swiper 연동 -------------------------------------->
  	<script src="../js/swiper.min.js"></script>
	<script>/* swiper API 기능 */
	 var swiper = new Swiper('.swiper-container',{
         pagination: { /*하단 동그라미*/
             el: '.swiper-pagination',
         }, 
         navigation: { /* 화살표 */
             nextEl: '.swiper-button-next',
             prevEl: '.swiper-button-prev',
         },
         autoplay: { /*자동*/
             delay: 5000,
         },
     });</script>

  </body>
</html>