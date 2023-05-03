<%@include file="header.jsp"%>
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
	border: 1px solid #dcb5a0;
	border-radius: 0.4rem;
	display: block;
	font-size: 1.4rem;
	padding: 1rem;
	width: 100%;
	transition: border-color 0.5s;
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


<!-- Breadcrumb Start -->
<div class="container-fluid">
	<div class="row px-xl-5">
		<div class="col-12">
			<nav class="breadcrumb bg-light mb-30">
				<a class="breadcrumb-item text-dark" href="#">Home</a> <span
					class="breadcrumb-item active">Contact</span>
			</nav>
		</div>
	</div>
</div>
<!-- Breadcrumb End -->


<!-- Contact Start -->
<div class="container-fluid">
	<h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4">
		<span class="bg-secondary pr-3">Contact Us</span>
	</h2>
	<div class="row px-xl-5">
		<div class="col-lg-7 mb-5">
			<div class="contact-form bg-light p-30">
				<div id="success"></div>
				<%-- <form:form action="" method="" modelAttribute="">	
						<form:input path=""
									value=""/>   novalidate="novalidate" --%>
				<form name="sentMessage" id="aaa"  >
					<div class="control-group forms-control">
						<input type="text" class="form-control" id="name" 
							placeholder="Your Name" onkeypress="return onlyAlphabets(event,this);"/><!-- required="required"
							data-validation-required-message="Please enter your name"  -->
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
						<input type="email" class="form-control" id="email" 
							placeholder="Your Email"  /><!--required="required"
							data-validation-required-message="Please enter your email"  -->
						<p class="help-block text-danger"></p>
						
					</div>
					<div class="control-group forms-control">
						<input type="text" class="form-control" id="subject" 
							placeholder="Subject" onkeypress="return onlyAlphabets(event,this);" /><!--required="required"
							data-validation-required-message="Please enter a subject"  -->
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group forms-control">
						<textarea class="form-control" rows="8" id="message"
							placeholder="Message" onkeypress="return onlyAlphabets(event,this);" ></textarea><!-- required="required"
							data-validation-required-message="Please enter your message" -->
						<p class="help-block text-danger"></p>
					</div>
					<div>
						
							<input type="submit" 
								class="btn btn-primary py-2 px-4"
								value="Send Message">
					</div>
				</form>
			</div>
		</div>
		<div class="col-lg-5 mb-5">
			<div class="bg-light p-30 mb-30">

				<iframe style="width: 100%; height: 250px;"
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d235013.70717984336!2d72.43965621445858!3d23.020497769509888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1673342147280!5m2!1sen!2sin"
					frameborder="0" style="border:0;" allowfullscreen=""
					aria-hidden="false" tabindex="0" loading="lazy"
					referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
			<div class="bg-light p-30 mb-3">
				<p class="mb-2">
					<i class="fa fa-map-marker-alt text-primary mr-3"></i>Office No 401
					to 405 Fourth Floor "ONE WORLD WEST" 200 S.P. Ring Road,
					Bopal(Ambli), Ahmedabad-380058
				</p>
				<p class="mb-2">
					<i class="fa fa-envelope text-primary mr-3"></i>info@tridhya.com
				</p>
				<p class="mb-2">
					<i class="fa fa-phone-alt text-primary mr-3"></i>+919638992856
				</p>
			</div>
		</div>
	</div>
</div>
<!-- Contact End -->


 <script>
	$(document).ready(function() {
		

		jQuery("#aaa").validate({
			
			errorClass : 'errors',
			/* errorElement : "div", */
			rules : {
				name : {
					required : true,
				}, 
				
				
			},
			messages : {
      
				userPassword : "password is required",

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