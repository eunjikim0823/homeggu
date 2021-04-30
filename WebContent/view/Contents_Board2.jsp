<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="header.jsp" %>
    <link href="../css/Contents.css" rel="stylesheet">


<!--  ======================= -->
	<nav id="Contents_Board"> 
	
		<div class="container">				
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
				<!-- 드롭다운 부분 추가 -->
					<li class="dropdown">
						<a data-toggle="dropdown" href="#">조회기준
							<span class="caret"></span></a>	
						<ul class="dropdown-menu">					
							<li><a href="#">인기순</a></li>
							<li><a href="#">최신순</a></li>			
						</ul>
					</li>
				<!-- 드롭다운 부분 추가 2 -->	
					<li class="dropdown">
						<a data-toggle="dropdown" href="#">주거형태
							<span class="caret"></span></a>	
						<ul class="dropdown-menu">					
							<li><a href="#">아파트</a></li>
							<li><a href="#">빌라&연립</a></li>
							<li><a href="#">오피스텔</a></li>
							<li><a href="#">주택</a></li>				
						</ul>
					</li>		
				<!-- 드롭다운 부분 추가3 -->	
					<li class="dropdown">
						<a data-toggle="dropdown" href="#">평수
							<span class="caret"></span></a>	
						<ul class="dropdown-menu">					
							<li><a href="#">10평미만</a></li>
							<li><a href="#">10평대</a></li>
							<li><a href="#">20평대</a></li>		
							<li><a href="#">30평대</a></li>	
						</ul>
					</li>		
				<!-- 드롭다운 부분 추가4 		
					<li class="dropdown">
						<a data-toggle="dropdown" href="#">분야
							<span class="caret"></span></a>	
						<ul class="dropdown-menu">					
							<li><a href="#">리모델링</a></li>
							<li><a href="#">홈스타일링</a></li>
							<li><a href="#">부분공사</a></li>		
							<li><a href="#">건축</a></li>	
						</ul>
					</li>		
				드롭다운 부분 추가5		
					<li class="dropdown">
						<a data-toggle="dropdown" href="#">공간
							<span class="caret"></span></a>	
						<ul class="dropdown-menu">					
							<li><a href="#">원룸</a></li>
							<li><a href="#">현관</a></li>
							<li><a href="#">거실</a></li>		
							<li><a href="#">주방</a></li>	
							<li><a href="#">화장실</a></li>	
						</ul>
					</li>	
				드롭다운 부분 추가 6		
					<li class="dropdown">
						<a data-toggle="dropdown" href="#">스타일
							<span class="caret"></span></a>	
						<ul class="dropdown-menu">					
							<li><a href="#">모던</a></li>
							<li><a href="#">북유럽</a></li>
							<li><a href="#">빈티지</a></li>		
							<li><a href="#">내추럴</a></li>	
							<li><a href="#">로맨틱</a></li>	
							<li><a href="#">클래식</a></li>	
						</ul>
					</li>	 -->
				<!-- 드롭다운 부분 추가 7 -->		
					<li class="dropdown">
						<a data-toggle="dropdown" href="#">거주형태
							<span class="caret"></span></a>	
						<ul class="dropdown-menu">					
							<li><a href="#">싱글라이프</a></li>
							<li><a href="#">신혼부부</a></li>
							<li><a href="#">아이가 있는 집</a></li>		
							<li><a href="#">부모님과 함께 사는 집</a></li>	
						</ul>
					</li>			
				</ul>
				<input type="button" class="btn btn-lignt icon3" value="적용">	
				<a href="Contents_write.do">
					<input type="button" class="btn btn-danger icon3" value="글쓰기">
				</a>						
			</div><!-- container -->
		</nav>	

				
					
			<!-- https://ohou.se/projects/30967/detail	 -->		
				
				<div class="row">	 <!-- 컨텐츠 업로드 db연결  ★★★ ★★★ ★★★ ★★★-->
					<c:foreach items="${list}" var="content"><!-- 데이터만큼 반복 -->
						<div class="col-md-4 col-sm-4">
						    <article class="content">
						    	조회수:${content.hit}&nbsp; &nbsp;&nbsp; &nbsp; 작성날짜:${content.regdate}
						      <a href="#" >
						            <div class="thumbnail">
						              <img src="../picture/인기게시물/이미지3.jpg" alt="1" class="img-rounded img-responsive">
						            	${content.filename}
						            </div><!-- content_img -->
						            <div class="text">
						              ${content.title}
						            </div><!-- text -->  
						       </a> 
						             
					            <div class="content_writer">
					                ${content.writer}     
					            </div><!-- content_writer -->
						       					          
						       <div class="style_tag">
							       <hr>
							       	${content.type}&nbsp;&nbsp;${content.size}&nbsp;&nbsp;${content.mate}
							      
						       </div><!-- style_tag -->       
						    </article><!-- content -->
						</div><!-- class="col-md-4 col-sm-4" --> 
					</c:foreach>	
				</div>	
				
				
				
				
				<div class="row">	
					<div class="col-md-4 col-sm-4">
					    <article class="content">
					      <a href="#" >
					            <div class=content_img>
					              <img src="../picture/인기게시물/이미지3.jpg" alt="1" class="img-rounded img-responsive">
					            </div><!-- content_img -->
					            <div class="text">
					              아날로그한 취향을 가진 마케터의 원룸 아지트
					            </div><!-- text -->  
					       </a> 
					             
				            <div class="content_writer">
				                알로하윤     
				            </div><!-- content_writer -->
					       					          
					       <div class="style_tag">
						       <hr>
						       	#원룸&오피스텔&nbsp;&nbsp;#14평&nbsp;&nbsp;#싱글라이프
					       </div><!-- style_tag -->       
					    </article><!-- content -->
					</div><!-- class="col-md-4 col-sm-4" --> 
					
					
					
					
			<!-- https://ohou.se/projects/7871/detail?affect_type=ProjectSelfIndex&affect_id=13 -->

 					<div class="col-md-4 col-sm-4">
					    <article class="content">
					      <a href="#" >
					            <div class=content_img>
					              <img src="../picture/인기게시물/인기게시물2.jpg" alt="2" class="img-rounded img-responsive">
					            </div><!-- content_img -->
					            <div class="text">
					               심플하면서도 취향이 드러나는 원룸의 매력
					            </div><!--text -->  
					      </a>
					             
				            <div class="content_writer">
				                ki.iy      
				            </div><!--content_writer -->
					       
					       <div class="style_tag">
						       <hr>
						       	#원룸&오피스텔&nbsp;&nbsp;#6평&nbsp;&nbsp;#싱글라이프
					       </div><!-- style_tag -->              
					    </article><!-- content -->
					</div><!-- class="col-md-4 col-sm-4" -->
					 
                <!--  https://ohou.se/projects/2971/detail?affect_type=ProjectSelfIndex&affect_id=15 -->

 					<div class="col-md-4 col-sm-4">
					    <article class="content">
					      <a href="#" >
					            <div class=content_img>
					              <img src="../picture/인기게시물/인기게시물3.jpg" alt="3" class="img-rounded img-responsive">
					            </div><!--content_img -->
					            <div class="text">
					              신랑과 내 취향을 모두 담아, 24평 신혼집
					            </div><!--text -->  
					       </a>       
					             
			               <div class="content_writer">
			                vivi90     
			            	</div><!-- content_writer -->
					     
					       <div class="style_tag">
						       <hr>
						       	#아파트&nbsp;&nbsp; #24평 &nbsp;&nbsp;#신혼부부
					       </div>   <!-- style_tag -->           
					    </article><!-- content -->
					</div><!-- class="col-md-4 col-sm-4" --> 
        		</div>
        		
        		
        		<div class="row">
          		<!-- https://ohou.se/projects/3041/detail?affect_type=ProjectSelfIndex&affect_id=28 -->                                 
					<div class="col-md-4 col-sm-4">
					    <article class="content">
					      <a href="#" >
					            <div class=content_img>
					              <img src="../picture/인기게시물/인기게시물4.jpg" alt="4" class="img-rounded img-responsive">
					            </div><!-- content_img -->
					            <div class="text">
					            	 24년 된 18평 빌라, 천장을 뜯어봤어요!
					            </div><!-- text -->  
					      </a>
					              
				          <div class="content_writer">
				                회마야     
				          </div><!-- content_writer -->
				       
				       	<div class="style_tag">
						       <hr>
						       	#빌라&연립&nbsp;&nbsp; #18평 &nbsp;&nbsp; # 신혼부부
					    </div><!-- style_tag -->              
					    </article><!-- content -->
					</div><!-- class="col-md-4 col-sm-4" --> 

	
			<!--https://ohou.se/projects/45255/detail?affect_type=ProjectSelfIndex&affect_id=19 -->
					
					<div class="col-md-4 col-sm-4">
					    <article class="content">
					      <a href="#" >
					            <div class=content_img>
					              <img src="../picture/컨텐츠/컨텐츠5.jpg" alt="5" class="img-rounded img-responsive">
					            </div><!-- content_img -->
					            <div class="text">
					            	 제가 있는 이곳이 천국이네요
					            </div><!-- text -->  
					      </a>
					              
				          <div class="content_writer">
				                haeleezip      
				          </div><!-- content_writer -->
				       
				       	<div class="style_tag">
						       <hr>
						       	#아파트&nbsp;&nbsp; # 홈스타일링 &nbsp;&nbsp;# 부모님과함께사는집
					    </div><!-- style_tag -->              
					    </article><!-- content -->
					</div><!-- class="col-md-4 col-sm-4" --> 

					
		<!-- https://ohou.se/projects/45173/detail?affect_type=ProjectSelfIndex&affect_id=25 -->
					<div class="col-md-4 col-sm-4">
					    <article class="content">
					      <a href="#" >
					            <div class=content_img>
					              <img src="../picture/컨텐츠/컨텐츠6.jpg" alt="6" class="img-rounded img-responsive">
					            </div><!-- content_img -->
					            <div class="text">
					            	 워라벨 찾기 스튜디오 겸	 생활 공간
					            </div><!-- text -->  
					      </a>
					              
				          <div class="content_writer">
				                그그_J      
				          </div><!-- content_writer -->
				       
				       	<div class="style_tag">
						       <hr>
						       	#아파트&nbsp;&nbsp; # 46평&nbsp;&nbsp; # 기타
					    </div><!-- style_tag -->              
					    </article><!-- content -->
					</div><!-- class="col-md-4 col-sm-4" --> 
				</div>

				<div class="row">
				
				<!--https://ohou.se/projects/43029/detail?affect_type=ProjectSelfIndex&affect_id=2  -->
					<div class="col-md-4 col-sm-4">
					    <article class="content">
					      <a href="#" >
					            <div class=content_img>
					              <img src="../picture/컨텐츠/컨텐츠7.jpg" alt="7" class="img-rounded img-responsive">
					            </div><!-- content_img -->
					            <div class="text">
					            	 오래되고 낡은 연립주택의 변신, 분수를 모르는 집
					            </div><!-- text -->  
					      </a>
					              
				          <div class="content_writer">
				                Boonsoo_zero      
				          </div><!-- content_writer -->
				       
				       	<div class="style_tag">
						       <hr>
						       	#빌라&연립 # 28평 # 기타
					    </div><!-- style_tag -->              
					    </article><!-- content -->
					</div><!-- class="col-md-4 col-sm-4" --> 


				<!-- https://ohou.se/projects/44354/detail?affect_type=ProjectSelfIndex&affect_id=11 -->
					<div class="col-md-4 col-sm-4">
					    <article class="content">
					      <a href="#" >
					            <div class=content_img>
					              <img src="../picture/컨텐츠/컨텐츠8.jpg" alt="8" class="img-rounded img-responsive">
					            </div><!-- content_img -->
					            <div class="text">
					            	 집이란, 매일 보게 될 풍경을 선택하는 일
					            </div><!-- text -->  
					      </a>
					              
				          <div class="content_writer">
				                peche_peche777      
				          </div><!-- content_writer -->
				       
				       	<div class="style_tag">
						       <hr>
						       	#원룸&오피스텔 # 18평 # 싱글라이프
					    </div><!-- style_tag -->              
					    </article><!-- content -->
					</div><!-- class="col-md-4 col-sm-4" --> 


				<!-- https://ohou.se/projects/44044/detail?affect_type=ProjectSelfIndex&affect_id=99 -->
					<div class="col-md-4 col-sm-4">
					    <article class="content">
					      <a href="#" >
					            <div class=content_img>
					              <img src="../picture/컨텐츠/컨텐츠9.jpg" alt="9" class="img-rounded img-responsive">
					            </div><!-- content_img -->
					            <div class="text">
					            	 자취만 13년! 디자이너가 꾸민 6평 나만의 세상
					            </div><!-- text -->  
					      </a>
					              
				          <div class="content_writer">
				               slow_luu      
				          </div><!-- content_writer -->
				       
				       	<div class="style_tag">
						       <hr>
						       	#원룸&오피스텔 # 6평 # 싱글라이프
					    </div><!-- style_tag -->              
					    </article><!-- content -->
					</div><!-- class="col-md-4 col-sm-4" --> 
				</div>
			</nav>

				
	
	
<%@include file ="footer.jsp" %>