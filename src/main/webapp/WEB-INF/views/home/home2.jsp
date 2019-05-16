<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>홈 스케줄</title>

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

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
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
                <!--  HomePage header  -->
                <div class="container">
                   <div class="row no-margin">
                       <div class="col-md-12 padding-leftright-null">
                           <div id="home-header">
                               <div class="text" style="padding-bottom: 50px; padding-top:80px">
                                  <h1 class="margin-bottom-small">Home<span class="color">.</span></h1>
                               </div>
                           </div>
                       </div>
                   </div>
                </div>
                
                <!--  Start HomePage main  -->
                <div id="home-wrap" class="content-section">
                    <div class="container">
                        <!--  Portfolio  -->
                        <section id="projects" data-isotope="load-simple" class="page padding-top-null padding-onlybottom-lg">
                            <!--  Filters  -->
                           <div class="row no-margin text-left">
                                <div class="col-sm-12 padding-leftright-null">
                                    <div class="filter-wrap left">
                                        <ul class="col-md-12 filters uppercase padding-leftright-null">
                                        	<li data-filter="*" class=is-checked>ALL</li>
                                            <li data-filter=".year2018">2018</li>
                                            <li data-filter=".mon08">August</li>
                                            <li data-filter=".mon09">September</li>
                                            <li data-filter=".mon10">October</li>
                                            <li data-filter=".mon11">November</li>
                                            <li data-filter=".mon12">December</li>
                                            <li data-filter=".year2019">2019</li>
                                            <li data-filter=".mon01">January</li>
                                            <li data-filter=".mon02">February</li>
                                            <li data-filter=".mon03">March</li>
                                            <li data-filter=".mon04">April</li>
                                            <li data-filter=".mon05">May</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!--  END Filters  -->
                           
                            <%-- <div class="projects-items equal four-columns" align="center">
                        	<c:forEach items="${list }" var="list">
                                <div class="single-item one-item year${list.homeYear } mon${list.homeMonth }">
                                    <div class="item">
                                        <div class="content">
                                        	<img src=${list.teamImg }>
                                        	<br/>
                                      		<h3>${fn:toUpperCase(list.teamName)}</h3>.
                                      		<h3>${list.homeDate}</h3>
                                            <p></p>
                                        </div>
                                    </div>
                                </div>
                             </c:forEach> --%>
                             
                             <div class="projects-items equal four-columns" align="center">
                        		<c:forEach items="${list }" var="list">
                                <div class="single-item one-item year${list.homeYear } mon${list.homeMonth}">
                                    <div class="item">
                                        <div class="content">
                                        	<img src=${list.teamImg }>
                                        	<br/>
                                      		<h3>${fn:toUpperCase(list.teamName)}</h3>
                                      		<h3>${list.homeDate}</h3>
                                            <p></p>
                                        </div>
                                    </div>
                                </div>
                             </c:forEach>
                                
                              <!--   <div class="single-item one-item year1 September">
                                    <div class="item">
                                        <img src="/assets/img/Pl/che.jpg" alt="">
                                        <div class="content">
                                            <h3>Chelsea</h3>
                                            <p>12 September 2018</p>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="single-item one-item year2 January">
                                    <div class="item">
                                        <img src="/assets/img/Pl/liv.jpg" alt="">
                                        <div class="content">
                                            <h3>Liverpool</h3>
                                            <p>12 January 2019</p>
                                        </div>
                                    </div>
                                </div> -->

                            </div>
                        </section>
                        <!-- END Portfolio -->                    
                    </div>
                </div>
            </div>
            <!--  END Page Content -->
        </div>
        <!--  Main Wrap  -->
        
		<jsp:include page="../footer.jsp"></jsp:include>
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="/assets/js/jquery.min.js"></script>
        <!-- All js library -->
        <script src="/assets/js/bootstrap/bootstrap.min.js"></script>
        <script src="/assets/js/jquery.flexslider-min.js"></script>
        <script src="/assets/js/owl.carousel.min.js"></script>
        <script src="/assets/js/isotope.min.js"></script>
        <script src="/assets/js/jquery.magnific-popup.min.js"></script>
      <!--   <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=false"></script> -->
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