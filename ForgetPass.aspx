<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPass.aspx.cs" EnableEventValidation="true" Inherits="Register" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>B2B Portal - Prime Destination for Wholesalers</title>
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
    
</head>

<body>
    <form id="form1" runat="server" >
    <!-- Topbar Start -->
    <div class="container-fluid">
        <div class="row bg-secondary py-2 px-xl-5">
            <div class="col-lg-6 d-none d-lg-block">
                <div class="d-inline-flex align-items-center">
                    <a class="text-dark" href="">FAQs</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Help</a>
                    <span class="text-muted px-2">|</span>
                    <a class="text-dark" href="">Support</a>
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
                <a href="" class="text-decoration-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">B2B</span>Portal</h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
               
                    
                
            </div>
            <div class="col-lg-3 col-6 text-right">
                
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid">
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    
                    
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                    
                    
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            
                            <a href="contact.aspx" class="nav-item nav-link active">Contact</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0">
                            <a href="Register.aspx" class="nav-item nav-link">Register(Buyer/Seller)</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->


    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 100px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Forget Password</h1>
            
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        
        <div class="row px-xl-5">
            <div class="col-lg-8 mb-5">
                <div class="contact-form">
                    <div class="alert-danger">
    <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" Font-Size="Medium"></asp:Label></div>
                    
                        
                        
                        <div class="control-group">
                            <input type="text" class="form-control" name="username" id="username" runat="server" placeholder="User Name/Email-id"
                                required="required" data-validation-required-message="Please enter User Name/Email-Id" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <label class="alert-info">
                                Select Security Question : 
                            </label>
                             <select name="secquestion" id="secquestion" class="form-control" runat="server" >
                                <option value="Your BirthPlace">Your BirthPlace ? </option>
                                <option value="Your Mother tangue">Your Mother Tangue ?</option>
                                <option value="Your Birthdate">Your Birthdate ?</option>
                            </select>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" name="sans" id="sans" runat="server" placeholder="Security Answer"
                                required="required" data-validation-required-message="Please enter Security Answer" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <asp:Label ID="Error" runat="server" Visible="False" BackColor="#CC0000" ForeColor="Yellow"></asp:Label>
                        </div>
                        <div>
                                <asp:Button ID="btnSubmit1" runat="server" class="btn btn-primary py-2 px-4" Text="Check User" OnClick="btnSubmit1_Click"  />
                        </div>
                        <div class="control-group">
                            <input type="password" class="form-control" name="password" id="password" runat="server" placeholder="New Password"
                                required="required" data-validation-required-message="Please enter password" visible="false" />
                            <p class="help-block text-danger"></p>
                        </div>
                   
                       <div class="control-group">
                            <input type="password" class="form-control" name="rpassword" id="rpassword" runat="server" placeholder="New Password"
                                required="required" data-validation-required-message="Please enter password" visible="false"  />
                            <p class="help-block text-danger"></p>
                           </div>
                        <div>
                                <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary py-2 px-4" Text="Update Password" Visible="false" OnClick="btnSubmit_Click" />
                        </div>
                    
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
                        <h5 class="font-weight-bold text-dark mb-4">Inquiry/FeedBack</h5>
                       
                          
                        
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
    </form>

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
