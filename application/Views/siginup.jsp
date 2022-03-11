<!DOCTYPE html>
<html lang="zxx">
<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
    <meta charset="UTF-8">
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Register</title>
 <link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT15fB7UPp_UmuQLlmsYnwN8wQ0mQvdFHc84bDLnkzLW9AXyvtfbCUu93m-sNsq1EBSICU&usqp=CAU" type="image/x-icon">
 <link rel="stylesheet" href="<c:url value="/resources/admin/vendors/toastify/toastify.css"/>">
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
                        	${(Session_user !=null) ?"<a href='http://localhost:8080/webanime/#'><span class='icon_profile'>1</span></a>" : "<a href='http://localhost:8080/webanime/user/login'><span class='icon_profile'></span></a>"}
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>Sign Up</h2>
                        <p>Welcome to the official Anime.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Signup Section Begin -->
    <section class="signup spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Sign Up</h3>
                        <form:form modelAttribute="user" action="#">
                            <div class="input__item">
                                <form:input path="tentk"  type="email" placeholder="Email address" />
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <form:input path="first_name" type="text" placeholder="Your Name" />
                                <span class="icon_profile"></span>
                            </div>
                            <div class="input__item">
                                <form:input path="matkhau" type="password" placeholder="Password" />
                                <span class="icon_lock"></span>
                            </div>
                            <button type="submit" class="site-btn">Login Now</button>
                        </form:form>
                        <h5>Already have an account? <a href="#">Log In!</a></h5>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__social__links">
                        <h3>Login With:</h3>
                        <ul>
                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a>
                            </li>
                            <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Signup Section End -->

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
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/player.js" />"></script>
<script src="<c:url value="/resources/js/jquery.nice-select.min.js" />"></script>
<script src="<c:url value="/resources/js/mixitup.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.slicknav.js" />"></script>
<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
 <script src="<c:url value="/resources/admin/vendors/toastify/toastify.js"/>"></script>
<c:if test="${msg == 0}">
			<script >		
			    Toastify({
			        text: "Tài khoản bị trùng",
			        duration: 2000,
			        backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",
			    }).showToast();
			</script>
	</c:if>
</body>

</html>