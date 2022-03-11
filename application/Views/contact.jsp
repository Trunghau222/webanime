
<!DOCTYPE html>
<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contact | NTH</title>
    <link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT15fB7UPp_UmuQLlmsYnwN8wQ0mQvdFHc84bDLnkzLW9AXyvtfbCUu93m-sNsq1EBSICU&usqp=CAU" type="image/x-icon">
     <link rel="stylesheet" href="<c:url value="/resources/admin/vendors/toastify/toastify.css"/>">
     <link rel="stylesheet" href="<c:url value="/resources/css/contact.css"/>">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="${pageContext.request.contextPath}">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}">Homepage</a></li>
                                <li><a href="${pageContext.request.contextPath}/categories/1">Categories <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
		                                       <c:forEach var="item" items="${types}">
												  <li><a href="${pageContext.request.contextPath}/categories/${item.type_id}">${item.type_name}</a></li>
											</c:forEach>
                                      
                                    </ul>
                                </li>
                                <li><a href="${pageContext.request.contextPath}/contact">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                        <c:choose>
						    <c:when test="${Session_user !=null}">					       
						    	<div class="btn-group mb-1">
									    <div class="dropdown">
									            <button class="btn btn-dark dropdown-toggle" type="button" id="dropdownMenuButton8"
									                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									                ${Session_user.first_name}
									            </button>
									            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton8">
									                <a class="dropdown-item" style="color: black" href="http://localhost:8080/webanime/user/profile">Profile</a>
									                <a class="dropdown-item" style="color: black" href="http://localhost:8080/webanime/user/logout">Log out</a>
									            </div>
									    </div>
								  </div>
						    </c:when>    
						    <c:otherwise>
							    	
						        <a href='http://localhost:8080/webanime/user/login'><span class='icon_profile'></span></a>
						        <br />
						    </c:otherwise>
						</c:choose>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->


<!-- contact Section End -->
<section id="contact">
  
  <h1 class="section-header">Contact</h1>
  
  <div class="contact-wrapper">
  
  <!-- Left contact page --> 
    
    <form action="${pageContext.request.contextPath}/contact" method="post" id="contact-form" class="form-horizontal" role="form">
       
      <div class="form-group">
        <div class="col-sm-12">
          <input type="text" class="form-control" id="name" placeholder="NAME" name="name" value="" required>
        </div>
      </div>

      <div class="form-group">
        <div class="col-sm-12">
          <input type="email" class="form-control" id="email" placeholder="EMAIL" name="email" value="" required>
        </div>
      </div>

      <textarea class="form-control" rows="10" placeholder="MESSAGE" name="messenger" required></textarea>
      
      <button class="btn btn-primary send-button" id="submit" type="submit" value="SEND">
        <div class="alt-send-button">
          <i class="fa fa-paper-plane"></i><span class="send-text">SEND</span>
        </div>
      
      </button>
      
    </form>
    
  <!-- Left contact page --> 
    
      <div class="direct-contact-container">

        <ul class="contact-list">
          <li class="list-item"><i class="fa fa-map-marker fa-2x"><span class="contact-text place">City, State</span></i></li>
          
          <li class="list-item"><i class="fa fa-phone fa-2x"><span class="contact-text phone"><a href="tel:1-212-555-5555" title="Give me a call">(212) 555-2368</a></span></i></li>
          
          <li class="list-item"><i class="fa fa-envelope fa-2x"><span class="contact-text gmail"><a href="mailto:#" title="Send me an email">TrungHau@gmail.com</a></span></i></li>
          
        </ul>

        <hr>
        <ul class="social-media-list">
          <li><a href="#" target="_blank" class="contact-icon">
            <i class="fa fa-github" aria-hidden="true"></i></a>
          </li>
          <li><a href="#" target="_blank" class="contact-icon">
            <i class="fa fa-codepen" aria-hidden="true"></i></a>
          </li>
          <li><a href="#" target="_blank" class="contact-icon">
            <i class="fa fa-twitter" aria-hidden="true"></i></a>
          </li>
          <li><a href="#" target="_blank" class="contact-icon">
            <i class="fa fa-instagram" aria-hidden="true"></i></a>
          </li>       
        </ul>
        <hr>

        <div class="copyright">&copy; ALL OF THE RIGHTS RESERVED</div>

      </div>
    
  </div>
  
</section>  



<!-- Footer Section Begin -->
<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer__logo">
                    <a href="./index.html"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                        <li class="active"><a href="./index.html">Homepage</a></li>
                        <li><a href="${pageContext.request.contextPath}/categories/1">Categories</a></li>
                        <li><a href="#">Contacts</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://www.facebook.com/Trunghau1505" target="_blank">NTH</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

              </div>
          </div>
      </div>
  </footer>
  <!-- Footer Section End -->
  <!-- Search model Begin -->
  <div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form" action="${pageContext.request.contextPath}/search" method="get">
            <input name="search" type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->




<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/player.js" />"></script>
<script src="<c:url value="/resources/js/jquery.nice-select.min.js" />"></script>
<script src="<c:url value="/resources/js/mixitup.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.slicknav.js" />"></script>
<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
 <script src="<c:url value="/resources/admin/js/bootstrap.bundle.min.js"/>"></script>
  <script src="<c:url value="/resources/admin/vendors/toastify/toastify.js"/>"></script>
	

<c:if test="${msg != 0}">
<script >		
    Toastify({
        text: "Bạn đã gưi thành công.",
        duration: 2000,
        backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",
    }).showToast();
</script>
</c:if>

</body>

</html>