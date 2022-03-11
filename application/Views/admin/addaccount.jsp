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
    <title>Form Layout - Mazer Admin Dashboard</title>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link href="<c:url value="/resources/admin/css/bootstrap.css" />" rel="stylesheet">  
	<link rel="stylesheet"  href="<c:url value="/resources/admin/vendors/iconly/bold.css "/>" >		
    <link rel="stylesheet" href="<c:url value="/resources/admin/vendors/perfect-scrollbar/perfect-scrollbar.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/admin/vendors/bootstrap-icons/bootstrap-icons.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/admin/css/app.css"/>">
 	<link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT15fB7UPp_UmuQLlmsYnwN8wQ0mQvdFHc84bDLnkzLW9AXyvtfbCUu93m-sNsq1EBSICU&usqp=CAU" type="image/x-icon">
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
                class="sidebar-item ">
                <a href="${pageContext.request.contextPath}/admin" class='sidebar-link'>
                    <i class="bi bi-grid-fill"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            
            <li
                class="sidebar-item  active">
                <a href="${pageContext.request.contextPath}/admin/account" class='sidebar-link'>
                    <i class="bi bi-stack"></i>
                    <span>Account</span>
                </a>
                
            </li>           
            <li
                class="sidebar-item  has-sub">
                <a href="#" class='sidebar-link'>
                    <i class="bi bi-collection-fill"></i>
                    <span>Video</span>
                </a>
                 <ul class="submenu ">
                    <li class="submenu-item ">
                        <a href="extra-component-avatar.html">Comment</a>
                    </li>
                    <li class="submenu-item ">
                        <a href="extra-component-avatar.html">Anime</a>
                    </li>
                </ul>
            </li>                  
            <li class="sidebar-title">Contact</li>
            <li
                class="sidebar-item">
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
                <h3>Add Account</h3>
               
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/account">Account</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Add Acount</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>


    <!-- Basic Vertical form layout section start -->
    <section id="basic-vertical-layouts">
        <div class="row match-height">
            <div class="col-md-6 col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Fill full the information</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">

                             <form:form modelAttribute="account" action="${pageContext.request.contextPath}/admin/account/add" class="form form-vertical"  method="post" >     
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group has-icon-left">
                                                <label for="first-name-icon">First Name</label>
                                                <div class="position-relative">
                                                    <form:input path="first_name" type="text" class="form-control"
                                                        placeholder="Input First Name" id="first-name-icon" />
                                                    <div class="form-control-icon">
                                                        <i class="bi bi-person"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group has-icon-left">
                                                <label for="first-name-icon">Last Name</label>
                                                <div class="position-relative">
                                                    <form:input path="last_name" type="text" class="form-control"
                                                        placeholder="Input Last Name" id="first-name-icon" />
                                                    <div class="form-control-icon">
                                                        <i class="bi bi-person"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                      
                                        <div class="col-12">
                                            <div class="form-group has-icon-left">
                                                <label for="email-id-icon">Email</label>
                                                <div class="position-relative">
                                                    <form:input path="tentk" type="text" class="form-control" placeholder="Email"
                                                        id="email-id-icon" />
                                                    <div class="form-control-icon">
                                                        <i class="bi bi-envelope"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                   
                                        <div class="col-12">
                                            <div class="form-group has-icon-left">
                                                <label for="password-id-icon">Password</label>
                                                <div class="position-relative">
                                                    <form:input path="matkhau" type="password" class="form-control" placeholder="Password"
                                                        id="password-id-icon" />
                                                    <div class="form-control-icon">
                                                        <i class="bi bi-lock"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-12">
                                            <div class="form-group has-icon-left">
                                                <label for="mobile-id-icon">Phone</label>
                                                <div class="position-relative">
                                                    <form:input path="phone" type="text" class="form-control" placeholder="Phone"
                                                        id="mobile-id-icon" />
                                                    <div class="form-control-icon">
                                                        <i class="bi bi-phone"></i>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                                                             
                                        <div class="col-12 d-flex justify-content-end">
                                            <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                                            <button type="reset"
                                                class="btn btn-light-secondary me-1 mb-1">Reset</button>
                                        </div>
                                    </div>
                                </div>
                             </form:form> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- // Basic Vertical form layout section end -->


            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2022 &copy; NTH</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">NTH</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
  <script src="<c:url value="/resources/admin/vendors/perfect-scrollbar/perfect-scrollbar.min.js"/>"></script>
    <script src="<c:url value="/resources/admin/js/bootstrap.bundle.min.js"/>"></script>
    
    <script src="<c:url value="/resources/admin/js/mazer.js"/>"></script>
</body>

</html>
