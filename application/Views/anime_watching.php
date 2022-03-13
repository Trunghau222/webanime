
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
                        <a href="<?=  BASEURL;  ?>index"><i class="fa fa-home"></i> Home</a>
                        <a href="<?=  BASEURL;  ?>film/categories/1">Categories</a>
                        <span> <?= $data['type_by_id']['type_name'] ?> </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="anime__video__player">
                        <video id="player" playsinline controls data-poster="<?= BASEURL_CSS ?>/public/assets/videos/anime-watch.jpg">
						    <source src="<?= $data['episode_film'][0]['episode_video'] ?>" type="video/mp4" />
						    	<!-- Captions are optional -->
						    <track kind="captions" label="English captions" src="#" srclang="en" default />
                    </div>              
                    <div class="anime__details__episodes">
                        <div class="section-title">
                            <h5>List Name</h5>
                        </div>
                        <?php 
                            foreach ($data['episode_film_all'] as $key => $value) 
                            { 
                        ?>
                         	<a href="<?= BASEURL ?>watch/film/<?= $value['film_id'] ?>/<?= $value['episode_name'] ?>#player">Ep <?= $value['episode_name'] ?></a>
                       <?php } ?>
   
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <div class="anime__details__review">
                        <div class="section-title">
                            <h5>Reviews</h5>
                        </div>             
                            <?php 
                                foreach ($data['comment_film'] as $key => $value) 
                                {
                            ?>
                                <div class="anime__review__item">
                                    <div class="anime__review__item__pic">
                                        <img src="<?= BASEURL_CSS ?>/public/assets/img/avatar/<?= $value['url_hinhanh'] ?>"
                                            alt="loi">
                                    </div>
                                    <div class="anime__review__item__text">
                                        <h6><?= $value['first_name'] ?> <span> 1 Hour ago</span></h6>
                                        <p><?= $value['comment_content'] ?></p>
                                    </div>
                                </div>
                            <?php } ?>                         
                        </div>
                        
                        <div class="anime__details__form">
                        <div class="section-title">
                            <h5>Your Comment</h5>
                        </div>
                        <form id="formcomment">
                            <input type="hidden" path="commet_film" value="${infoAnime.film_id}">
                            <textarea placeholder="Your Comment" name="comment_content" id="comment_content"
                                path="comment_content"></textarea>
                            <button type="submit"><i class="fa fa-location-arrow"></i> Review</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Anime Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="page-up">
            <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer__logo">
                        <a href="<?=  BASEURL;  ?>index"><img src="img/logo.png" alt=""></a>
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
		 $(document).ready(function()
		{
			 $("#formcomment").submit(function (e) 
				{
				
		            e.preventDefault();
		            var comment_model = $("#formcomment").serialize();					
		            $.ajax({
			             type: "POST",
			             url: "${pageContext.request.contextPath}/comment/",
			             data: comment_model,
			             processData:false,
			             dataType: "json",
			             success: function (response)
			             {

			                $("#comment_content").val("");
			                $("#reviewsFilm").append("<div class='anime__review__item'>"
								                  +"       <div class='anime__review__item__pic'>"
								                  +"          	<img src='<c:url value='/resources/img/avatar/'/>"+ response.url_hinhanh+"' alt='Loi'>"
								                  +"      	</div>"
								                  +"     	<div class='anime__review__item__text'>"
								                  +"               <h6>"+response.first_name+" <span> 20 Hour ago</span></h6>"
								                  +"               <p>"+response.comment_content+"</p>"
								                  +"    	</div>"
								                  +"   	</div>");
			
			             },
			                 error: function(xhr)
			                     {
			                         console.log(xhr.responseText);
			                     },
			         });
			 });
		});	 
		</script>
</body>

</html>