<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | NTH</title>
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
                        <a href="<?=  BASEURL;  ?>">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="<?=  BASEURL;  ?>">Homepage</a></li>
                                <li><a href="<?=  BASEURL;  ?>/categories/1">Categories <span
                                            class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">

                                        <?php foreach ($data['type_all'] as $key => $value) 
                                            {
                                         ?>
                                        <li><a href="<?=  BASEURL;  ?>/categories/<?=  $value["type_id"]; ?>"><?= $value['type_name'] ?></a>
                                        </li>
                                        <?php } ?>
                                    </ul>
                                </li>
                                <li><a href="<?=  BASEURL;  ?>/blog.html">Our Blog</a></li>
                                <li><a href="<?=  BASEURL;  ?>/contact">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                        <!-- <c:choose>
                            <c:when test="${Session_user !=null}">
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
                            <c:otherwise>

                                <a href='<?=  BASEURL;  ?>/user/login'><span class='icon_profile'></span></a>
                                <br />
                            </c:otherwise>
                        </c:choose> -->
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="hero__slider owl-carousel">
                <?php foreach ($data['film_top'] as $key => $value) 
                {                  
                 ?>          
                    <div class="hero__items set-bg" data-setbg="<?= $value['film_img']; ?>">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="hero__text">
                                    <div class="label"><?= $value['type_name'] ?></div>
                                    <h2><?= $value['film_name_real'] ?></h2>
                                    <p>After 30 days of travel across the world...</p>
                                    <a href="<?=  BASEURL;  ?>/<?= $value['film_type']; ?>/watch/<?= $value['film_id']; ?>/1#player"><span>Watch
                                            Now</span> <i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
            <?php } ?>   
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="trending__product">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="section-title">
                                    <h4>Recently Added Shows</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="btn__all">
                                    <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <?php 
                                foreach ($data['trending_now'] as $key => $value) 
                                {                                  
                            ?>                           
                                <div class="col-lg-4 col-md-6 col-sm-6" >
		                                <div class=" product__item">
                                    <div class="product__item__pic set-bg" data-setbg="<?= $value['film_img'] ?>">
                                        <div class="ep"><?= $value['film_current_episode'] ?>/<?= $value['film_end_episode'] ?></div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"><?= $value["film_views"] ?></i></div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a
                                                href="<?=  BASEURL;  ?>/thong-tin-phim/${item.film_id}"><?= $value['film_name_real'] ?></a>
                                        </h5>
                                    </div>
                                </div>
                        </div>
                        <?php }?>

                    </div>
                </div>

                <div class="live__product">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8">
                            <div class="section-title">
                                <h4>Action</h4>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4">
                            <div class="btn__all">
                                <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <?php 
                            foreach ($data['action'] as $key => $value) 
                            {                                                           
                        ?>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="<?= $value['film_img']?>">
                                        <div class="ep"><?= $value['film_current_episode']?>/ <?= $value['film_end_episode']?></div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"><?= $value['film_views']?></i></div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a
                                                href="<?=  BASEURL;  ?>/thong-tin-phim/<?= $value['film_id']?>"><?= $value['film_name_real']?></a>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                    <?php }?>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-8">
                <div class="product__sidebar">
                    <div class="product__sidebar__view">
                        <div class="section-title">
                            <h5>Top Views</h5>
                        </div>
                        <ul class="filter__controls">
                            <li class="active" data-filter=".day">Day</li>
                            <li data-filter=".week">Week</li>
                            <li data-filter=".month">Month</li>
                        </ul>
                        <div class="filter__gallery">
                            <!-- flim day -->
                            <c:forEach var="item" items="${day_film}">
                                <div class="product__sidebar__view__item set-bg mix day "
                                    data-setbg="${item.film_img }">
                                    <div class="ep">${item.film_current_episode } / ${item.film_end_episode }</div>
                                    <div class="view"><i class="fa fa-eye"></i> ${item.flim_views }</div>
                                    <h5><a href="#">${item.film_name_real }</a></h5>
                                </div>
                            </c:forEach>
                            <!-- flim week -->
                            <c:forEach var="item" items="${week_film}">
                                <div class="product__sidebar__view__item set-bg mix week"
                                    data-setbg="${item.film_img }">
                                    <div class="ep">${item.film_current_episode } / ${item.film_end_episode }</div>
                                    <div class="view"><i class="fa fa-eye"></i> ${item.flim_views }</div>
                                    <h5><a href="#">${item.film_name_real }</a></h5>
                                </div>
                            </c:forEach>
                            <!-- flim year -->
                            <c:forEach var="item" items="${month_film}">
                                <div class="product__sidebar__view__item set-bg mix month"
                                    data-setbg="${item.film_img }">
                                    <div class="ep">${item.film_current_episode } / ${item.film_end_episode }</div>
                                    <div class="view"><i class="fa fa-eye"></i> ${item.flim_views }</div>
                                    <h5><a href="#">${item.film_name_real }</a></h5>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="product__sidebar__comment">
                        <div class="section-title">
                            <h5>New Comment</h5>
                        </div>
                        <c:forEach var="item" items="${newComment}">
                            <div class="product__sidebar__comment__item">
                                <div class="product__sidebar__comment__item__pic">
                                    <img src="${item.film_img }" alt="loi">
                                </div>
                                <div class="product__sidebar__comment__item__text">
                                    <ul>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">${item.film_name_real }</a></h5>
                                    <span><i class="fa fa-eye"></i>${item.flim_views } Viewes</span>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!-- Product Section End -->

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
                            <li><a href="<?=  BASEURL;  ?>/categories/1">Categories</a></li>
                            <li><a href="./blog.html">Our Blog</a></li>
                            <li><a href="<?=  BASEURL;  ?>/contact">Contacts</a></li>
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
    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form" action="<?=  BASEURL;  ?>/search" method="get">
                <input name="search" type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- Js Plugins -->




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



    <!-- <c:if test="${msg == 3}">
			<script >		
			    Toastify({
			        text: "Bạn đã đăng xuất thành công.",
			        duration: 2000,
			        backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",
			    }).showToast();
			</script>
	</c:if>
<script type="text/javascript">
function a() {
	//alert("a"); -->
    <!-- }

    </script> -->
</body>

</html>