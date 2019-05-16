<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>게시글 작성</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="assets/css/bootstrap/bootstrap-theme.min.css">

        <!-- Custom css -->
        <link rel="stylesheet" href="assets/css/style.css">
        
        <!-- Font Awesome -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        
        <link rel="stylesheet" href="assets/css/ionicons.min.css">
        
        <!-- Flexslider -->
        <link rel="stylesheet" href="assets/css/flexslider.css">
        
        <!-- Owl -->
        <link rel="stylesheet" href="assets/css/owl.carousel.css">
        
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        
        <!-- Modal -->
        <link rel="stylesheet" href="assets/css/modaal.min.css">

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
            <!--  Header & Menu  -->
            <jsp:include page="../header.jsp"></jsp:include>
            <!--  END Header & Menu  -->

            <!--  Page Content  -->
            <div id="page-content">
                 <div class="container">
                   <div class="middle-text">
                       <div class="col-md-12 padding-leftright-null">
                           <div id="home-header">
                               <div class="text">
                                 <h2 class="margin-bottom-small"><span class="grey-dark">글내용</span><br></h2>
                                  &nbsp;&nbsp;&nbsp;
                                  <div class="row padding-sm">
                              					<div class="col-md-12">
                              						<div class="table-responsive">
                              						
                              							<form name="frm" method="POST">
                              							<table class="tablestripd" style="text-align: center; border: 1px solid #eeeeee">
                              								<tbody>

                              									<tr> 
                              										<td align="left">
                              											조회수 : ${dto.viewCnt}
                              										</td>
                              									</tr>
                              									
                              									<tr>
                              										<td align="left">
                              											제목 : ${dto.boardTitle }
                              										</td>
                              									</tr>
                              									
                              									<tr>
                              										<td align="left">
                              											작성자 : ${dto.userNickName }
                              										</td>
                              									</tr>
                              									
                              									<tr>
                              										<td align="left">
                              											날짜 : ${dto.boardDate }
                              										</td>
                              									</tr>
                              									<tr>
                              										
                              										<td align="left">
                              										내용 : 
                              											${dto.boardContent }
                              										</td>
                              									</tr>
                              								</tbody>
                              							</table>
                              							
                              							<div class="pull-right">
                              							<input type="hidden" name="boardNum" value="${dto.boardNum }">
                              							<button type="button" class="btn btn-primary" id="btn_back">뒤로가기</button>
                              							<c:if test= "${sessionScope.userInfo.userEmail eq dto.userEmail }">
                              							<button type="button" class="btn btn-danger" id="btn_delete">삭제하기</button>
                              							</c:if>
                              							</div>
														</form>
														<br/><br/><br/>
														
														
														<!-- 댓글 보기 로직 -->
														<c:forEach items="${dto.replyList }" var="replyVO">
														
															<c:out value="${replyVO.regId }"/> : <c:out value="${replyVO.content }" />
															&nbsp;<c:out value="${replyVO.regDt }"/>&nbsp;
															
															<form action="deleteReply" method="post">
															<div class="pull-right">
																<input type="hidden" name="rId" value="${replyVO.rId}">	
																<input type="hidden" name="boardNum" value="${dto.boardNum }">
																<c:if test="${replyVO.regId eq sessionScope.userInfo.userNickName }">	
																<input type="submit" value="삭제">
															</c:if>
															</div>
															</form>
															<br />
													
														</c:forEach>
														<br/><br/>
														
														<!-- 댓글 작성 폼 -->
														<form action="replyboard" method="post">
														<div style="width: 700px; text-align: left;">
															<c:if test="${sessionScope.userInfo.userEmail != null }">
																<textarea rows="5" cols="80" name="content" placeholder="댓글을 작성하세요." maxlength="2048"></textarea>
																<br/>
																<!-- 답글을 달기 위해 현재 게시글 번호를 넘김 -->
																<input type="hidden" name="regId" value="${sessionScope.userInfo.userNickName}">
																<input type="hidden" name="bId" value="${dto.boardNum }">
																<input type="submit" class="btn btn-primary" value="글쓰기" />
															</c:if>
                              							</div>
                              						</form>
                              				</div>
                              			</div>
                              		</div>
                              </div>
                           </div>
                       </div>
                   </div>
                </div>
                </div>
             
            <!--  END Page Content -->
        </div>
		
		<script>
			$(document).ready(function() {
			
				$("#btn_back").click(function() {
					history.back();
				});
				
				$("#btn_delete").click(function() {
					if(confirm("delete?")) {
						document.frm.action="${path}/delete";
						document.frm.submit();
					}
				});
				
				
				
			})
			
			
		
		</script>
        <!--  Footer  -->
        <footer>
            <jsp:include page="../footer.jsp"></jsp:include>
        </footer>
        <!--  END Footer. Class fixed for fixed footer  -->
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="assets/js/jquery.min.js"></script>
        <!-- All js library -->
        <script src="assets/js/bootstrap/bootstrap.min.js"></script>
        <script src="assets/js/jquery.flexslider-min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/isotope.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=false"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="assets/js/smooth.scroll.min.js"></script>
        <script src="assets/js/jquery.appear.js"></script>
        <script src="assets/js/jquery.countTo.js"></script>
        <script src="assets/js/jquery.scrolly.js"></script>
        <script src="assets/js/plugins-scroll.js"></script>
        <script src="assets/js/imagesloaded.min.js"></script>
        <script src="assets/js/modaal.min.js"></script>
        <script src="assets/js/pace.min.js"></script>
        <script src="assets/js/main.js"></script>
        
    </body>
</html>