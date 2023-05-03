<%@include file="sidebar.jsp" %>
<%@include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

.form-control input:focus {
	outline: none;
	border-color: #7a5059 !important;
}

.form-control.success input {
	border-color: #7aa55b !important;
}

.form-control.error input {
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
                  <h2>Sub Product</h2>
                </div>
              </div>
              <!-- end col -->
              <div class="col-md-6">
                <div class="breadcrumb-wrapper mb-30">
                  <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                      <li class="breadcrumb-item">
                        <a href="#0">Dashboard</a>
                      </li>
                      <li class="breadcrumb-item"><a href="#0">Manage Sub Product</a></li>
                      <li class="breadcrumb-item active" aria-current="page">
                        Sub Product
                      </li>
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
                

                <form:form action="addsubproduct" method="post" modelAttribute="SubProduct" id= "form" enctype="multipart/form-data">                
	                <div class="card-style">
	            
						<div class="input-style-1 col-lg-6 form-control">
		                  	<form:hidden path="subproductId" value="${subproduct.subproductId}"/> 	                  	
	            		    <form:label path="subproductImage">Product Image</form:label>
					<form:input path="subproductImage" class="form-control" type="file" accept="image/png, image/jpeg" id="formFile" />
					 	</div>
					 		<div class="input-style-1 col-lg-6 form-control">	                  
		                  	<form:label path="subproductName">Enter Product Name</form:label>
						 	<form:input path="subproductName" id= "subproductname"  type="text" value="${subproduct.subproductName}"  onkeypress="return (event.charCode > 64 && 
event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"/>
					 		<small style="color:red;">Username must be at least 3 characters</small>					 						
					 	</div>
							<div class="input-style-1 col-lg-6 form-control">
						 	<form:label path="subproductDescription" >Enter Product Description</form:label>
						 	<form:input path="subproductDescription" type="text" id= "subproductdescription" value="${subproduct.subproductDescription}" onkeypress="onlyLetter(this)"/>
					 		
					 		<script type="text/javascript">
						 		$(document).on('keypress', '#subproductdescription', function (event) {
								    var regex = new RegExp("^[a-zA-Z ]+$");
								    var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
								    if (!regex.test(key)) {
								        event.preventDefault();
								        return false;
								    }
								});
					 		</script>
					 	</div>
							<div class="input-style-1 col-lg-6 form-control">
						 	<form:label path="subproductPrice">Enter Product Price</form:label>
						 	<form:input path="subproductPrice" type= "number" id= "subproductprice" value="${subproduct.subproductPrice}" />
										
					 </div>
							<div class="input-style-1 col-lg-6 form-control">
							 <form:label path="subproductQuantity">Enter Product Quantity</form:label>
						 	<form:input path="subproductQuantity" type= "number" id= "subproductquantity" value="${subproduct.subproductQuantity}" />
							<small style="color:red;">Username must be at least 3 characters</small>					
					 </div>
							<div class="input-style-1 col-lg-6 form-control">
					 	<%-- <form:hidden path="productId" value="${product.subProductId}"/> --%>
	                 
	                  <form:label path="productId">Product Name</form:label>
								<form:select path="productId" class="form-control">
								<form:option class="text-dark" value="">-----select-----</form:option>
									<c:forEach items="${products}" var="product">
										<form:option class="text-dark" value="${product.productId}">${product.productName}</form:option>
									</c:forEach>
								</form:select>
	                  </div>
					 <input type="submit" class="main-btn primary-btn rounded-md btn-hover" value="Add Sub Products">
	            		
	                  </div>
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
				
				subproductImage : {
					required : true,
				}, 
				subproductName : {
					required : true,
					minlength : 1,
				}, 
				subproductDescription : {
					required : true,
				}, 
				subproductPrice : {
					required : true,
					maxlength : 10,

				},
				subproductQuantity : { 
					required : true,

				},
				productId : { 
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


<%@include file="footer.jsp" %>