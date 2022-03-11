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
                <h3>Anime Manager</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/anime/addanime">Add Anime</a></li>                      
                    </ol>
                </nav>
            </div>
        </div>
    </div>   
</div>     
<section class="section">
        <div class="card">         
            <div class="card-body">
                <table class="table table-striped" id="table2">
                    <thead>
                    <tr>                
                     	 <th data-sortable="" style="width: 13.8549%;"><a href="#" class="dataTable-sorter">Image</a></th>
	                        <th data-sortable="" style="width: 44.8356%;"><a href="#" class="dataTable-sorter">Name film</a>
                        </th>
                        <th data-sortable="" style="width: 18.0363%;"><a href="#" class="dataTable-sorter">Views</a>
                        </th>
                        <th data-sortable="" style="width: 16.4354%;"><a href="#" class="dataTable-sorter">Current episode number</a></th>
                        <th data-sortable="" style="width: 11.8463%;"><a href="#" class="dataTable-sorter">Status</a>
                        </th>	
                        <th data-sortable="" style="width: 11.8463%;"><a href="#" class="dataTable-sorter">Pause movie</a>
                        </th>
                    </tr>
                </thead>
                <tbody>
                		<c:forEach var="item" items="${film_all }">
	                	 <tr >
	                        <td  style="cursor: pointer;" >
	                        <a href="${pageContext.request.contextPath}/admin/anime/chitiet/${item.film_id}">
	                        	<img style="width: 80px;height: 72px"  class="rounded mx-auto d-block" src="${item.film_img}" alt="" srcset="">
	                        </td>
	                       <td>${item.film_name_real}</td>
	                       <td>${item.flim_views }</td>
	                       <td>${item.film_current_episode}</td>
	                       <td>${item.film_trangthai}</td>
	                       <td>
	                       		<button id="ban${item.film_id}" onclick="editban(${item.film_id})" type="button" class="badge  bg-warning" data-bs-toggle="tooltip" data-bs-placement="top"  
		                        itle="Click to ban acc">Ban</button>
	                       </td>
	                     </tr>
                	    </c:forEach>       	                                                                                        
                </tbody>
                    
                </table>
            </div>
        </div>

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
    
  							 <!-- modal show anime -->

 <script src="<c:url value="/resources/admin/vendors/perfect-scrollbar/perfect-scrollbar.min.js"/>"></script>
 <script src="<c:url value="/resources/admin/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/resources/admin/vendors/apexcharts/apexcharts.js"/>"></script>
<script src="<c:url value="/resources/admin/js/pages/dashboard.js"/>"></script>
   <script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
<script src="<c:url value="/resources/admin/vendors/simple-datatables/simple-datatables.js" />"></script>
 <script src="<c:url value="/resources/admin/js/mazer.js"/>"></script>   
 <script src="<c:url value="/resources/admin/vendors/sweetalert2/sweetalert2.all.min.js"/>"></script>
 <script src="<c:url value="/resources/admin/vendors/toastify/toastify.js"/>"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    // Simple Datatable
    let table1 = document.querySelector('#table2');
    let dataTable = new simpleDatatables.DataTable(table1);
</script>		

</html>
