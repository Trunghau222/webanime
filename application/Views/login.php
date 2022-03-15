
<!DOCTYPE html>
<html lang="zxx">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>
    <link rel="shortcut icon"
        href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT15fB7UPp_UmuQLlmsYnwN8wQ0mQvdFHc84bDLnkzLW9AXyvtfbCUu93m-sNsq1EBSICU&usqp=CAU"
        type="image/x-icon">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">  
    <?php linkCSS("public/assets/css/bootstrap.min.css"); ?>
    <?php linkCSS("public/assets/css/font-awesome.min.css"); ?>
    <?php linkCSS("public/assets/css/elegant-icons.css"); ?>
    <?php linkCSS("public/assets/css/plyr.css"); ?>
    <?php linkCSS("public/assets/css/nice-select.css"); ?>
    <?php linkCSS("public/assets/css/owl.carousel.min.css"); ?>
    <?php linkCSS("public/assets/css/slicknav.min.css"); ?>
    <?php linkCSS("public/assets/css/style.css"); ?>
    <?php linkCSS("public/assets/admin/vendors/toastify/toastify.css"); ?>
  
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
                        <a href="<?=  BASEURL;  ?>index">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="<?=  BASEURL;  ?>index">Homepage</a></li>
                                <li><a href="<?=  BASEURL;  ?>film/categories/1">Categories <span
                                            class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <?php foreach ($data['type_all'] as $key => $value) 
                                            {
                                         ?>
                                        <li><a href="<?=  BASEURL;  ?>film/categories/<?=  $value["type_id"]; ?>"><?= $value['type_name'] ?></a>
                                        </li>
                                        <?php } ?>
                                    </ul>
                                </li>
                                <li><a href="<?=  BASEURL;  ?>/blog">Our Blog</a></li>
                                <li><a href="<?=  BASEURL;  ?>/contact">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                        <c:choose>
                            <!-- <c:when test="${Session_user !=null}">
                                <div class="btn-group mb-1">
                                    <div class="dropdown">
                                        <button class="btn btn-dark dropdown-toggle" type="button"
                                            id="dropdownMenuButton8" data-bs-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                           hau
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton8">
                                            <a class="dropdown-item" style="color: black"
                                                href="<?=  BASEURL;  ?>/user/profile">Profile</a>
                                            <a class="dropdown-item" style="color: black"
                                                href="<?=  BASEURL;  ?>/user/logout">Log out</a>
                                        </div>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise> -->

                                <a href='<?=  BASEURL;  ?>user/login'><span class='icon_profile'></span></a>
                                <!-- <br />
                            </c:otherwise>
                        </c:choose> -->
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
                        <h2>Login</h2>
                        <p>Welcome to the official Anime blog.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Login</h3>
                        <form action="<?=  BASEURL;  ?>user/xulylogin" method="POST" >
                            <div class="input__item">
                                <input type="email" placeholder = "Tên tài khoản" name = "tentk" >
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input  type="password" placeholder="Password" name= "matkhau" >
                                <span class="icon_lock"></span>
                            </div>
                            <button type="submit" name="btn_login" class="site-btn">Login Now</button>
                        </form>
                        <a href="#" class="forget_pass">Forgot Your Password?</a>
                    </div>
                      
                </div>
            
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>Don't Have An Account?</h3>
                        <a href="<?=  BASEURL;  ?>user/siginup" class="primary-btn">Register Now</a>
                    </div>
                </div>
            </div>
            <div class="login__social">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        <div class="login__social__links">
                            <span>or</span>
                            <ul>
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With
                                Facebook</a></li>
                                <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Section End -->
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
                            <li class="active"><a href="<?=  BASEURL;  ?>index">Homepage</a></li>
                            <li><a href="<?=  BASEURL;  ?>film/categories/1">Categories</a></li>
                            <li><a href="./blog.html">Our Blog</a></li>
                            <li><a href="<?=  BASEURL;  ?>contact">Contacts</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>
                        document.write(new Date().getFullYear());
                        </script> All rights reserved | This template is made with <i class="fa fa-heart"
                            aria-hidden="true"></i> by <a href="https://www.facebook.com/Trunghau1505"
                            target="_blank">NTH</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>

                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
    
    <!-- Search model end -->
    <?php linkJS("public/assets/js/jquery-3.3.1.min.js") ?>
    <?php linkJS("public/assets/js/bootstrap.min.js") ?>
    <?php linkJS("public/assets/js/player.js") ?>
    <?php linkJS("public/assets/js/jquery.nice-select.min.js") ?>
    <?php linkJS("public/assets/js/mixitup.min.js") ?>
    <?php linkJS("public/assets/js/jquery.slicknav.js") ?>
    <?php linkJS("public/assets/js/owl.carousel.min.js") ?>
    <?php linkJS("public/assets/js/main.js") ?>

    <?php linkJS("public/assets/admin/js/bootstrap.bundle.min.j") ?>
    <?php linkJS("public/assets/admin/vendors/toastify/toastify.js") ?>
    <!-- Js Plugins -->
<!-- Js Plugins -->

<!-- <c:if test="${msg == 0}">
			<script >		
			    Toastify({
			        text: "Tài khoản mật khẩu không đúng",
			        duration: 2000,
			        backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",
			    }).showToast();
			</script>
	</c:if>
<c:if test="${msg == 1}">
			<script >		
			    Toastify({
			        text: "Bạn đã tạo tài khoản thành công",
			        duration: 2000,
			        backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",
			    }).showToast();
			</script>
	</c:if>
<c:if test="${msg == 3}">
			<script >		
			    Toastify({
			        text: "Account của bạn đã bị ban.",
			        duration: 2000,
			        backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",
			    }).showToast();
			</script>
	</c:if> -->
</body>

</html>