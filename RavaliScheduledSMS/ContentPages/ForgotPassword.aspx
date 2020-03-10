<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="RavaliScheduledSMS.ContentPages.ForgotPassword" MasterPageFile="~/SiteMainMenu.Master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="Register">
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="registration" class="form">
                            <h3 class="text-center text-info">Registration</h3>
                            <div class="form-group">
                                <label for="email" class="text-info">Email:</label><br>
                                <input type="text" id="txtmail" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="text" class="text-info">ContactNO:</label><br>
                                <input type="text" id="contactno" class="form-control">
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
    </asp:Content>

