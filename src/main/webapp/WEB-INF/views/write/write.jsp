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
                                 <h2 class="margin-bottom-small"><span class="grey-dark">글쓰기</span><br></h2>
                                  &nbsp;&nbsp;&nbsp;
                                  <div class="row padding-sm">
                              					<div class="col-md-12">
                              						<div class="table-responsive">
                              						
                              							<form id="frm">
                              							<table class="tablestripd" style="text-align: center; border: 1px solid #eeeeee">
                              								<tbody>
                              									<tr>
                              										<td>
                              											<select  id="boardSelect" name="boardCategory" class="form-control" style="width: 200px">
                              											<option value=''>카테고리 선택</option>
                              											<option value="1">리버풀</option>
									                        			<option value="2">풋살</option>
									                        			<option value="3">자유</option>
									                        			<option value="4">유머</option>
									                        			<option value="5">게임</option>
									                        			<option value="6">동물</option>
									                        			<option value="7">음식</option>
                              											</select>
                              										</td>
                              									</tr>
                              									<c:if test= "${sessionScope.userInfo ne null }">
                              										<%-- <tr>
                              											<td align="left">
                              												이메일 : ${sessionScope.userInfo.userEmail}
                              											</td>
                              										<tr>
                          												<td align="left">
                          													닉네임 : ${sessionScope.userInfo.userNickName}
                          												</td>
                          											</tr> --%>
                          										</c:if>
                          										
                              									<tr> 
                              										<td>
                              											<input type="hidden" value=" ${sessionScope.userInfo.userNickName}" name="userNickName">
                              											<input type="hidden" value="${sessionScope.userInfo.userEmail}" name="userEmail">
                              											<input type="text" class="form-control" placeholder="제목" name="boardTitle" id="boardTitle" maxlength="50">
                              										</td>
                              									</tr>
                              									
                              									<tr>
                              										<td align="left">
                              											NickName : ${sessionScope.userInfo.userNickName}
                              										</td>
                              									</tr>
                              									
                              									<tr>
                              										<td align="left">
                              											Email : ${sessionScope.userInfo.userEmail}
                              										</td>
                              									</tr>
                              									<tr>
                              										<td>
                              											<textarea class="form-control" placeholder="글내용" name="boardContent" id="boardContent" maxlength="2048" style="height: 350px"></textarea>
                              										</td>
                              									</tr>
                              								</tbody>
                              							</table>
                              							<div class="pull-right">
                              							<input type="reset" class="btn btn-danger" value="작성취소">
                              							<input type="button" class="btn btn-primary" id="btn_ok" value="작성완료">
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
				
				$("#btn_ok").click(function(e) {
					e.preventDefault;
					write_ok();
				});
				
				function write_ok() {
					if ($("#boardSelect").val() == '') {
						alert("카테고리를 선택하세요.");
						$("#boardSelect").focus();
						return false;
						
					} else if($("#boardTitle").val().length<1) {
						alert("제목을 입력하세요.");
						$("#boardTitle").focus();
						return false;
						
					} else if ($("#boardContent").val().length<1) {
						alert("내용을 입력하세요.");
						$("#boardContent").focus();
						return false;
					} else {
						confirm("작성을 완료하시겠습니까?");
						$("#frm").attr("action", "/write");
						$("#frm").attr("method", "post");
						$("#frm").submit();
					}
				}
			});
		
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