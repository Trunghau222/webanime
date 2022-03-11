<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Account</title>
    <link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT15fB7UPp_UmuQLlmsYnwN8wQ0mQvdFHc84bDLnkzLW9AXyvtfbCUu93m-sNsq1EBSICU&usqp=CAU" type="image/x-icon">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link href="<c:url value="/resources/admin/css/bootstrap.css" />" rel="stylesheet">  
	<link rel="stylesheet"  href="<c:url value="/resources/admin/vendors/iconly/bold.css "/>" >	
	<link rel="stylesheet" href="<c:url value="/resources/admin/vendors/simple-datatables/style.css"/>">	
    <link rel="stylesheet" href="<c:url value="/resources/admin/vendors/perfect-scrollbar/perfect-scrollbar.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/admin/vendors/bootstrap-icons/bootstrap-icons.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/admin/css/app.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/admin/vendors/toastify/toastify.css"/>">
         

</head>

<body>
  <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
    <div class="sidebar-header">
        <div class="d-flex justify-content-center">
            <div class="logo">
              <a href="${pageContext.request.contextPath}/admin"><img style="width: 50px;height: 50px" src="https://image.shutterstock.com/image-vector/h-letter-roof-shape-logo-600w-333501077.jpg" alt="Logo" srcset=""></a>
            </div>
            <div class="toggler">
                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
            </div>
        </div>
    </div>
    <div class="sidebar-menu">
        <ul class="menu">
            <li class="sidebar-title">Menu</li>
            
            <li
                class="sidebar-item  ">
                <a href="${pageContext.request.contextPath}/admin" class='sidebar-link'>
                    <i class="bi bi-grid-fill"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            
            <li
                class="sidebar-item ">
                <a href="${pageContext.request.contextPath}/admin/account" class='sidebar-link'>
                    <i class="bi bi-stack"></i>
                    <span>Account</span>
                </a>
                
            </li>           
            <li
                class="sidebar-item active has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-collection-fill"></i>
                    <span>Video</span>
                </a>
                <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="extra-component-avatar.html">Comment</a>
                    </li>
                    <li class="submenu-item  active">
                        <a href="extra-component-avatar.html">Anime</a>
                    </li>
                </ul>
            </li>                  
            <li class="sidebar-title">Contact</li>
            <li
                class="sidebar-item ">
                <a href="${pageContext.request.contextPath}/admin/feedbackadmin" class='sidebar-link'>
                    <i class="bi bi-hexagon-fill"></i>
                    <span>Feedback message</span>
                </a>
            </li>                                              
        </ul>
    </div>
    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
</div>
        </div>
       
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>
            
<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>${anime.flim_name }</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/anime">Back</a></li>                      
                    </ol>
                </nav>
            </div>
        </div>
    </div>   
</div>     
<section class="section">
        <div class="card">         
            <div class="card-body">
          	 <img src="${anime.film_img }" style="max-width: 153px;" class="rounded mx-auto d-block" alt="...">
            </div>
        </div>
<section id="basic-horizontal-layouts">
    <div class="row match-height">
        <div class="col-md-6 col-12">
            <div class="card">
                <div class="card-content">
                    <div class="card-body">
                        <form class="form form-horizontal">
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>Film Name</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                        <input type="text" id="flim_name" class="form-control" value="${anime.flim_name}" name="flim_name"
                                            placeholder="Flim name">
                                    </div>
                                    <div class="col-md-4">
                                        <label>Film name real</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                        <input type="email" id="film_name_real" class="form-control"
                                            name="film_name_real" placeholder="Film name real" value="${anime.film_name_real}">
                                    </div>
                                    <div class="col-md-4">
                                        <label>status</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                        <input type="number" id="film_trangthai" class="form-control"
                                            name="film_trangthai" placeholder="Status" value="${anime.film_trangthai}">
                                    </div>
                                    <!-- add show type to type id -->
                                    <div class="col-md-4">
                                        <label>type</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                        <input type="text" id="film_type" class="form-control" name="film_type"
                                            placeholder="Type">
                                    </div>
                                    <!-- ----- -->
                                    <div class="col-md-4">
                                        <label>Mota</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                           <textarea rows="5"  class="form-control" cols="" id="film_mota"  name="film_mota">${anime.film_mota}</textarea>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Tac gia</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                        <input type="text" id="film_tacgia" class="form-control" name="film_tacgia"
                                            placeholder="Tac gia" value="${anime.film_tacgia }">
                                    </div>
                                    <div class="col-md-4">
                                        <label>film_date_aired</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                        <input type="text" id="film_date_aired" class="form-control"
                                            name="film_date_aired" placeholder="film_date_aired" value="${anime.film_date_aired}">
                                    </div>
                                    <div class="col-md-4">
                                        <label> film_views</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                        <input type="text" id="film_views" class="form-control" readonly="true" name="film_views"
                                            placeholder="film_views" value="4444">
                                    </div>
                                    <div class="col-md-4">
                                        <label> film_quality</label>
                                    </div>
                                    <div class="col-md-8 form-group">
                                        <input type="number" id="film_quality" class="form-control" name="film_quality"
                                            placeholder="film_quality" value="${anime.film_quality }">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- ---- -->
        <div class="col-md-6 col-12">
            <div class="card">
                <div class="card-content">
                    <div class="card-body">
                        <form class="form form-horizontal">
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>film_duration</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group has-icon-left">
                                            <div class="position-relative">
                                                <input type="text" class="form-control" name="film_duration"
                                                    placeholder="film_duration" id="film_duration" value="${anime.film_duration}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>film_scores</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group has-icon-left">
                                            <div class="position-relative">
                                                <input type="number" class="form-control" id="film_scores"
                                                    name="film_scores" placeholder="film_scores" value="${anime.film_scores }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>flim_assessor</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group has-icon-left">
                                            <div class="position-relative">
                                                <input type="number" class="form-control" id="flim_assessor"
                                                    name="flim_assessor" placeholder="flim_assessor" value="${anime.flim_assessor }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>film_traller</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group has-icon-left">
                                            <div class="position-relative">
                                                <input type="number" class="form-control" placeholder="film_traller"
                                                    name="film_traller" id="film_traller" value="${anime.film_traller }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>film_current_episode</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group has-icon-left">
                                            <div class="position-relative">
                                                <input type="number" class="form-control"
                                                    placeholder="film_current_episode" name="film_current_episode"
                                                    id="film_current_episode" value="${anime.film_current_episode }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>film_end_episode</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group has-icon-left">
                                            <div class="position-relative">
                                                <input type="text" class="form-control" placeholder="film_end_episode"
                                                    name="film_end_episode" id="film_end_episode" value="${anime.film_end_episode }">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>film_showtimes</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group has-icon-left">
                                            <div class="position-relative">
                                                <input type="text" class="form-control" placeholder="film_showtimes"
                                                    name="film_showtimes" id="film_showtimes" value="${anime.film_showtimes }">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class ="container" style="position: absolute;text-align: center;">
	<button type="button" id = "update_anime" class="btn btn-primary">Update</button>
</div>
	<script >
		document.getElementById("update_anime").onclick = function()
		{	
			var data = new FormData(); 
			let id_anime = document.getElementById("id_anime").value();
			data.append("id_anime", id_name);
				$.ajax({
		             type: "PUT",
		             url: "${pageContext.request.contextPath}/admin/anime/save",
		             data: data,
		             processData:false,
		             dataType: "json",
		             success: function (response)
		             {
		             	alert(response);
		
		             },
		                 error: function(xhr)
		                     {
		                         console.log(xhr.responseText);
		                     },
		         });
		 }
	</script>
	
</section>	
            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2021 &copy; Mazer</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">NTH</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
     <script src ="<c:url value="/resources/admin/vendors/perfect-scrollbar/perfect-scrollbar.min.js"/>"></script>
    <script src ="<c:url value="/resources/admin/js/bootstrap.bundle.min.js"/>"></script>
<script src ="<c:url value="/resources/admin/vendors/apexcharts/apexcharts.js"/>"></script>
<script src ="<c:url value="/resources/admin/js/pages/dashboard.js"/>"></script>
   <script src ="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src ="<c:url value="/resources/admin/vendors/simple-datatables/simple-datatables.js" />"></script>
 <script src ="<c:url value="/resources/admin/js/mazer.js"/>"></script>   
 <script src ="<c:url value="/resources/admin/vendors/sweetalert2/sweetalert2.all.min.js"/>"></script>
 <script src ="<c:url value="/resources/admin/vendors/toastify/toastify.js"/>"></script>
 <script src ="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!--  <script src="<c:url value="/resources/js/showAnime.js" />"></script>--> 
	
</html>
