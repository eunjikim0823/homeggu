<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 스프링 액션태그 합치기 전 원본 -->
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  	
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
    <link href="../css/Contents.css" rel="stylesheet">
     <link href="../css/Footer.css" rel="stylesheet">

	<!-- 글쓰기 양식 관련 스크립트/링크 -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
	
<title>컨텐츠</title>
  
  </head>

  	 <body>
  	  	<!-- 헤더영역------------------------------------------------- -->
    	<nav class="header">
	    	<div class="container">
				<ul class="nav nav-tabs col-md-8 col-sm-8">
					<li class="icon"><a href="index.jsp"><img src="../picture/home.png" class="img-rounded img-responsive" width="50" height="50"></a></li>
					<li class="contents"><h2><a href="Contents_Board.html">홈꾸집들이 컨텐츠</a></h2></li>
					<li class="free_board"><h2><a href="Board/freeBoard.html">커뮤니티</a></h2></li>
					<li class="store"><h2><a href="shopping/index2.html">스토어</a></h2></li>
			   	</ul>	
			   		 <!--검색창-->
  
			 	<div class="col-md-4 col-sm-4">
       				<table class="top"width="130" height="40">
            			<tr>	
            			<td><a href="login.jsp" class="text-danger">로그인</a></td>
            			 <td><a href="join.jsp" class="text-danger">회원가입</a></td>
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




	<!-- 글쓰기  -->
	<div class="contents_write col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
		
		<form action="Contents_Write.do" method="post" enctype="multipart/form-data">
					 
			<div class="form-group">
			    <label for="write"><h2>작성자</h2></label>
			    <input type="text" class="form-control">
			    <label for="title"><h2>제목</h2></label>
			    <input type="text" class="form-control" placeholder="제목을 입력해주세요">
		  	</div><!-- 제목 그룹 -->
		  	
		  	<!-- 거주상황 표기 -->
		  	<div class="livingtype">
			  	<select name="property" class="">
			  		<option selected value hidden class="">주거형태</option>
			  		<option value="1" class="">아파트</option>
			  		<option value="2" class="">빌라&연립</option>
			  		<option value="3" class="">오피스텔</option>
			  		<option value="4" class="">주택</option>
			  	</select>
			  	
			  	<select name="property" class="">
			  		<option selected value hidden class="">평수</option>
			  		<option value="1" class="">10평 이하</option>
			  		<option value="2" class="">10평</option>
			  		<option value="3" class="">20평</option>
			  		<option value="4" class="">30평</option>
			  	</select>
			  	
			  	<select name="property" class="">
			  		<option selected value hidden class="">거주형태</option>
			  		<option value="1" class="">싱글라이프</option>
			  		<option value="2" class="">신혼부부</option>
			  		<option value="3" class="">아이가 있는 집</option>
			  		<option value="4" class="">부모님과 함께 사는 집</option>
			  	</select>
		  	</div>
		  

		  	
		  	
		  	<div class="form-group">
		  		<label for="content"><h1>내용</h1></label>
		  		<textarea class="form-control summernote" rows="10" id="content" placeholder="홈꾸와 멋진 집을 공유해주세요">
		  		</textarea>
		  	</div><!-- 내용 그룹 -->
		  	비밀번호 :<input type = password name = pw size=10 maxlength=10><p>
		  	<input type="button" class="btn btn-warning btn-lg" value="대표사진 선택"> 	
		  	<input type="button" class="btn btn-warning btn-lg" onclick="delbtn();" value="사진 삭제"> 	
			<input type="button" class="btn btn-danger btn-lg" value="글쓰기 완료">  
			<input type="button" class="btn btn-danger btn-lg" onclick="javascript:location.href='Contents_Board.do'" value="글목록">  
		</form>	    	
    </div><!--contents_write  -->
    
	
	

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
	                     <li>공휴일 및 토요일 일요일<p>
	                     		[휴무]</li>
	                </ul>
		 		</div>	<!-- col-md-3 -->
	 		</div><!-- footer_container -->
	 	</div> <!-- footer -->
	
	<!-- 글쓰기 양식 폼 관련 스크립트  -->	
 	<script>
      $('.summernote').summernote({
        tabsize: 2,
        height: 400
      });
    </script>	
	
	
	</style>	
</body>
</html>