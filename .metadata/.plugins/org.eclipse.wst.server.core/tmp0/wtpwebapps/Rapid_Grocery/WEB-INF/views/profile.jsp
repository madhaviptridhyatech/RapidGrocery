 <%@include file="sidebar.jsp"%>
<%@include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script 
    src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>





<%
	//clear catch_ of browser
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setDateHeader("Expires", 0); // Proxies.
	response.setHeader("Clear-Site-Data", "cache");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="assets/images/favicon.svg"
	type="image/x-icon" />
<title>Rapid Grocery</title>

<!-- ========== All CSS files linkup ========= -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/lineicons.css" />
<link rel="stylesheet" href="assets/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="assets/css/fullcalendar.css" />
<link rel="stylesheet" href="assets/css/fullcalendar.css" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/toggle.css" />

</head>
<body>
	<section class="signin-section">
		<div class="container-fluid">
			<div class="row g-0 auth-row">
				<div class="col-lg-6">
					<div class="auth-cover-wrapper bg-primary-100">
						<div class="auth-cover">
							<div class="title text-center">
								<h1 class="text-primary mb-10">
									<c:if test="${userTypeId1 eq 1}">
									Admin's Profile
								</c:if>
									<c:if test="${userTypeId1 eq 2}">
									General Manager's Profile
								</c:if>
									<c:if test="${userTypeId1 eq 4}">
									Delivery boy's Profile
								</c:if>
								</h1>
								<p class="text-medium">
									View Your profile <br class="d-sm-block" /> Check Updates
								</p>
							</div>
							<div class="cover-image">
								<img src="assets/images/auth/signin-image.svg" alt="" />
							</div>
							<div class="shape-image">
								<img src="assets/images/auth/shape.svg" alt="" />
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
				<div class="col-lg-6">
					<div class="signup-wrapper">
						<div class="form-wrapper">
							<h6 class="mb-15">Profile</h6>
							<p class="text-sm mb-25">Start creating the best possible
								user experience for you customers.</p>
							<div class="row">
								<form:form action="updateProfile" method="post"
									modelAttribute="User" id="form">
									<!-- end col -->
									<form:hidden path="userMasterId" value="${User.userMasterId}" />
									<div class="col-12">
										<div class="input-style-1">
											<label>First Name</label>
											<form:input path="userMasterFirstName"
												value="${User.userMasterFirstName}" type="text"
												class="form-control" placeholder="Your First Name"
												required="required" />
										</div>
									</div>
									<!-- end col -->
									<div class="col-12">
										<div class="input-style-1">
											<label>Last Name</label>
											<form:input path="userMasterLastName"
												value="${User.userMasterLastName}" type="text"
												class="form-control" placeholder="Your Last Name"
												required="required" />
										</div>
									</div>
									<!-- end col -->
									<div class="col-12">
										<div class="input-style-1">
											<label>Email</label>
											<form:input path="userEmailId" value="${User.userEmailId}"
												type="email" class="form-control" readonly="true" />
										</div>
									</div>
									<!-- end col -->
									<div class="col-12">
										<div class="input-style-1">
											<label>Address</label>
											<form:textarea path="userAddress" value="${User.userAddress}"
												class="form-control" rows="3" id="message"
												placeholder="Enter Your Address" />
										</div>
									</div>
									<!-- end col -->
									<div class="col-12">
										<div class="input-style-1">
											<label>Phone No</label>
											<form:input path="userContact" value="${User.userContact}"
												type="number" class="form-control"
												placeholder="Your Phone No" required="required"  maxlength="10"/>
                                               
                                               
										</div>
									</div>
									<!-- end col -->
									<input type="submit"
										class="main-btn primary-btn rounded-md btn-hover"
										value="Update Profile">
								</form:form>
							</div><br>	
								<p class="text-sm mb-25">*Relogin If Changes Not appear</p>
						</div>
					</div>
					<!-- end row -->

				</div>
			</div>
		</div>
	</section>
	
<script>
	$(document).ready(function() {

		jQuery('#form').validate({
			errorClass : 'errors',
			/* errorElement : "div", */

			rules : {
				userMasterLastName : {
					required : true,
				}, 
				userMasterLastName : {
					required : true,
				}, 
				userEmailId : {
					required : true,
					email : true,
				}, 
				userAddress : { 
					required : true,

				},
				userContact : { 
					required : true,
				},
			},
			messages : {

			},

			errorPlacement : function(error, element) {
				/* error.css('color','red','<br/>'); */
				error.insertAfter(element);
				/* element.css('background', 'lightred'); */
				error.css('color', 'red', '<br/>');
				error.css('div');
			}
		});

	});
</script>		
	
	
	
	

	<%@include file="footer.jsp"%>