<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RavaliScheduledSMS.Login"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/jgrowl.css" rel="stylesheet" />
    <link href="css/Login.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    
    <script src="js/jquery.cookie.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript"  src="js/Login.js"></script>
    <title></title>
</head>
<body>
    <div id="Login">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login" class="form">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Name:</label><br>
                                <input type="text" name="username" id="txtname" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="text" name="password" id="pswd" class="form-control">
                            </div>
                            <div class="form-group">
                                <span>
                                    <input id="remember-me" name="remember-me" type="checkbox" checked="checked"></span><label for="remember-me" class="text-info"><span>Remember me</span></label><br>
                                <input type="submit" name="submit" class="btn btn-info float-left" value="Login" id="submit">
                                <input type="submit" name="submit" class="btn btn-info float-right" value="SignUp" id="register">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jgrowl.js"></script>
</body>
</html>
