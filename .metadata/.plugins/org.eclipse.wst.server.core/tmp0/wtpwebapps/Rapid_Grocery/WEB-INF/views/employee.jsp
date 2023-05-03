 <%@include file="sidebar.jsp"%>
<%@include file="header.jsp"%>
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


<style>
:root { -
	-off-white: #f2f4ef;
	-white: #fff;
	-primary-color: #e68c74;
	-secondary-color: #7a5059;
	-light-accent-color: #dcb5a0;
	-dark-accent-color: #ed7b6d;
	-success-color: #7aa55b;
	-error-color: #f44336;
}

.form-control {
	border: none;
}

.form-control label {
	color: #7a5059;
	display: block;
	font-size: 1.5rem;
	margin-bottom: 0.5rem;
}

.form-control input {
	border: 1px solid #dcb5a0;
	border-radius: 0.4rem;
	display: block;
	font-size: 1.4rem;
	padding: 1rem;
	width: 100%;
	transition: border-color 0.5s;
}

.form-control textarea {
	border: 1px solid #dcb5a0;
	border-radius: 0.4rem;
	display: block;
	font-size: 1.4rem;
	padding: 1rem;
	width: 100%;
	transition: border-color 0.5s;
}

.form-control input:focus {
	outline: none;
	border-color: #7a5059 !important;
}

.form-control textarea {
	outline: none;
	border-color: #7a5059 !important;
}
.form-control.success input {
	border-color: #7aa55b !important;
}

.form-control.error input {
	border-color: #f44336 !important;
}

.form-control.success textarea {
	border-color: #7aa55b !important;
}

.form-control.error textarea {
	border-color: #f44336 !important;
}

.form-control small {
	color: #f44336 !important;
	position: absolute;
	bottom: 2;
	left: 2;
	visibility: hidden;
}

.form-control.error small {
	visibility: visible;
}

.form button {
	cursor: pointer;
	background-color: #e68c74;
	border: 1px solid #e68c74;
	color: var(- -white);
	border-radius: 0.4rem;
	padding: 1rem 2rem;
	display: block;
	font-size: 1.6rem;
	margin-top: 2rem;
	width: 100%;
}

.form-control select {
	border: 1px solid #dcb5a0;
	border-radius: 0.4rem;
	display: block;
	font-size: 1.4rem;
	padding: 1rem;
	width: 100%;
	transition: border-color 0.5s;
}
</style>
<section class="tab-components">
	<div class="container-fluid">
		<!-- ========== title-wrapper start ========== -->
		<div class="title-wrapper pt-30">
			<div class="row align-items-center">
				<div class="col-md-6">
					<div class="title mb-30">
						<h2>Add Employee</h2>
					</div>
				</div>
				<!-- end col -->
				<div class="col-md-6">
					<div class="breadcrumb-wrapper mb-30">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#0">Dashboard</a></li>
								<li class="breadcrumb-item"><a href="#0">Manage
										Employees</a></li>
								<li class="breadcrumb-item active" aria-current="page">
									Employee Form</li>
							</ol>
						</nav>
					</div>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- ========== title-wrapper end ========== -->

		<!-- ========== form-elements-wrapper start ========== -->
		<div class="form-elements-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<!-- input style start  java.lang.IllegalStateException: Neither BindingResult nor plain target object for bean name 'SubProduc' available as request attribute -->


					<form:form action="addEmployee" method="POST" id="form"
						modelAttribute="Employee">
						<div class="card-style">

							<div class="input-style-1 col-lg-6 form-control">
								<form:hidden path="userMasterId"
									value="${employee.userMasterId}" />
								<form:label path="userMasterFirstName">Enter FirstName</form:label>
								<form:input path="userMasterFirstName" id="usermasterfirstname"
									value="${employee.userMasterFirstName}"  onkeypress="return (event.charCode > 64 && 
event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"/>
									<small style="color:red;">Username must be at least 3 characters</small>
					
							</div>
							<div class="input-style-1 col-lg-6 form-control">
								<form:label path="userMasterLastName">Enter LastName</form:label>
								<form:input path="userMasterLastName" id="usermasterlastname"
									value="${employee.userMasterLastName}"  onkeypress="return (event.charCode > 64 && 
event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"/>
									<small style="color:red;">Username must be at least 3 characters</small>
					
							</div>
							<div class="input-style-1 col-lg-6 form-control">
								<form:label path="userEmailId">Enter EmailId</form:label>
								<form:input path="userEmailId" id="useremailid"
									value="${employee.userEmailId}" />
									<small style="color:red;">Username must be at least 3 characters</small>
					
							</div>
							<div class="input-style-1 col-lg-6 form-control">
								<form:label path="userAddress">Enter Address</form:label>
								<form:textarea path="userAddress" id="useraddress"
									value="${employee.userAddress}"  />
									<small style="color:red;">Username must be at least 3 characters</small>
					
							</div>
							<div class="input-style-1 col-lg-6 form-control">
								<form:label path="userContact">Enter Phone Number</form:label>
								<form:input path="userContact" id="usercontact" class="phone" 
									value="${employee.userContact}" maxlength="10"/>
									<!-- <small style="color:red;">Username must be at least 3 characters</small> -->
					                 
					                 <script type="text/javascript">
										$('.phone').keypress(function(e) {
											var arr = [];
											var kk = e.which;
					
											for (i = 48; i < 58; i++)
												arr.push(i);
					
											if (!(arr.indexOf(kk) >= 0))
												e.preventDefault();
										});
									</script>
							</div>
							<div class="input-style-1 col-lg-6 form-control">
								<form:label path="userDOB">Enter BirthDate</form:label>
								<form:input path="userDOB" id="userdob" type="date" value="${employee.userDOB}" />
								<small style="color:red;">Username must be at least 3 characters</small>
					
					            <script language="javascript">
									var today = new Date();
									var dd = String(today.getDate()).padStart(2, '0');
									var mm = String(today.getMonth() + 1).padStart(2, '0');
									var yyyy = today.getFullYear();
			
									today = yyyy + '-' + mm + '-' + dd;
									$('#userdob').attr('max', today);
								</script>
							</div>
							<div class="input-style-1 col-lg-6 form-control">
								<form:label path="userPassword">Enter Password</form:label>
								<form:password path="userPassword" id="userpassword"
									value="${employee.userPassword}" />
									<small style="color:red;">Username must be at least 3 characters</small>
					
							</div>
							
							<div class="input-style-1 col-lg-6 form-control">
								<form:label path="userSalary">Enter Salary</form:label>
								<form:input path="userSalary" id="usersalary" class="salary"
									value="${employee.userSalary}" maxlength="10"/>
									
									<script type="text/javascript">
										$('.salary').keypress(function(e) {
											var arr = [];
											var kk = e.which;
					
											for (i = 48; i < 58; i++)
												arr.push(i);
					
											if (!(arr.indexOf(kk) >= 0))
												e.preventDefault();
										});
									</script>
					
							</div>
							<div class="input-style-1 col-lg-6 form-control">
								<form:errors path="userPassword" cssClass="error" />
								<br>
								<form:label path="userTId">Select User Type</form:label>
								<form:select path="userTId" value="${employee.userTId}">
								    <form:option value="">-----select-----</form:option>
									<form:option value="2" label="Stock Manager" />
									<form:option value="4" label="DeliveryBoy" />
									<%-- 					        <form:option value="5" label="Customer"/>    --%>
								</form:select>
							</div>

							<input type="submit"
								class="main-btn primary-btn rounded-md btn-hover"
								value="Add Employee">

						</div>

					</form:form>



					<!-- end card -->
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- ========== form-elements-wrapper end ========== -->
	</div>
	<!-- end container -->
</section>



<script>
	$(document).ready(function() {

		jQuery('#form').validate({
			errorClass : 'errors',
			/* errorElement : "div", */

			rules : {
				userMasterFirstName : {
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
				userDOB : {
					required : true,
				},
				userPassword : {
					required : true,
					minlength : 8
					
				},
				userSalary : {
					required : true
				},
				userTId : {
					required : true
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
