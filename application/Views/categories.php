<!DOCTYPE html>
<html lang="zxx">


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
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
                                <li><a href="<?=  BASEURL;  ?>/film/categories/1">Categories <span
                                            class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">

                                        <?php foreach ($data['type_all'] as $key => $value) 
                                            {
                                         ?>
                                        <li><a href="<?=  BASEURL;  ?>/film/categories/<?=  $value["type_id"]; ?>"><?= $value['type_name'] ?></a>
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

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="<?=  BASEURL;  ?>"><i class="fa fa-home"></i> Home</a>
                        <a href="<?=  BASEURL;  ?>/film/categories/1">Categories</a>
                        <span> <?= $data['type_by_id']['type_name'] ?> </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
                                        <h4><?= $data['type_by_id']['type_name'] ?></h4>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="product__page__filter">
                                        <p>Order by:</p>
                                        <select id="sapxep" onchange="sapxep()">
                                            <option value="hello">A-Z</option>
                                            <option value="02">1-10</option>
                                            <option value="">10-50</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        <?php foreach ($data['film_types'] as $key => $value) 
                            {?>
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg" data-setbg="<?= $value['film_img'] ?>">
                                            <div class="ep"><?= $value['film_current_episode'] ?>/<?= $value['film_end_episode'] ?>
                                            </div>
                                            <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                            <div class="view"><i class="fa fa-eye"></i><?= $value['film_views'] ?></div>
                                        </div>
                                        <div class="product__item__text">
                                            <ul>
                                                <li>Active</li>

                                                <!--   <li>Movie</li>-->
                                            </ul>
                                            <h5><a
                                                    href="<?=  BASEURL;  ?>/thong-tin-phim/<?= $value['film_id'] ?>"><?= $value['film_name_real'] ?></a>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                        <?php } ?>
                        </div>
                    </div>
                    <div class="product__pagination">
                        <?php 
                             $url = BASEURL; 
                             $type_id = $data['type_by_id']['type_id'];
                            for ($i=1; $i <= $data['sumTrang_film_type'] ; $i++) 
                            {
                               
                                if($data['page'] == $i) echo "<a href='$url/film/categories/$type_id/?page=$i' class='current-page'>$i</a>";
                                else
                                {
                                    echo "<a href='$url/film/categories/$type_id/?page=$i'>$i</a>";
                                }
                            }
                            if($data['page'] < $data['sumTrang_film_type']) echo "<a href='$url/film/$type_id/categories/2/?page=$i'><i class='fa fa-angle-double-right'></i></a>";
                        ?>
                        
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
                        <?php foreach ($data['day_view'] as $key => $value) 
                            {
                        ?>  
                                <div class="product__sidebar__view__item set-bg mix day "
                                    data-setbg="<?= $value['film_img'] ?>">
                                    <div class="ep"><?= $value['film_current_episode'] ?>/ <?= $value['film_end_episode'] ?></div>
                                    <div class="view"><i class="fa fa-eye"></i><?= $value['film_views'] ?></div>
                                    <h5><a href="#"><?= $value['film_name_real'] ?></a></h5>
                                </div>
                        <?php } ?>
                            <!-- flim week -->
                        <?php foreach ($data['week_view'] as $key => $value) 
                            {
                        ?>  
                                <div class="product__sidebar__view__item set-bg mix week"
                                    data-setbg="<?= $value['film_img'] ?>">
                                    <div class="ep"><?= $value['film_current_episode'] ?>/ <?= $value['film_end_episode'] ?></div>
                                    <div class="view"><i class="fa fa-eye"></i><?= $value['film_views'] ?></div>
                                    <h5><a href="#"><?= $value['film_name_real'] ?></a></h5>
                                </div>
                        <?php } ?>        
                            <!-- flim year -->
                        <?php foreach ($data['month_view'] as $key => $value) 
                            {
                        ?>      
                            <c:forEach var="item" items="${month_film}">
                                <div class="product__sidebar__view__item set-bg mix month"
                                    data-setbg="<?= $value['film_img'] ?>">
                                    <div class="ep"><?= $value['film_current_episode'] ?>/ <?= $value['film_end_episode'] ?></div>
                                    <div class="view"><i class="fa fa-eye"></i><?= $value['film_views'] ?></div>
                                    <h5><a href="#"><?= $value['film_name_real'] ?></a></h5>
                                </div>
                        <?php } ?>                
                        </div>
                    </div>
                        <div class="product__sidebar__comment">
                            <div class="section-title">
                                <h5>New Comment</h5>
                            </div>
                            <?php foreach ($data['newcomment'] as $key => $value) 
                            {
                            ?>
                            <div class="product__sidebar__comment__item">
                                <div class="product__sidebar__comment__item__pic">
                                    <img src="<?= $value['film_img'] ?>" alt="loi">
                                </div>
                                <div class="product__sidebar__comment__item__text">
                                    <ul>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#"><?= $value['film_name_real'] ?></a></h5>
                                    <span><i class="fa fa-eye"></i><?= $value['flim_views'] ?> Views</span>
                                </div>
                            </div>
                        <?php } ?>   
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
                            <li class="active"><a href="<?=  BASEURL;  ?>">Homepage</a></li>
                            <li><a href="<?=  BASEURL;  ?>/categories">Categories</a></li>
                            <li><a href="#">Contacts</a></li>
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
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
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


    <script type="text/javascript">
    function sapxep() {
        var e = document.getElementById("sapxep");
        alert(e.value);

    }
    </script>
</body>

</html>