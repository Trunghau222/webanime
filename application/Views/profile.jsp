
<!DOCTYPE html>
<%@ include file="/common/taglib.jsp" %>
<html lang="zxx">
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
    <title>Anime | NTH</title>
    <link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT15fB7UPp_UmuQLlmsYnwN8wQ0mQvdFHc84bDLnkzLW9AXyvtfbCUu93m-sNsq1EBSICU&usqp=CAU" type="image/x-icon">
  
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

<!-- profile Section Begin -->
    <section class="anime-details spad">
        <div class="container bootstrap snippet" style="background: white;border-radius: 10px;">
            <div class="row">
                <div class="col-sm-3">
                    <!--left col-->
                     <form:form modelAttribute="user" action="${pageContext.request.contextPath}/user/xulyprofile" class="form"  method="post" id="registrationForm" enctype="multipart/form-data">                         
                     <form:hidden path="id_user"/>
                     <form:hidden path="id_user1"/>
                     <form:hidden path="url_hinhanh"/>
                    <div class="text-center">
                        <img src="<c:url value="/resources/img/avatar/"/>${user.url_hinhanh}" 
                            class="avatar img-circle img-thumbnail" alt="avatar" >
                        <h6>Upload a different photo...</h6>
                        <input  name="file" type="file"  class="text-center center-block file-upload" style="max-width: 270px;" >
                    </div>
                    <hr>
                    <br>
                    <ul class="list-group">
                        <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span>
                            125</li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13
                        </li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37
                        </li>
                        <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span>
                            78</li>
                    </ul>

                </div>
                <!--/col-3-->
                <div class="col-sm-9">
                    <div class="tab-content">
                        <div class="tab-pane active" id="home">
                         	<br>
	                            <div class="form-group">
	                                    <div class="col-xs-6">
	                                        <label for="email">
	                                            <h4>Email</h4>
	                                        </label>
	                                        <form:input path="tentk" type="email" class="form-control" name="email" id="email"
	                                             title="enter your email." />
	                                    </div>
	                             </div>
                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="first_name">
                                            <h4>First name</h4>
                                        </label>
                                        <form:input path="first_name" type="text" class="form-control" name="first_name" id="first_name"
                                            placeholder="first name" title="enter your first name if any." />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="last_name">
                                            <h4>Last name</h4>
                                        </label>
                                        <form:input path="last_name" type="text" class="form-control" name="last_name" id="last_name"
                                            placeholder="last name"  title="enter your last name if any." />
                                    </div>
                                </div>
									<div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="last_name">
                                            <h4>District</h4>
                                        </label>
                                        <form:input path="diachi" type="text" class="form-control" name="diachi" id="diachi"
                                            placeholder="District"  title="enter your District if any." />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="phone">
                                            <h4>Phone</h4>
                                        </label>
                                        <form:input path="phone" type="text" class="form-control" name="phone" id="phone"
                                            placeholder="enter phone"  title="enter your phone number if any." />
                                    </div>
                                </div>                                                      
                                <div class="form-group">
                                    <div class="col-xs-6">
                                        <label for="password">
                                            <h4>Password</h4>
                                        </label>
                                        <form:input value="${user.matkhau }"  path="matkhau" type="password" class="form-control" name="password" id="password"
                                            placeholder="password" readonly="readonly" title="enter your password." />
                                    </div>
                                </div>
                               
                                <div class="form-group">
                                    <div class="col-xs-12">
                                        <br>
                                        <button class="btn btn-lg btn-success" type="submit"><i
                                                class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                    </div>
                                </div>
                            
                            </form:form>
 						</div>
                            <hr>

                        </div>
            
     
                </div>
                <!--/tab-content-->

            </div>
            <!--/col-9-->
         
        </div>
        <!--/row-->
        </div>
    </section>

    <!-- profile Section End -->    
 

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

<!-- Js Plugins -->

<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/player.js" />"></script>
<script src="<c:url value="/resources/js/jquery.nice-select.min.js" />"></script>
<script src="<c:url value="/resources/js/mixitup.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.slicknav.js" />"></script>
<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
 <script src="<c:url value="/resources/admin/vendors/toastify/toastify.js"/>"></script>
  <script src="<c:url value="/resources/admin/js/bootstrap.bundle.min.js"/>"></script>
<script>
        $(document).ready(function () {
            var readURL = function (input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    var allowed_extensions = new Array("jpg","png","gif");
                    var file_extension = input.files[0].name.split(".").pop().toLowerCase();
                    for(var i = 0; i <= allowed_extensions.length; i++)
                    {
                        if(allowed_extensions[i]==file_extension)
                        {
                        	 reader.onload = function (e) {                            	
                                 $('.avatar').attr('src', e.target.result);
                             }

                             reader.readAsDataURL(input.files[0]);
                             return true;
                        }
                    }
                    alert("Khong dung dinh dang hinh anh");
                   
                }
            }
            $(".file-upload").on('change', function () {
                readURL(this);
            });
            // ajax update user
            
        });
    </script>
</body>

</html>