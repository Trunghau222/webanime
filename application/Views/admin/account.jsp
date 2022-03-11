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
                class="sidebar-item active">
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
                <h3>Table Account</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/account/addaccount">Add Account</a></li>                      
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
                        <th data-sortable="" style="width: 11.8463%;"><a href="#" class="dataTable-sorter">Name</a></th>
                        <th data-sortable="" style="width: 41.8356%;"><a href="#" class="dataTable-sorter">Email</a>
                        </th>
                        <th data-sortable="" style="width: 18.0363%;"><a href="#" class="dataTable-sorter">Phone</a>
                        </th>
                        <th data-sortable="" style="width: 16.4354%;"><a href="#" class="dataTable-sorter">District</a></th>
                        <th data-sortable="" style="width: 11.8463%;"><a href="#" class="dataTable-sorter">Status</a>
                        </th>
                        <th data-sortable="" style="width: 11.8463%;"><a href="#" class="dataTable-sorter">Ban</a>
                        </th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="item" items="${accounts}">
	                	 <tr id="sid${item.id_user}">
	                        <td onclick="edit(${item.id_user })" style="cursor: pointer;" >${item.first_name }</td>
	                        <td>${item.tentk }</td>
	                        <td>${item.phone }</td>
	                        <td>${item.diachi }</td>
	                        <td>
		                        <c:choose>
								    <c:when test="${item.status ==0 }">
								      <span class="badge bg-danger">Inactive</span>
								    </c:when>    
								    <c:otherwise>
								        <span class="badge bg-success">Active</span>
								    </c:otherwise>
								</c:choose>
	                        </td>
	                        <td>
	                        <c:choose>
								    <c:when test="${item.ban ==0 }">
									     	<button id="ban${item.id_user}" onclick="editban(${item.id_user})" type="button" class="badge  bg-warning" data-bs-toggle="tooltip" data-bs-placement="top"  
		                        			title="Click to ban acc">Ban</button>			                        										               

								    </c:when>    
								    <c:otherwise>
								        	<button id="ban${item.id_user}" onclick="editban_remove(${item.id_user})" type="button" class="badge  bg-danger" data-bs-toggle="tooltip" data-bs-placement="top"  
                        					title="Click to unblock acc">Remove</button>
								    </c:otherwise>
								</c:choose>
	                        	                              
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
<script>
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    });
    
    function  editban(id_user) {
        	Swal.fire({
        		  title: 'Are you sure?',
        		  text: "You won't be able to revert this!",
        		  icon: 'question',
        		  showCancelButton: true,
        		  confirmButtonColor: '#3085d6',
        		  cancelButtonColor: '#d33',
        		  confirmButtonText: 'Yes'
        		}).then((result) => {
        		  if (result.isConfirmed) {   
        			  $.ajax({
        					type : 'GET',
        					url : '${pageContext.request.contextPath}/admin/editban/' + id_user,
        					success : function(result) {
        						var element = document.getElementById("ban"+result);
        						 element.classList.remove("bg-warning");
        						 element.classList.add("bg-danger");
        						 element.innerHTML ="Remove";
        						 element.removeAttribute("onclick");
        						 element.onclick=  function() { editban_remove(result); }
        						Swal.fire(
        				        		      'Ban!',
        				        		      'Your file has been Remove Ban.',
        				        		      'success'
        				        	);
        					},  
 			             	error: function(xhr)
 			                     {
 			                         console.log(xhr.responseText);
 			                     },
 			         });
        		    
        		  }
        		})
	}
    function  editban_remove(id_user) {
    	Swal.fire({
    		  title: 'Are you sure?',
    		  text: "You won't be able to revert this!",
    		  icon: 'question',
    		  showCancelButton: true,
    		  confirmButtonColor: '#3085d6',
    		  cancelButtonColor: '#d33',
    		  confirmButtonText: 'Yes'
    		}).then((result) => {
    		  if (result.isConfirmed) {   
    			  $.ajax({
    					type : 'GET',
    					url : '${pageContext.request.contextPath}/admin/editban/' + id_user,
    					success : function(result) {
    						var element = document.getElementById("ban"+result);
	   						 element.classList.remove("bg-danger");
	   						 element.classList.add("bg-warning");
	   						 element.innerHTML ="Ban";
	   						element.removeAttribute("onclick");
						 element.onclick=  function() { editban_remove(result); }
	   						element.onclick= function() { editban(result); }
   						Swal.fire(
   				        		      'Ban!',
   				        		      'Your file has been Ban.',
   				        		      'success'
   				        	);
    					},  
			             	error: function(xhr)
			                     {
			                         console.log(xhr.responseText);
			                     },
			         });
    		    Swal.fire(
    		      'Ban!',
    		      'Your file has been Ban.',
    		      'success'
    		    )
    		  }
    		})
}

   // show modal edit aacount
    function edit(id)
    {   	
    	$.get("${pageContext.request.contextPath}/user/getbyid?user_id="+id,
    	        function (accounts) {    	         
    	            $("#id").val(accounts.id_user);
    	            $("#tentk").val(accounts.tentk);
    	            $("#first_name").val(accounts.first_name);
    	            $("#last_name").val(accounts.last_name);
    	            $("#matkhau").val(accounts.matkhau);
    	            $("#phone").val(accounts.phone);
    	            $("#diachi").val(accounts.diachi);
    	            $("#file").val(accounts.url_hinhanh);
    	            $('.avatar').attr('src', "<c:url value='/resources/img/avatar/'/>"+accounts.url_hinhanh);
    	            $("#editmodal").modal("toggle");
    	});
	}
   
   
    
</script>
	<c:if test="${msg != 0}">
			<script >		
			    Toastify({
			        text: "You have successfully added an account.",
			        duration: 2000,
			        backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",
			    }).showToast();
			</script>
	</c:if>

</body>
<!-- Modal Edit -->
  <div class="modal fade" id="editmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Chỉnh sửa tài khoản</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form  id="accountFormEdit" enctype="multipart/form-data" >
                <input type="hidden" name="id" id="id"/>
                 <div class="form-group">
                 	<div class="text-center">                       
					  	<img  style="width: 200px;height: 200px" src="https://how-yolo.net/wp-content/uploads/2021/12/15-13.png" class="avatar rounded" alt="avatar">					  				  
					</div>
					 <label for="file">Name url</label>
					 <input type="text" readonly class="form-control" id="file"  >	
                </div>
                <div class="form-group">
                  <label for="tentk">Email</label>
                  <input type="text" name="tentk" readonly class="form-control" id="tentk"  >
                </div>
                <div class="form-group">
                    <label for="first_name">First Name</label>
                    <input type="text" name="first_name" class="form-control" id="first_name" >
                </div>
				<div class="form-group">
                    <label for="last_name">Last Name</label>
                    <input type="text" name="last_name" class="form-control" id="last_name" >
                </div>
                <div class="form-group">
                    <label for="matkhau">Password</label>
                    <input type="password" readonly="readonly" name="matkhau"   class="form-control" id="matkhau"  >
                </div>
                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="text"  name="phone" class="form-control" id="phone" >
                </div>
                 <div class="form-group">
                    <label for="diachi">District</label>
                    <input type="text"  name="diachi" class="form-control" id="diachi" >
                </div>
                  <div class="modal-footer">
				     	<button type="submit" class="btn btn-primary">Save changes</button>
	      		</div>
              </form>
        </div>
      </div>
    </div>
  </div>
  	<!--  upload anh-->
	<script>

     // xuly edit account
        $(("#accountFormEdit")).submit(function (e) {
                e.preventDefault();
                var data = $("#accountFormEdit").serialize();
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/admin/edit",
                    data: data,
                    success: function (response) {
                       console.log(response);
                       if(response)
                    	   {
	                    	   Toastify({
	           			        text: "You have successfully edited.",
	           			        duration: 2000,
	           			        backgroundColor: "linear-gradient(to right, #00b09b, #96c93d)",
	           			    }).showToast();
	                    	   $("#sid"+ response.id_user + ' th:nth-child(0)').text(response.id);
	                           $("#sid"+ response.id_user + ' td:nth-child(1)').text(response.first_name);
	                           $("#sid"+ response.id_user + ' td:nth-child(2)').text(response.tentk);
	                           $("#sid" + response.id_user + ' td:nth-child(3)').text(response.phone);
	                           $("#sid" + response.id_user + ' td:nth-child(4)').text(response.diachi);
	                           $("#editmodal").modal('toggle');
	                           $("#accountFormEdit")[0].reset();
                    	   }  
                    },
                    error: function(xhr)
                    {
                        console.log(xhr.responseText)
                    }
                });
            });
    </script>
	
</html>
