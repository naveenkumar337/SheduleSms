<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RavaliScheduledSMS.Registration"%>

 <!DOCTYPE html>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/jgrowl.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <link href="css/Registration.css" rel="stylesheet" />
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
<%--    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <title></title>
</head>
<body>
    <div id="Register">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="registration" class="form">
                            <h3 class="text-center text-info">Registration</h3>
                            <div class="form-group">
                                <label for="uname" class="text-info">Name:</label><br>
                                <input type="text" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="email" class="text-info">Email:</label><br>
                                <input type="text" id="txtmail" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="text" class="text-info">ContactNO:</label><br>
                                <input type="text" id="contactno" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="text" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">ConfirmPassword:</label><br>
                                <input type="text" id="cfmpswd" class="form-control">
                            </div>
                            <div class="form-group">
                                <span>
                                    <input id="remember-me" name="remember-me" type="checkbox"></span><label for="remember-me" class="text-info"><span>Remember me</span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit" id="submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/Registration.js"></script>
    <script src="js/jgrowl.js"></script>
</body>
</html>
