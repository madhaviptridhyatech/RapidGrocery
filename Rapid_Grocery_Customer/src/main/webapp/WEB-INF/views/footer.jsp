<!-- Footer Start -->
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



</style>
    <div class="container-fluid bg-dark text-secondary mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <h5 class="text-secondary text-uppercase mb-4">Get In Touch</h5>
                <p class="mb-4">You Can Reach Out Us Through Following Addresses</p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>One World West, Ambali T Junction,Bopal,Ahmedabad, Gujarat, 380058</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@rapidGrocery.com</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+91 999 888 1111</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-6 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Quick Shop</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-secondary mb-2" href="/"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-secondary mb-2" href="/about"><i class="fa fa-angle-right mr-2"></i>About Us</a>
                            <a class="text-secondary mb-2" href="/search"><i class="fa fa-angle-right mr-2"></i>Products</a>
                            <a class="text-secondary mb-2" href="/cart"><i class="fa fa-angle-right mr-2"></i>View Cart</a>
                            <a class="text-secondary mb-2" href="/checkout"><i class="fa fa-angle-right mr-2"></i>Checkout</a>
                            <a class="text-secondary" href="/contact"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                     
                   
                    <div class="col-md-6 mb-5">
                        <h5 class="text-secondary text-uppercase mb-4">Newsletter</h5>
                        <p>We will notify you when we add new products to our system.</p>
                        <form action="" id="contactForm1">
                            <div class="input-group forms-control">
                                <input type="text" class="form-control" id="useremailid" placeholder="Your Email Address">
                               
                                <div class="input-group-append">
                                   
                                    <input type="submit" class="btn btn-primary"
							value="Sign Up" />
                                </div>
                                 <p class="text-light mx-1"></p>
                            </div>
                        </form>
                        <h6 class="text-secondary text-uppercase mt-4 mb-3">Follow Us</h6>
                        <div class="d-flex">
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-primary btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                            <a class="btn btn-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row border-top mx-xl-5 py-4" style="border-color: rgba(256, 256, 256, .1) !important;">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-secondary">
                    &copy; <a class="text-primary" href="#">Rapid Grocery</a>. All Rights Reserved. Designed
                    by
                    <a class="text-primary" href="">Rapid Team</a>
                </p>
            </div>
        </div>
    </div>
    <!-- Footer End -->
<script>
const form = document.querySelector("#contactForm1");

const useremailid = document.querySelector("#useremailid");

var error = false;
const showError = (input, msg) => {
    const formControl = input.parentElement;
    const small = formControl.querySelector("p");
    formControl.classList.add("error");
    small.textContent = msg;
};

const showSuccess = (input) => {
    const formControl = input.parentElement;
    formControl.classList.add("success");
};

const checkEmail = (input) => {
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (re.test(input.value)) {
        showSuccess(input);
        error=false;
    } else {
        showError(input, "Email address is invalid. ");
        error = true;
    }
};


const validateForm = () => {
   
    checkEmail(useremailid);
   
};

form.addEventListener("submit", function (e) {
    e.preventDefault();
    validateForm();  
   if(error == false) {
       form.submit()
   } 
});



</script>

    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>