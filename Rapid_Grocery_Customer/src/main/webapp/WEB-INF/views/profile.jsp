
<%@include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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



<section class="table-components">
	<div class="container-fluid">
		<!-- ========== title-wrapper start ========== -->
		<div class="title-wrapper pt-30">
			<div class="row align-items-center">
				<div class="col-md-6">
					<div class="title mb-30">
						<h2>Update Profile</h2>
					</div>
				</div>
				<!-- end col -->

			</div>
		</div>
	</div>
	<!-- ========== title-wrapper end ========== -->

	<!-- ========== tables-wrapper start ========== -->


<div class="container-fluid">
	<div style="margin: 0 auto;" class="row px-xl-5">
		<div class="col-5 mb-5 offset-md-4">
			<div class="contact-form bg-light p-30">
				<div id="success"></div>


				<form:form action="adduser1" method="POST" modelAttribute="User"
					name="sentMessage" id="contactForm" novalidate="novalidate">
					<form:hidden path="userMasterId" value="${User.userMasterId}" />
					<div class="control-group">
						<form:label path="userMasterFirstName">Enter First Name</form:label>
						<form:input path="userMasterFirstName"
							value="${User.userMasterFirstName}" type="text"
							class="form-control" placeholder="Your First Name"
							required="required" />
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group">
						<form:label path="userMasterLastName">Enter Last Name</form:label>
						<form:input path="userMasterLastName"
							value="${User.userMasterLastName}" type="text"
							class="form-control" placeholder="Your Last Name"
							required="required" />
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group">
					
						<form:label path="userEmailId">Enter Email Id</form:label>
						 <form:input path="userEmailId"  value="${User.userEmailId}" type = "email" class = "form-control"  readonly="true" /><br>
						 <p class="help-block text-danger"></p>
							
	                </div>
					
								<div class="control-group">
						<form:label path="userContact">Enter Contact</form:label>
						<form:input path="userContact" value="${User.userContact}"
							type="number" class="form-control" placeholder="Your Phone No"
							required="required" />
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group">
						<form:label path="userAddress">Enter Address</form:label>
						<form:textarea path="userAddress" value="${User.userAddress}" class="form-control" rows="8"
							id="message" placeholder="Enter Your Address" />
						<p class="help-block text-danger"></p>
					</div>
                       <div>
							<input type="submit" class="btn btn-primary py-2 px-4"	value="save">
						</div><br>
					
						</form:form>
			</div>
		</div>
	<!-- end container -->

<script>
	$(document).ready(function() {

		jQuery('#contactForm').validate({
			errorClass : 'errors',
			/* errorElement : "div", */

			rules : {
				userMasterFirstName : {
					required : true,
					maxlength : 10,
				}, 
				userMasterLastName : {
					required : true,
					maxlength : 10,
				}, 
				userEmailId : {
					required : true,
					email : true,
				}, 
				userContact : { 
					required : true,
					minlength : 8,

				},
				userAddress : { 
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