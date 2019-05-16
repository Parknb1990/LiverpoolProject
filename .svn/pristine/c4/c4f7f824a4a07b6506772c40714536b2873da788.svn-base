<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	  <!-- Header & Menu  -->
            <header id="header" class="border" style="padding-width: 1390px; padding-height: 50px">
                <div class="container">
                    <nav class="navbar navbar-default">
                        <!--  Header Logo  -->
                   	<a class="navbar-brand" href="main"><img src="/assets/img/Pl/liv.jpg"></a>
                        <!--  END Header Logo  -->
                        <!--  Menu  -->
                        <div id="sidemenu">
                            <div class="menu-holder">
                                <ul>
                                  
                                    
                                    
                                    
                                    <c:choose>
                                    	<c:when test="${sessionScope.userInfo ne null }">
                                    	  	<li class="submenu">
                                        		<h6><a>경기일정</a></h6>
	                                        	<ul class="sub-menu">
	                                            	<li><a href="home">Home</a></li>
	                                            	<li><a href="away">Away</a></li>
	                                        	</ul>
                                    		</li>
                                    		
                                    		<li class="submenu">
                                       			<a href="souvenir">기념품</a>
                                    		</li>
                                    
                                    		<li class="submenu">
                                        		<a href="board">게시판</a>
                                    		</li>
                                    		<li>
                                    			<a href="/logout">로그아웃</a>
                                    		</li>
                                    	</c:when>
                                    	
                                    	<c:otherwise>
                                    		<li>
                                    			<a href="/login">로그인</a>
                                    		</li>
                                    		
                                    		<li>
                                    			<a href="/register">회원가입</a>
                                    	</c:otherwise>
                                    </c:choose>
                                   
                                    <!-- Lang -->
                                    
                                </ul>
                            </div>
                        </div>
                        <!--  END Menu  -->
                        <!--  Button for Responsive Menu  -->
                        <div id="menu-responsive-sidemenu">
                            <div class="menu-button">
                                <span class="bar bar-1"></span>
                                <span class="bar bar-2"></span>
                                <span class="bar bar-3"></span>
                            </div>
                        </div>
                           <!-- <div class="shop-mobile">
                            <ul>
                                <li class="shop">
                                    <a href="javascript:void(0)" class="cart"><i class="icon ion-bag"></i><span class="count">1</span></a>
                                </li>
                            </ul>
                        </div> -->
                        <!--  END Button for Responsive Menu  -->
                    </nav>
                </div>
            </header>
