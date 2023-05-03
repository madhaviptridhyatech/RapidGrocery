<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" %>

<%@include file="header.jsp"%>
 <script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
	
<%-- <%
String error = (String) session.getAttribute("error");
String errorpassword = (String) session.getAttribute("error1");
String active = (String) session.getAttribute("error2");
%>
<%
if (active != null) {
	out.println("<div class=\"alert alert-danger\" role=\"alert\">" + active + "</div>");
	session.removeAttribute("error2");
	session.invalidate();

}
%> --%>


		


<!-- Breadcrumb Start -->
<div class="container-fluid">
	<div class="row px-xl-5">
		<div class="col-12">
			<nav class="breadcrumb bg-light mb-30">
				<a class="breadcrumb-item text-dark" href="/">Home</a> <span
					class="breadcrumb-item active">Login</span>
			</nav>
		</div>
	</div>
</div>
<!-- Breadcrumb End -->

<!-- Login Start -->
<div class="container">
	<h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4">
		<span class="bg-secondary pr-3">Sign In</span>
	</h2>
	<div style="margin: 0 auto;" class="row px-xl-5">
		<div class="col-auto mb-5 offset-md-4">
			<div class="contact-form bg-light p-30">
				<div id="success"></div>
				<%-- <form:form action="" method="" modelAttribute="">	
						<form:input path=""
									value=""/> --%>
				<form:form action="/checklogin" method="POST" modelAttribute="User"
					name="sentMessage" id="contactForm" novalidate="novalidate">

					<div class="control-group">
						<form:label path="userEmailId">Enter User name(Email)</form:label>
						<form:input path="userEmailId" type="email" id="email" name="email" class="form-control"
							placeholder="Enter Your Email" required="required" />
						
							
                     </div>
							
					
					<br>
					<div class="control-group">
						<form:label path="userPassword">Enter Password</form:label>
						<form:input path="userPassword" type="password"
							class="form-control" id="pass" name="pass" placeholder="Enter Password"
							required="required" />
							
									                
			            </div>    
						
					
					<br>
					<br>
					<div>
						<input type="submit" class="btn btn-primary py-2 px-4"
							id="sendLoginButton" value="Login" id="submitbtn"  />
					    <input type="reset"
							class="btn btn-primary py-2 px-4" value="Reset"  />
					</div>
					<br>
					<div class="control-group">
						<a href="/forgetpassword">Forgot Password ?</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="/register">New User Click Here</a>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>
<!--  End -->



<script type="text/javascript">

	$( "#contactForm" ).validate({
		errorClass : 'errors',
		
		  rules: {
		    email: {
		      required: true,
		      email: true
		    },
		    pass: {
		      required: true,
		      minlength:8
		    }
		    
		  },
		  errorPlacement : function(error, element) {
				/* element.css('background', '#ffdddd'); */
				/* error.css('color','red','<br/>'); */
				error.insertAfter(element);
				error.css('color', 'red', '<br/>');
				
			}
		
	});

</script>





<%@include file="footer.jsp"%>