<%@include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<style>
.forms-control {
	border: none;
}

.forms-control label {
	color: #7a5059;
	display: block;
	font-size: 1.5rem;
	margin-bottom: 0.5rem;
}

.forms-control input {
	 border: 1px solid #dcb5a0;
	border-radius: 0.4rem;
	display: block;
	font-size: 1.4rem;
	padding: 1rem;
	width: 100%;
	transition: border-color 0.5s; 
}

.forms-control input:focus {
	outline: none;
	border-color: #7a5059 !important;
}

.forms-control.success input {
	border-color: #7aa55b !important;
}

.forms-control.error input {
	border-color: #f44336 !important;
}

.forms-control small {
	color: #f44336 !important;
	position: absolute;
	bottom: 2;
	left: 2;
	visibility: hidden;
}

.forms-control.error small {
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

.forms-control select {
	/* border: 1px solid #dcb5a0;
	border-radius: 0.4rem;
	display: block;
	font-size: 2rem;
	padding: 1rem;
	width: 100%;
	transition: border-color 0.5s; */
}

.forms-control textarea {
	 border: 1px solid #dcb5a0;
	border-radius: 0.4rem;
	display: block;
	font-size: 1.4rem;
	padding: 1rem;
	width: 100%;
	transition: border-color 0.5s; 
}
</style>



<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js" defer></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script 
    src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>




<!-- Breadcrumb Start -->
<div class="container-fluid">
	<div class="row px-xl-5">
		<div class="col-12">
			<nav class="breadcrumb bg-light mb-30">
				<a class="breadcrumb-item text-dark" href="/">Home</a> <span
					class="breadcrumb-item active">Register</span>
			</nav>
		</div>
	</div>
</div>
<!-- Breadcrumb End -->

<!-- Login Start -->
<div class="container-fluid">
	<h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4">
		<span class="bg-secondary pr-3">Sign Up</span>
	</h2>
	 <div class="form-group">
	 	<div style=" margin:0 left; " class="row px-xl-5">
		<div class="col-5 mb-8 offset-md-4">
			<div class="contact-form bg-light p-30">
			
				<div id="success"></div>
				
				<form:form action="adduser" method="POST" modelAttribute="User"
					name="sentMessage" id="form" novalidate="novalidate">
					<form:hidden path="userMasterId" value="${user.userMasterId}" />
					<div class="control-group forms-control">
						<form:label path="userMasterFirstName">Enter Fname Name</form:label>
						<form:input path="userMasterFirstName" id="usermasterfirstname" name="fname"
							value="${user.userMasterFirstName}" type="text"
							class="form-control" placeholder="Your First Name"
							required="required" onkeypress="return onlyAlphabets(event,this);" />
						<p class="help-block text-danger"></p>
						
						<script language="Javascript" type="text/javascript">

										        function onlyAlphabets(e, t) {
										            try {
										                if (window.event) {
										                    var charCode = window.event.keyCode;
										                }
										                else if (e) {
										                    var charCode = e.which;
										                }
										                else { return true; }
										                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
										                    return true;
										                else
										                    return false;
										            }
										            catch (err) {
										                alert(err.Description);
										            }
										        }
										
						  </script>
								
					</div>
					<div class="control-group forms-control">
						<form:label path="userMasterLastName">Enter Last Name</form:label>
						<form:input path="userMasterLastName" id="usermasterlastname"
							value="${user.userMasterLastName}" type="text" 
							class="form-control" placeholder="Your Last Name"
							required="required" onkeypress="return onlyAlphabets(event,this);"/>
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group forms-control">
						<form:label path="userEmailId">Enter Email Id</form:label>
						<form:input path="userEmailId" value="${user.userEmailId}" 
							type="email" id="useremailid" class="form-control" placeholder="Your Email"
							required="required" />
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group forms-control">
						<form:label path="userDOB">Enter Date Of Birth</form:label>
						<form:input path="userDOB" value="${user.userDOB}" type="date" id="userdob"
							class="form-control" placeholder="Your DOB" required="required" />
						<p class="help-block text-danger"></p>
						
						<script language="javascript">
							var today = new Date();
							var dd = String(today.getDate()).padStart(2, '0');
							var mm = String(today.getMonth() + 1).padStart(2, '0');
							var yyyy = today.getFullYear();
	
							today = yyyy + '-' + mm + '-' + dd;
							$('#userdob').attr('max', today);
						</script>
						
						
						
					</div>
					<div class="control-group forms-control">
						<form:label path="userContact">Enter Contact</form:label>
						<form:input path="userContact" value="${user.userContact}" id="usercontact"
							type="number" class="phone"  placeholder="Your Phone No"
							required="required" maxlength="10"/>
						<p class="help-block text-danger"></p>
						
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
					<div class="control-group forms-control">
						<form:label path="userAddress">Enter Address</form:label>
						<form:textarea path="userAddress" class="form-control" rows="2" id="useraddress"
						 placeholder="Enter Your Address" onkeypress="return onlyAlphabets(event,this);"/>
						<p class="help-block text-danger"></p>
					</div>

					<div class="control-group forms-control">
						<form:label path="userPassword">Enter Password</form:label>
						<form:input path="userPassword" value="${user.userPassword}"
							type="password" class="form-control" id="userpassword"
							placeholder="Enter Password" required="required" />
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group forms-control">
						<label>Confirm Password</label> <input type="password"
							class="form-control" id="userpasswordid"
							placeholder="Enter Confirm Password" required="required" />
						<p class="help-block text-danger"></p>
					</div>
					
					<script type="text/javascript">
					    $(function () {
					        $("#btnSubmit").click(function () {
					            var password = $("#userpassword").val();
					            var confirmPassword = $("#userpasswordid").val();
					            if (password != confirmPassword) {
					                alert("Passwords do not match.");
					                return false;
					            }
					            return true;
					        });
					    });
					</script>
					
					
					
					<div>
						<input type="submit" id="btnSubmit" class="btn btn-primary py-2 px-4"
							value="Register" /> 
						<input type="reset"	class="btn btn-primary py-2 px-4" value="Reset" />
					</div>
					<br>
					<div class="control-group">
						<a href="/login">Already Have Account?</a>
					</div>
				</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
</div></div></div>
<!--  End -->


<script>
	$(document).ready(function() {

		jQuery('#form').validate({
			errorClass : 'errors',
			/* errorElement : "div", */

			rules : {
				userMasterFirstName : {
					required : true,
					maxlength : 10,
				}, //   firstname
				userMasterLastName : {
					required : true,
					maxlength : 10,
				}, //   lastname
				userEmailId : {
					required : true,
					email : true,
				}, //   email
				userDOB : { //   password
					required : true,
					minlength : 8,

				},
				userContact : { //   address
					required : true,

				},
				userAddress : {
					required : true,
					minlength : 2
				},
				userPassword : {
					required : true,
					minlength : 8
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




<%@ include file="footer.jsp"%>