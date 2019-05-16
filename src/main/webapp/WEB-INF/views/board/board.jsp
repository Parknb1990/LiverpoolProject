<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>메인 페이지</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="/assets/css/bootstrap/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="/assets/css/bootstrap/bootstrap-theme.min.css">

        <!-- Custom css -->
        <link rel="stylesheet" href="/assets/css/style.css">
        
        <!-- Font Awesome -->
        <link rel="stylesheet" href="/assets/css/font-awesome.min.css">
        
        <link rel="stylesheet" href="/assets/css/ionicons.min.css">
        
        <!-- Flexslider -->
        <link rel="stylesheet" href="/assets/css/flexslider.css">
        
        <!-- Owl -->
        <link rel="stylesheet" href="/assets/css/owl.carousel.css">
        
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="/assets/css/magnific-popup.css">
		
		<!-- custom.css -->
		<link rel="stylesheet" href="/assets/css/custom.css">
		
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        
    </head>
    <body>
      
        <!--  Loader  -->
        <div id="myloader">
            <div class="loader">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!--  END Loader  -->
        

        <!--  Main Wrap  -->
        <div id="main-wrap">
        <jsp:include page="../header.jsp"></jsp:include>
        <!--      END Header & Menu  -->

            <!--  Page Content  -->
            <div id="page-content">
                <!--  HomePage header  -->
                <div class="container">
                   <div class="middle-text">
                       <div class="col-md-12 padding-leftright-null">
                           <div id="home-header">
                               <div class="text" style="padding-top: 80px">
                                   <h1 class="margin-bottom-small"><span class="grey-dark">리버풀 게시판</span><br></h1>
                                   &nbsp;&nbsp;&nbsp;
                                   <section id="projects" data-isotope="load-simple" class="page padding-top-null padding-onlybottom-lg">
                                   	<div class="row no-margin text-left">
                                    	<div class="col-sm-12 padding-leftright-null">
                                   			<div class="filter-wrap left">
                                       			<ul class="col-md-12 filters uppercase padding-leftright-null">
                                       				<li data-filter=".01" class="is-checked"><a href="board">리버풀</a></li>
                                           			<li data-filter=".02"><a href="foot">풋살</a></li>
		                                           	<li data-filter=".03"><a href="freeboard">자유</a></li>
		                                           	<li data-filter=".04"><a href="humor">유머</a></li>
		                                           	<li data-filter=".05"><a href="game">게임</a></li>
		                                           	<li data-filter=".06"><a href="animal">동물</a></li>
		                                           	<li data-filter=".07"><a href="food">음식</a></li>
                                       			</ul>
                                   			</div>
                                   		</div>
                                   </div>
                                     <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
		                    			<thead>
		                    				<tr>
		                    					<th style="text-align: center;">작성자</th>
		                    					<th style="text-align: center;">제목</th>
		                    					<th style="text-align: center;">작성일</th>
		                    					<th style="text-align: center;">조회수</th>
		                    				</tr>
		                    			</thead>
		                    			<tbody>
		                    				<c:forEach var="list" items="${list }">
				                    				<tr>
				                    					<td>${list.userNickName}</td>	
				                    					<td><a href="${path}/boardview?boardNum=${list.boardNum}">${list.boardTitle}</a></td>
				                    					<td>${list.boardDate }</td>
				                    					<td>${list.viewCnt}</td>
				                    				</tr>
		                    				</c:forEach>
		                    			</tbody>
		                    		</table>
		                    		 <a href="write" class="btn btn-primary pull-right">글쓰기</a>
                                  </section>
                                  
                               </div>
                           </div>
                       </div>
                   </div>
                </div>           
        </div>
        </div>
        <!--  Main Wrap  -->
       <jsp:include page="../footer.jsp"></jsp:include>

      
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="/assets/js/jquery.min.js"></script>
        <!-- All js library -->
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="/assets/js/bootstrap/bootstrap.min.js"></script>
        <script src="/assets/js/jquery.flexslider-min.js"></script>
        <script src="/assets/js/owl.carousel.min.js"></script>
        <script src="/assets/js/isotope.min.js"></script>
        <script src="/assets/js/jquery.magnific-popup.min.js"></script>
        <script src="/assets/js/jquery.scrollTo.min.js"></script>
        <script src="/assets/js/smooth.scroll.min.js"></script>
        <script src="/assets/js/jquery.appear.js"></script>
        <script src="/assets/js/jquery.countTo.js"></script>
        <script src="/assets/js/jquery.scrolly.js"></script>
        <script src="/assets/js/plugins-scroll.js"></script>
        <script src="/assets/js/imagesloaded.min.js"></script>
        <script src="/assets/js/pace.min.js"></script>
        <script src="/assets/js/main.js"></script>
    </body>
</html>