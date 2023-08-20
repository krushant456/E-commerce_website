<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>B2B Portal - Market for Wholesalers</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <script type="text/javascript">
        function callpage()
        {
            this.location = "productlist.aspx?search=" + document.getElementById("searchtext").value;
        }
    </script>
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row bg-secondary py-2 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark" href="index.aspx">Home</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="contact.aspx">Help</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="contact.aspx">Support</a>
                </div>
            </div>
            <div class="col-lg-6 text-center text-lg-right">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a class="text-dark pl-2" href="">
                        <i class="fab fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="index.aspx" class="text-decoration-none">
              <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">B2B</span>Portal</h1>
                      </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                
                    <div class="input-group">
                          <input type="text" id="searchtext" name="searchtext" class="form-control" placeholder="Search for products ( Product Name/Category/SubCategory )">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                              <i class="fa fa-search" onclick="callpage()"></i>
                            </span>
                        </div>
                    </div>
                
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="" class="btn border">
                    <i class="fas fa-heart text-primary"></i>
                    <span class="badge">0</span>
                </a>
                <a href="" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge">0</span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    
    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Contact Us</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="index.aspx">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Contact</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Contact For Any Queries</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                    <form runat="server">
                        <div class="control-group">
                            <input type="text" class="form-control" id="fname" runat="server" placeholder="Your Name"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="email" class="form-control" id="email" runat="server" placeholder="Your Email"
                                required="required" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="subject" runat="server" placeholder="Subject"
                                required="required" data-validation-required-message="Please enter a subject" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <textarea class="form-control" rows="6" id="message" runat="server" placeholder="Message"
                                required="required"
                                data-validation-required-message="Please enter your message"></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div>
                            <asp:Button ID="Button1" runat="server" CssClass="btn-outline-warning" Text="Send Message" OnClick="Button1_Click" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 mb-5">
                <h5 class="font-weight-semi-bold mb-3">Get In Touch</h5>
                <p>Global mart is an Indian business to business (B2B) portal facilitating online marketing support to Indian micro, small, medium enterprises (MSMEs). Contact Us without Hesitate.</p>
                <div class="d-flex flex-column mb-3">
                    <h5 class="font-weight-semi-bold mb-3">Main Branch</h5>
                   <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Sopan Mall, S.G. Highway, Ahmedabad, Gujarat.</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@b2bportal.com</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+091 94546 78906</p>
                </div>
                <div class="d-flex flex-column">
                    <h5 class="font-weight-semi-bold mb-3">Store</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>25, Astha Complex, Sabarmati, Ahmedabad</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>store@b2bportal.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+091 84567 77890</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <!-- Footer Start -->
    <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <a href="" class="text-decoration-none">
                    <h1 class="mb-4 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border border-white px-3 mr-1">B2B</span> Portal</h1>
                </a>
                <p>Global mart is an Indian business to business (B2B) portal facilitating online marketing support to Indian micro, small, medium enterprises (MSMEs).</p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Sopan Mall, S.G. Highway, Ahmedabad, Gujarat.</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@b2bportal.com</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+091 3454 7890</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-4 mb-5">
                        <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-dark mb-2" href="index.aspx"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-dark mb-2" href="index.aspx"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                            <a class="text-dark mb-2" href="login.aspx"><i class="fa fa-angle-right mr-2"></i>Buyer Login</a>
                            <a class="text-dark mb-2" href="login.aspx"><i class="fa fa-angle-right mr-2"></i>Seller Login</a>
                            <a class="text-dark mb-2" href="register.aspx"><i class="fa fa-angle-right mr-2"></i>Register Yourself</a>
                            <a class="text-dark" href="contact.aspx"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <h5 class="font-weight-bold text-dark mb-4">Quick Links</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-dark mb-2" href="index.aspx"><i class="fa fa-angle-right mr-2"></i>Home</a>
                            <a class="text-dark mb-2" href="index.aspx"><i class="fa fa-angle-right mr-2"></i>Our Shop</a>
                            <a class="text-dark mb-2" href="login.aspx"><i class="fa fa-angle-right mr-2"></i>Buyer Login</a>
                            <a class="text-dark mb-2" href="login.aspx"><i class="fa fa-angle-right mr-2"></i>Seller Login</a>
                            <a class="text-dark mb-2" href="register.aspx"><i class="fa fa-angle-right mr-2"></i>Register Yourself</a>
                            <a class="text-dark" href="contact.aspx"><i class="fa fa-angle-right mr-2"></i>Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                       
                    </div>
                </div>
            </div>
        </div>
        <div class="row border-top border-light mx-xl-5 py-4">
            <div class="col-md-6 px-xl-0">
                <p class="mb-md-0 text-center text-md-left text-dark">
                    &copy; <a class="text-dark font-weight-semi-bold" href="#">B2B Portal</a>. All Rights Reserved. Designed
                    by
                    <a class="text-dark font-weight-semi-bold" href="#">B2B Portal Pvt. Ltd.</a><br>
                    
                </p>
            </div>
            <div class="col-md-6 px-xl-0 text-center text-md-right">
                <img class="img-fluid" src="img/payments.png" alt="">
            </div>
        </div>
    </div>
    <!-- Footer End -->


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
