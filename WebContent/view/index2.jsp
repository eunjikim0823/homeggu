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
    <link href="../css/Header.css" rel="stylesheet">
	
	<link href="../css/Main_slider.css" rel="stylesheet">
    <link href="../css/swiper.css" rel="stylesheet">
  
    <link href="../css/Top_content.css" rel="stylesheet">
   
     <link href="../css/Footer.css" rel="stylesheet">
  

	<!-- 아이템 관련  -->   
	<script src="../js/item_slider.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    
   
   
   <title>홈꾸 메인화면</title>
  

  	<!-- 헤더영역------------------------------------------------- -->

	    	<div class="container">
				<ul class="nav nav-tabs col-md-8 col-sm-8">
					<li class="icon"><a href="index.jsp"><img src="../picture/home.png" class="img-rounded img-responsive" width="50" height="50"></a></li>
					<li class="contents"><h2><a href="Contents_Board.do">홈꾸집들이 컨텐츠</a></h2></li>
					<li class="free_board"><h2><a href="Board/freeBoard.do">커뮤니티</a></h2></li>
					<li class="store"><h2><a href="shopping/index2.html">스토어</a></h2></li>
			   	</ul>	
			   		 <!--검색창-->
  
			 	<div class="col-md-4 col-sm-4">
       				<table class="top"width="130" height="40">
            			<tr>	
            			<td><a href="Join/login.do" class="text-danger">로그인</a></td>
            			 <td><a href="Join/join.do" class="text-danger">회원가입</a></td>
            			 </tr>
      				</table>
            
		             <form class="navbar-form navbar-right search " role="search">
		                 <div class="form-group">
		                    <input type="text" class="form-control" placeholder="item name search">
		                 </div>
		                    <button type="button" class="btn btn-default">
		                    <span style="color:red"><i class="fa fa-search" aria-hidden="true"></i></span>
		                    </button> 
		             </form>
		    	</div>
			</div><!-- class="container"-->		
		</nav><!-- header -->
	<!-- /헤더영역 -->
  </head>

  <body>
	<!-- 메인 슬라이드 영역 ---------------------------------------------->
		 <div class="slider">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide ss1">  
                       <div class="container">
                           <div class="row">
                                <h2>홈꾸미기 <em>홈꾸</em></h2>
                                <p>우리집을 소개합니다 - </p>    
                           </div>
                        </div>
                    </div><!--"swiper-slide ss1 종료-->

                    <div class="swiper-slide ss2">
                             <div class="container">
                           <div class="row"> 
                                 <h2>홈꾸미기 <em>홈꾸</em></h2>
                                <p>우리집을 소개합니다 - </p>    
                           </div>
                        </div>
                    </div><!-- ="swiper-slide ss2 종료-->
                    
                    <div class="swiper-slide ss3">
                         <div class="container">
                           <div class="row"> 
                                <h2>홈꾸미기<em>홈꾸</em></h2>
                                <p>우리집을 소개합니다 - </p>    
                           </div>
                        </div>
                    </div><!-- class="swiper-slide ss3 종료-->
                
                </div><!-- class="swiper-wrapper 종료-->

                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
                
            </div><!-- class="swiper-container" 종료 -->
        </div><!-- class="slider"종료 -->
      
	<!-- 슬라이더 영역 종료 -->

	<!-- 인기게시물 소개 영역 -------------------------------------------->
	<div id="top_content"> 
		<div class="top_content">
			<div class="row">
				 <div class="text-box">
                     <h3 class="text">이번주의 인기 게시물</h3>
				</div><!-- "text-box" -->
			</div>
			
			<div class="top_content_list">	
				
				<div class="row">	
				<!-- https://ohou.se/projects/43836/detail?affect_type=ProjectSelfIndex&affect_id=7	 -->		
					<!-- 첫번째 게시물 -->
					<div class="col-md-6 col-sm-6">
					    <article class="content">
					      <a href="#" >
					            <div class=top_img>
					              <img src="../picture/인기게시물/이미지3.jpg" alt="" class="img-rounded img-responsive">
					            </div><!-- top_img -->
					            <div class="text" >
					              아날로그한 취향을 가진 마케터의 원룸 아지트
					            </div><!-- top_text -->  
					            <div class="top_content_writer">
					                작성자이름 <작성자랑 DB연결> 
					                <p>    
					            </div>
					        </a>                 
					    </article><!-- content -->
					</div><!-- class="col-md-6 col-sm-6" --> 

					<!-- https://ohou.se/projects/7871/detail?affect_type=ProjectSelfIndex&affect_id=13 -->
                    <!-- 두번째 게시물 -->
 					<div class="col-md-6 col-sm-6">
					    <article class="content">
					      <a href="#" >
					            <div class=top_img>
					              <img src="../picture/인기게시물/인기게시물2.jpg" alt="" class="img-rounded img-responsive">
					            </div><!-- top_img -->
					            <div class="text">
					               심플하면서도 취향이 드러나는 원룸의 매력
					            </div><!-- top_text -->  
					            <div class="top_content_writer">
					                작성자이름 <작성자랑 DB연결>   
					                <p>    
					            </div>
					        </a>                 
					    </article><!-- content -->
					</div><!-- class="col-md-6 col-sm-6" -->
				</div><!-- row -->
				
				<div class="row"> 
                   	<!--  https://ohou.se/projects/2971/detail?affect_type=ProjectSelfIndex&affect_id=15 -->
                     <!-- 세번째 게시물 -->
 					<div class="col-md-6 col-sm-6">
					    <article class="content">
					      <a href="#" >
					            <div class=top_img>
					              <img src="../picture/인기게시물/인기게시물3.jpg" alt="" class="img-rounded img-responsive">
					            </div><!-- top_img -->
					            <div class="text">
					              신랑과 내 취향을 모두 담아, 24평 신혼집
					            </div><!-- top_text -->  
					            <div class="top_content_writer">
					                작성자이름 <작성자랑 DB연결> 
					             
					               
					            </div>
					        </a>                 
					    </article><!-- content -->
					</div><!-- class="col-md-6 col-sm-6" --> 
        
          			  <!-- https://ohou.se/projects/3041/detail?affect_type=ProjectSelfIndex&affect_id=28 -->                                 
                      <!-- 네번째 게시물 -->
					<div class="col-md-6 col-sm-6">
					    <article class="content">
					      <a href="#" >
					            <div class=top_img>
					              <img src="../picture/인기게시물/인기게시물4.jpg" alt="" class="img-rounded img-responsive">
					            </div><!-- top_img -->
					            <div class="text">
					            	 24년 된 18평 빌라, 천장을 뜯어봤어요!
					            </div><!-- top_text -->  
					            <div class="top_content_writer">
					                작성자이름 <작성자랑 DB연결>   
					            </div>
					        </a>                 
					    </article><!-- content -->
					</div><!-- class="col-md-6 col-sm-6" --> 
				</div><!-- row -->
			</div><!-- class="top_content_list" -->
		</div><!-- class="container" -->
	</div><!-- id="top_content" 종료  -->
	<!-- 인기게시물 소개 영역 종료  -->

	
	
    



	<!-- 이번주 베스트 상품 -->

	<div id="item_content"> 
		
		<div class="item_container row">
			<div class="col-md-8 col-sm-8">
				 <div class="text-box">
                   <h3 class="text">인기상품</h3>
				 </div><!-- class="text-box" -->
			</div>
	
	   	   <div class="Slidewrap_best col-md-8 col-sm-8">
	   			<h4 class="text">★이번주의 인기상품</h4>
	            <ul class="best_slider">
	            
				<!-- https://www.ggumim.co.kr/furniture/view/115754	  -->           
	                <li><!-- 베스트아이템 1 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템1.jpg" alt="" >
		                <div class="text">
		               	 <h5>아티파티</h5>
		                <b><h3>아-파리 후리지아 화병세트</h3></b>
			                <div>
			                	<span style="color:Tomato;">10% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>15,120원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 1 -->
	                
	                
	               <!--  https://www.ggumim.co.kr/furniture/view/87293 -->
	                 <li><!-- 베스트아이템 2 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템2.jpg" alt="" >
		                <div class="text">
		                <h5>올루미</h5>
		                <b><h3>[전구증정]오로라 스탠드</h3></b>
			                <div>
			                	<span style="color:Tomato;">58% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>23,000원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 2 -->
	                
	                
	                
	               <!--  https://www.ggumim.co.kr/furniture/view/105999 -->
	                 <li><!-- 베스트아이템 3 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템3.jpg" alt="" >
		                <div class="text">
		                <h5>오픈플랜트</h5>
		                <b><h3>여인초 대리석패턴 화이트 원형화분</h3></b>
			                <div>
			                	<span style="color:Tomato;">24% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>75,000원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 3 -->
	                
	                
	               <!-- https://www.ggumim.co.kr/furniture/view/108787 -->
	                 <li><!-- 베스트아이템 4 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템4.jpg" alt="" >
		                <div class="text">
		                <h5>플로라</h5>
		                <b><h3>클린 순면 고밀도 60수 양면 이불커버 3컬러</h3></b>
			                <div>
			                	<span style="color:Tomato;">57% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>24,650원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 4 -->
	             	
	             	
	             	<!-- https://www.ggumim.co.kr/furniture/view/30297 -->
	             	 <li><!-- 베스트아이템 5 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템5.jpg" alt="" >
		                <div class="text">
		                <h5>까사마루</h5>
		                <b><h3>다용도 매직 파티션 모들 2colors(단품/세트)</h3></b>
			                <div>
			                	<span style="color:Tomato;">40% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>35,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 5 -->
	                
	                
	          <!--   https://www.ggumim.co.kr/furniture/view/87450             -->   
	             	 <li><!-- 베스트아이템 6 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템6.jpg" alt="" >
		                <div class="text">
		                <h5>딜라이트</h5>
		                <b><h3>젠느 LED멀티 수납침대 SS/Q</h3></b>
			                <div>
			                	<span style="color:Tomato;">40% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>196,000원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 6 -->	             	
	             	
	             	
	            <!--  	https://www.ggumim.co.kr/furniture/view/119430 -->
	             	 <li><!-- 베스트아이템 7 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템7.jpg" alt="" >
		                <div class="text">
		                <h5>위글위글</h5>
		                <b><h3>말랑 무선마우스&마우스 패트SET(6종)</h3></b>
			                <div>
			                	<span style="color:Tomato;">10% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>19,600원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 7 -->	
	                
	                
	              <!--  https://www.ggumim.co.kr/furniture/view/113884  -->
	                <li><!-- 베스트아이템 8 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템8.jpg" alt="" >
		                <div class="text">
		                <h5>모아이</h5>
		                <b><h3>인테리어 포이늩 아치형 거울 5 Size</h3></b>
			                <div>
			                	<span style="color:Tomato;">59% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>69,000원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 8 -->     
	                
	                              
	            <!--     https://www.ggumim.co.kr/furniture/view/113887 -->
	             	 <li><!-- 베스트아이템 9 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템9.jpg" alt="" >
		                <div class="text">
		                <h5>모아이</h5>
		                <b><h3>심플리 철제 스탠드 행거1500</h3></b>
			                <div>
			                	<span style="color:Tomato;">60% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>39,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 9 -->	                
	                
	                
	                
	                <!-- https://www.ggumim.co.kr/furniture/view/86287 -->
	             	 <li><!-- 베스트아이템 10 -->
	                 <a href="#">
	                	<img src="../picture/아이템/베스트아이템10.jpg" alt="" >
		                <div class="text">
		                <h5>모나코올리브</h5>
		                <b><h3>자석후크 꼬리감는 마스크걸이냥</h3></b>
			                <div>
			                	<span style="color:Tomato;">43% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>3,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 베스트아이템 10 -->	                                        
	            </ul>
	       </div><!-- Slidewrap_best -->
		</div><!-- item_container -->


	   	  <div class="Slidewrap_sale col-md-8 col-sm-8">
	   		<h4 class="text">★인기세일상품</h4>
	            <ul class="sale_slider">
	             
	              <!--  https://www.ggumim.co.kr/furniture/view/83587  -->
	               <li><!-- 할인상품1 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품1.jpg" alt="" >
		                <div class="text">
		                <h5>헬로우슬립</h5>
		                <b><h3>먼지없는 프릴 사계절 차렵이불(SS/Q)-11color</h3></b>
			                <div>
			                	<span style="color:Tomato;">80% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>31,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품 1 -->	     
	                
		<!-- https://ohou.se/productions/767965/selling?affect_type=SpecialFeed&affect_id=11 -->
	               <li><!-- 할인상품2 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품2.jpg" alt="" >
		                <div class="text">
		                <h5>잉글랜더</h5>
		                <b><h3>오늘만!잉글랜더 베스트 침대/서랍장/쇼파</h3></b>
			                <div>
			                	<span style="color:Tomato;">61% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>139,000원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품 2 -->	       	                
	                
	          <!-- https://www.ggumim.co.kr/furniture/view/29439       -->
	               <li><!-- 할인상품3 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품3.jpg" alt="" >
		                <div class="text">
		                <h5>리샘가구</h5>
		                <b><h3>5단 800 서랍장 4종 택1</h3></b>
			                <div>
			                	<span style="color:Tomato;">70% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>59,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품 3 -->
	                
	      <!--   https://www.ggumim.co.kr/furniture/view/125852  -->  
	               <li><!-- 할인상품4 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품4.jpg" alt="" >
		                <div class="text">
		                <h5>쁘리엘르</h5>
		                <b><h3>순면 옥스포드 삼각 등쿠션 3type/3color/2size</h3></b>
			                <div>
			                	<span style="color:Tomato;">62% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>22,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품4 -->	                

				<!-- https://www.ggumim.co.kr/furniture/view/91323 -->
	               <li><!-- 할인상품5 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품5.jpg" alt="" >
		                <div class="text">
		                <h5>레시앙뜨</h5>
		                <b><h3>크리미 단모 사계절 러그 13size 7colors</h3></b>
			                <div>
			                	<span style="color:Tomato;">71% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>14,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품5 -->	

				<!-- https://www.ggumim.co.kr/furniture/view/114098 -->
	               <li><!-- 할인상품6 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품6.jpg" alt="" >
		                <div class="text">
		                <h5>마주팩토리</h5>
		                <b><h3>아크릴 레터링 감성문구 주문제작</h3></b>
			                <div>
			                	<span style="color:Tomato;">25% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>750원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품 6 -->
	                	       	                
	           <!--  https://www.ggumim.co.kr/furniture/view/114098     -->
	               <li><!-- 할인상품7 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품7.jpg" alt="" >
		                <div class="text">
		                <h5>프시케</h5>
		                <b><h3>퓨어 드립 포트 PV-H818DK</h3></b>
			                <div>
			                	<span style="color:Tomato;">84% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>32,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품 7 -->
	                
	              <!--   https://www.ggumim.co.kr/furniture/view/114435 -->
	               <li><!-- 할인상품8 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품8.jpg" alt="" >
		                <div class="text">
		                <h5>까사지오</h5>
		                <b><h3>[단독특가] 수저 4인세트 12P</h3></b>
			                <div>
			                	<span style="color:Tomato;">82% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>19,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품8 -->	                


			<!-- https://www.ggumim.co.kr/furniture/view/106169 -->
	               <li><!-- 할인상품9 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품9.jpg" alt="" >
		                <div class="text">
		                <h5>하우스플랜</h5>
		                <b><h3>미러라이트 무드등(5구)</h3></b>
			                <div>
			                	<span style="color:Tomato;">73% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>6,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품9 -->	
	                
	                
	         <!--   https://www.ggumim.co.kr/furniture/view/123954      -->
	               <li><!-- 할인상품10 -->
	                 <a href="#">
	                	<img src="../picture/아이템/할인상품10.png" alt="" >
		                <div class="text">
		                <h5>APLUM</h5>
		                <b><h3>데스크테리어 7종 모음전</h3></b>
			                <div>
			                	<span style="color:Tomato;">41% 	&nbsp;&nbsp;&nbsp;</span>
			                	<span>8,900원</span>		           
			                </div>
		                </div>
	                	</a>
	                </li><!-- 할인상품10 -->	
	                  
	            </ul><!-- sale_slider -->
	       </div><!-- Slidewrap_sale -->
		
		</div><!-- item_content -->

	<!--footer영역  -->
	 <footer id="footer">
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
                    <li><a href="Footer_info1.do">배송비 안내</a></li>
                    <li><a href="Footer_info2.do">교환,반품 방법 안내</a></li>
                    <li><a href="Footer_info3.do">배송상태 및 취소 변경 안내</a></li>
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
	 	</footer> <!-- footer -->
	
	
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