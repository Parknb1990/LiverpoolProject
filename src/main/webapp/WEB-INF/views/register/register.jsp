<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>회원가입 페이지</title>
		
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
        
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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
            <div id="page-content" style="height: 850px;">
                
                <!--  HomePage header  -->
                <div class="container">
                   <div class="row no-margin">
                       <div class="col-md-12 padding-leftright-null">
                           <div id="home-header">
                           
                               <div class="text" style="padding-top: 80px">
                               		<h3>회원가입</h3><br/><br/> 
                                 	
                                 	<form id="frm">
                               			
                               			<div class="input-group">
                               				<input type="text" name="userEmail" id="userEmail" class="form-control check_email" placeholder="이메일" style="width: 260px;'">&nbsp;
                               				<button type="button" id="emailcheck" class="btn btn-default">중복확인</button>

                               			</div>
                               			<br/>
                               			<div class="form-group">
                               				<input type="password" name="userPassword" id="userPassword" class="form-control" placeholder="비밀번호" style="width: 350px;">
                               			</div>
                               			<div>
                               				<input type="password" name="userPassword1" id="userPassword1" class="form-control" placeholder="비밀번호 확인"  style="width: 350px;">
                               				<br/>
                               				<!-- <button type="button" class="btn btn-primary" onclick="checkPassword()">비밀번호 확인</button> -->
                               			</div>
                           
                               			<!-- 비밀번호 확인 -->

                               			<div class="input-group">
                               				<input type="text" name="userNickName" id="userNickName" class="form-control" placeholder="닉네임" style="width: 260px;">&nbsp;
                               				<button type="button" id="checknick" class="btn btn-default">중복확인</button>
                               			</div>
                               			<br/>
                               			<div class="form-group">
                               				<input type="text" name="userName" id="userName" class="form-control" placeholder="이름" style="width: 350px;">
                               			</div>
                               			<h4>주소</h4><br/>
                               			<div class="input-group">
                               				<input type="text" name="postCode" id="postCode" class="form-control"  style="width: 220px;" placeholder="우편번호">&nbsp;&nbsp;
                               				<button type="button" class="btn btn-default" onclick="execPostcode()">우편번호 찾기</button>
                               			</div>
                               			<br/>
                               			<div class="form-group">
											<input type="text" name="userAddr1" id="userAddr1" class="form-control" style="width: 350px;" placeholder="주소"><br/>
											<input type="text" name="referAddr" id="referAddr" class="form-control" style="width: 350px;" placeholder="참고항목"><br/>
											<input type="text" name="userAddr2" id="userAddr2" class="form-control" style="width: 350px;" placeholder="상세주소"><br/>
                               			</div>
                               			
                               			<button type="submit" id="login_btn_btn" class="btn btn-primary">회원가입</button>
                               		</form>
                               </div>
                           </div>
                       </div>
                   </div>
                </div>
                </div>
                <!--  END HomePage header  -->
               
       	 </div>
        <!--  Main Wrap  -->
		 <script>
		 function execPostcode(){
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수

		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }

		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                    document.getElementById("referAddr").value = extraAddr;
		                
		                } else {
		                    document.getElementById("referAddr").value = '';
		                }

		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('postCode').value = data.zonecode;
		                document.getElementById("userAddr1").value = addr;
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("userAddr2").focus();
		            }
		        }).open();
		    }
        </script>
        
        <script>
        $(document).ready(function() {
        	var emailDuplicate = false; //이메일 중복확인 버튼 체크
        	var nickNameDuplicate = false; //닉네임 중복확인 버튼 체크
        	
        	//이메일 중복확인
        	$("#emailcheck").on('click', function() {
        		
        		var userEmail = $("#userEmail").val();
        		
        		//이메일 정규식 체크
   				if (!email_check(userEmail)) {
   					alert("이메일 형식이 올바르지 않습니다.");
   					$("#userEmail").focus();
   					return false;
   				}
        		
        		$.ajax({
        			type: 'POST',
        			url: '/emailcheck',
        			data: {
        				"userEmail" : $("#userEmail").val()
        			},
        		
        			//위에 통신이 이루어지면 함수를 실행
        			success : function(data) {
        				
        				if(data.result==="success") {
        					alert("사용가능한 이메일 입니다.");
        					$("#userPassword").focus();
        					emailDuplicate = true;
        					
        				} else if(data.result==="fail") {
        					alert("이미 사용중인 이메일 입니다.");
        					$("#userEmail").focus();
        					emailDuplicate = false;
        				}
        			},
        			
        			error : function(xhr, status, error) {
        				alert("에러발생");
        			}
        		});
        	});
        	
        	
        	//패스워드 확인
      	  	$(function() {
      	  		//blur -> focusout이 되면 발생하는 이벤트
      	  		$("#userPassword1").blur(function() {
      	  			
      	  			if($("#userPassword").val() != $("#userPassword1").val()) {
      	  				if($("#userPassword1").val() != '') {
      	  					alert("비밀번호가 일치하지 않습니다.");
      	  					$("#userPassword1").val('');
      	  					$("#userPassword1").focus();
      	  				}
      	  			}
      	  		});
      	  	});
    
        	//닉네임 중복확인
        	$("#checknick").on('click', function() {
        		
    			var userNickName = $("#userNickName").val();
    			
    			if(!userNickName) {
    				alert("닉네임을 입력해주세요.");
    				return false;
    			}
    			
        		$.ajax({
        			type: 'POST',
        			url: '/nickcheck',
        			data: {
        				"userNickName" : $("#userNickName").val()
        			},
        			
        			success : function(data) {
        				if(data.result==="success") {
        					alert("사용가능한 닉네임 입니다.");
        					$("#userName").focus();
        					nickNameDuplicate = true;
        					
        				} else if(data.result==="fail") {
        					alert("이미 사용중인 닉네임 입니다.");
        					$("#userNickName").focus();
        					nickNameDuplicate = false;
        				}
        			},
        			error : function(xhr, status, error) {
        				alert("에러발생");
        			}
        		});
        	});
        	
        	

        	//데이터 입력 코드
        	//비동기식 체크
			$("#login_btn_btn").click(function(e) {
				e.preventDefault();
				fn_register();
			});
			
			function fn_register() {
				if ($("#userEmail").val().length<1) {
					alert("이메일 주소를 입력해주세요.");
					$("#userEmail").focus();
					return false;
					
				} else if (!emailDuplicate) {
					alert("이메일 중복확인 버튼을 눌러주세요.");
					return false;
					
				} else if ($("#userPassword").val().length<1) {
					alert("비밀번호를 입력해주세요.");
					$("#userPassword").focus();
					return false;
					
				} else if ($("#userPassword1").val().length<1) {
					alert("비밀번호 확인을 입력해주세요.");
					$("#userPassword1").focus();
					return false;
						
				} else if(($("#userPassword").val()) != ($("#userPassword1").val())) {
					alert("비밀번호가 일치하지 않습니다.");
					$("#userPassword").focus();
					return false;
				}

				else if ($("#userNickName").val().length<1) {
					alert("닉네임을 입력해주세요.");
					$("#userNickName").focus();
					return false;
					
				} else if(!nickNameDuplicate) {
					alert("닉네임 중복확인 버튼을 눌러주세요.");
					return false;
				} 
				
				else if($("#userName").val().length<1) {
					alert("이름을 입력해주세요.");
					$("#userName").focus();
					return false;
				
				} else if ($("#postCode").val().length<1) {
					alert("우편번호를 입력해주세요.");
					$("#postCode").focus();
					return false;
					
				} else if($("#userAddr1").val().length<1) {
					alert("주소를 입력해주세요.");
					$("#userAddr1").focus();
					return false;
					
				} else if($("#referAddr").val().length<1) {
					alert("주소를 입력해주세요.");
					$("#referAddr").focus();
					return false;
					
				} else if($("#userAddr2").val().length<1) {
					alert("주소를 입력해주세요.");
					$("#userAddr2").focus();
					return false;
					
				} else {
					$("#frm").attr("action", "/register");
					$("#frm").attr("method", "post");
					$("#frm").submit();
				}
			}
			
			//이메일 정규식 
			function email_check(email) {
				var regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
				return (email != '' && email != 'undefined' && regex.test(email));
			}
			
			$("input[name='userEmail']").blur(function() {
				var email = $(this).val();
				if (email=='' && email=='undefined') return;
				
				if (!email_check(emial)) {
					$(this).focus();
					return false;
				}
			}); 

        });
        
      
        </script>
        
     <!--    <!--  Footer  -->
        <footer>
            <jsp:include page="../footer.jsp"></jsp:include>
        </footer>
        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="/assets/js/jquery.min.js"></script>
        <!-- All js library -->
        <script src="/assets/js/bootstrap/bootstrap.min.js"></script>
        
        <script src="/assets/js/jquery.flexslider-min.js"></script>
        <script src="/assets/js/owl.carousel.min.js"></script>
        <script src="/assets/js/isotope.min.js"></script>
        <script src="/assets/js/jquery.magnific-popup.min.js"></script>
        <!-- <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=false"></script> -->
        <script src="/assets/js/jquery.scrollTo.min.js"></script>
        <script src="/assets/js/smooth.scroll.min.js"></script>
        <script src="/assets/js/jquery.appear.js"></script>
        <script src="/assets/js/jquery.countTo.js"></script>
        <script src="/assets/js/jquery.scrolly.js"></script>
        <script src="/assets/js/plugins-scroll.js"></script>
        <script src="/assets/js/imagesloaded.min.js"></script>
        <script src="/assets/js/pace.min.js"></script>
        <script src="/assets/js/main.js"></script>
        
        <!-- Address API Apply -->
        <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
       
    </body>
</html>




























