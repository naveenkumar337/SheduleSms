<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NormalSms.aspx.cs" Inherits="RavaliScheduledSMS.NormalSms" MasterPageFile="~/SiteMainMenu.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/jgrowl.css" rel="stylesheet" />
<link href="css/smsPage.css" rel="stylesheet" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.mask.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="row"> 
                <div class="col-12" style="overflow:hidden;"><input type="button" class="col-6" id="normalSmsPage" value ="NormalSms" /><input type="button" class="col-6" id="SheduleSmsPage"  onclick="Home.apsx" value="SheduleSms" / >
                <%--<div class="col-6"></div>--%>
            </div>

        <div id="form1">
            <div class="container" id="normalsmspage">
                <div class="row justify-content-center align-items-center">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <form id="smsform">
                            <div class="form-group">
                                <label for="phonenumber" id="lblphone" style="color:white" >PhoneNumber:</label>
                                <input type="tel" id="txtphonenumber" name="phonenumber" placeholder="Enter with your counry code" maxlength="12" class="form-control"/> 
                            </div>
                                
                            <div class="form-group">
                                <label for="Message" id="lblmessage" style="color:white">Message:</label> <%--<label id="messagelog" style="float:right">0/250</label>--%><br/>
                                <%--<input type="text" id="textmessage" name="Message" class="form-control" />--%> 
                                <textarea id="TextArea1" cols="70" rows="3" maxlength="250" class="form-control"></textarea>
                            </div>
                                <div class="form-group">
                                    <input type="button" id="sendMessage" name="Send" value="Send"/>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
<script src="js/SmsPages.js"></script>
</asp:Content>