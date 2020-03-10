<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RavaliScheduledSMS.Login" MasterPageFile="~/SiteMainMenu.Master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
</asp:Content>
