<!DOCTYPE html>
<html lang="zxx">
<%@ include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>
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
                                <li ><a href="${pageContext.request.contextPath}">Homepage</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/categories/1">Categories <span class="arrow_carrot-down"></span></a>
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

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${pageContext.request.contextPath}"><i class="fa fa-home"></i> Home</a>
                        <a href="${pageContext.request.contextPath}/categories/1">Categories</a>
                        <span>${categories.type_name}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" data-setbg="${infoAnime.film_img }">
                            <div class="comment"><i class="fa fa-comments"></i> 11</div>
                            <div class="view"><i class="fa fa-eye"></i>${infoAnime.flim_views }</div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>${infoAnime.flim_name }</h3>
                                <span>${infoAnime.film_name_real} : ${infoAnime.film_tacgia}</span>
                            </div>
                            <div class="anime__details__rating">
                                <div class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                </div>
                                <span>1.029 Votes</span>
                            </div>
                            <p>${infoAnime.film_mota }</p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>Type:</span> TV Series</li>
                                            <li><span>Studios:</span> Lerche</li>
                                            <li><span>Date aired:</span>${infoAnime.film_date_aired }</li>
                                            <li><span>Status:</span>${infoAnime.film_trangthai }</li>
                                            <li><span>Genre:</span>${categories.type_name}</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>Scores:</span> 7.31 / 1,515</li>
                                            <li><span>Rating:</span> 8.5 / 161 times</li>
                                            <li><span>Duration:</span> ${infoAnime.film_duration } min/ep</li>
                                            <li><span>Quality:</span>${infoAnime.film_quality }</li>
                                            <li><span>Views:</span>${infoAnime.flim_views }</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn">
                                <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> Follow</a>
                                <a href="${pageContext.request.contextPath}/${categories.type_id}/watch/${infoAnime.film_id}/${episode_first_film_id.episode_id}#player" class="watch-btn"><span>Watch Now</span> <i
                                    class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <div class="anime__details__review" id="reviewsFilm">
                            <div class="section-title">
                                <h5>Reviews</h5>
                            </div>
                       
                            <c:if test="${comments !=null }">                          
                            		<c:forEach var="item" items="${comments}">
                            		 <div class="anime__review__item">
			                                <div class="anime__review__item__pic">
			                                 	<img src="<c:url value="/resources/img/avatar/"/>${item.url_hinhanh}" alt="loi">
			                                </div>
			                                <div class="anime__review__item__text">
			                                    <h6>${item.first_name } <span>1 Hour ago</span></h6>
			                                    <p>${item.comment_content }</p>
			                                </div>
                            			</div>
                            		</c:forEach>
                            </c:if>
                          
                        
                        
                        </div>
                        
                        <div class="anime__details__form">
                            <div class="section-title">
                                <h5>Your Comment</h5>
                            </div>
                            <form:form modelAttribute="commentModel" id="formcomment">
                            	<form:hidden path="commet_film" value="${infoAnime.film_id}"/>
                                <form:textarea placeholder="Your Comment" name="comment_content" id="comment_content"  path="comment_content"></form:textarea>
                                <button type="submit"  ><i class="fa fa-location-arrow"></i> Review</button>
                            </form:form>
                        </div>
                    </div>
                    
                    
                    
                    <div class="col-lg-4 col-md-4">
                        <div class="anime__details__sidebar">
                            <div class="section-title">
                                <h5>you might like...</h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="<c:url value="/resources/img/sidebar/tv-1.jpg"/>">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Boruto: Naruto next generations</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="<c:url value="/resources/img/sidebar/tv-2.jpg"/>">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="<c:url value="/resources/img/sidebar/tv-3.jpg"/>">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                            </div>
                            <div class="product__sidebar__view__item set-bg" data-setbg="<c:url value="/resources/img/sidebar/tv-4.jpg"/>">
                                <div class="ep">18 / ?</div>
                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                            </div>
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
                            <a href="${pageContext.request.contextPath}"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="footer__nav">
                            <ul>
                                <li class="active"><a href="./index.html">Homepage</a></li>
                                <li><a href="./categories.html">Categories</a></li>
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

        <!-- Js Plugins -->

		<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
		<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
		<script src="<c:url value="/resources/js/player.js" />"></script>
		<script src="<c:url value="/resources/js/jquery.nice-select.min.js" />"></script>
		<script src="<c:url value="/resources/js/mixitup.min.js" />"></script>
		<script src="<c:url value="/resources/js/jquery.slicknav.js" />"></script>
		<script src="<c:url value="/resources/js/jowl.carousel.min.js" />"></script>
		<script src="<c:url value="/resources/js/main.js" />"></script>
		 <script src="<c:url value="/resources/admin/js/bootstrap.bundle.min.js"/>"></script>
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