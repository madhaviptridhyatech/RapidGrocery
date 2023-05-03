<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" type="text/css" href="style.css" media=”screen” />

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


<%-- <%
String error = (String) session.getAttribute("error");
String errorpassword = (String) session.getAttribute("error1");
String active = (String) session.getAttribute("error2");
%> --%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="assets/images/favicon.svg"
	type="image/x-icon" /> 
<title>Rapid Grocery Login</title>

<!-- ========== All CSS files linkup ========= -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/lineicons.css" />
<link rel="stylesheet" href="assets/css/materialdesignicons.min.css" />
<link rel="stylesheet" href="assets/css/fullcalendar.css" />
<link rel="stylesheet" href="assets/css/fullcalendar.css" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/toggle.css" />

<style>
</style>
</head>
<body>

	
	<%-- <%
	if (active != null) {
		out.println("<div class=\"alert alert-danger\" role=\"alert\">" + active + "</div>");
		session.removeAttribute("error2");
		session.invalidate();

	}
	%> --%>

	<section class="signin-section">

		<div class="container-fluid">

			<!-- ========== title-wrapper end ========== -->

			<div class="row g-0 auth-row">
			 
	
				<div class="col-lg-6">
					<div class="auth-cover-wrapper bg-primary-100">
						<div class="auth-cover">
							<div class="title text-center">
								<h1 class="text-primary mb-10">Welcome Back</h1>
								<p class="text-medium">Sign in to your Existing account to
									continue</p>
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
					<div class="signin-wrapper">
						<div class="form-wrapper">
							<h6 class="mb-15">Sign In Form</h6>
							<p class="text-sm mb-25">Start creating the best possible
								user experience for you customers.</p>
							<form:form action="/checklogin" method="POST" class="contactForm"
								modelAttribute="User" name="sentMessage" id="contactForm"
								novalidate="novalidate">
								<div class="row">
									<div class="col-12">
										<div class="input-style-1">
											<form:label path="userEmailId">Enter Email Id</form:label>
											<form:input path="userEmailId" id="email" type="email"
												placeholder="Enter Your Email" required="required" />
										<%-- 	<%
											if (error != null) {
												out.println("<small style=\"color:red;\">" + error + "</small>");
												session.removeAttribute("error");
												session.invalidate();

											}
											%> --%>
										</div>
									</div>
									<!-- end col -->
									<div class="col-12">
										<div class="input-style-1 ">
											<form:label path="userPassword">Enter Password</form:label>
											<form:input path="userPassword" type="password"
												class="form-control" id="pass" placeholder="Enter Password"
												required="required" />
											<%-- <%
											if (errorpassword != null) {
												out.println("<small style=\"color:red;\">" + errorpassword + "</small>");
												session.removeAttribute("error1");
												session.invalidate();
											}
											%> --%>
										</div>
									</div>

									<div class="col-xxl-6 col-lg-12 col-md-6">
										<div
											class=" text-start text-md-end text-lg-start text-xxl-end mb-30 ">
										</div>
									</div>
									<!-- end col -->
									<div class="col-12">
										<div
											class=" button-group d-flex justify-content-center flex-wrap">
											<input type="submit"
												class=" main-btn primary-btn btn-hover w-100  text-center"
												id="sendLoginButton" value="Login" />
										</div>

									</div>
								</div>
								<!-- end row -->
							</form:form>
						</div>
					</div>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
	</section>
	
<script>
	$(document).ready(function() {

		jQuery('#contactForm').validate({
			errorClass : 'errors',
			/* errorElement : "div", */

			rules : {
				userEmailId : {
					required : true,
					email : true,
				}, 
				userPassword : {
					required : true,
					minlength : 8,
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
	
</body>
</html>