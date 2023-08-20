<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Sign In | Admin Control Panel - B2BTrading</title>
    <!-- Favicon-->
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet" />
</head>
<body class="login-page">
    <form id="form1" runat="server">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);">B2B<b>Trading</b></a>
            <small>Admin Login</small>
        </div>
        <div class="card">
            <div class="body">
                
                    <div class="msg">Sign in to start your session</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
        <asp:TextBox ID="username" runat="server" class="form-control" name="username" placeholder="Username" required autofocus></asp:TextBox>
                            
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <asp:TextBox ID="password" runat="server"  class="form-control" name="password" type="password" required></asp:TextBox>
        
                            
                        </div>
                    </div>
                    <div class="row">
                        
                        <div class="col-xs-4">
<asp:Button ID="Button1" class="btn btn-block bg-pink waves-effect" runat="server" Text="SIGN IN" OnClick="Button1_Click"  />
                            
                        </div>
                    </div>
                    <div class="row m-t-15 m-b--20">
                        <div class="col-xs-6">
                            
                        </div>
                        
                    </div>
               
            </div>
        </div>
    </div>

    </form>

    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Validation Plugin Js -->
    <script src="plugins/jquery-validation/jquery.validate.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>
    <script src="js/pages/examples/sign-in.js"></script>
</body>
</html>
