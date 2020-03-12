<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMainMenu.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RavaliScheduledSMS.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/jgrowl.css" rel="stylesheet" />
<link href="css/smsPage.css" rel="stylesheet" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.mask.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row"> 
         <h4 style="align-content:center;color:white;">Welcome <%=Request.QueryString["UserName"]%></h4>
                <div class="col-12" style="overflow:hidden;">
                    <a href="NormalSms.aspx"><input type="button" class="col-6" id="normalSmsPage" value ="NormalSms" /></a><a href="#"><input type="button" class="col-6" id="SheduleSmsPage"  onclick="Home.apsx" value="SheduleSms" / ></a>
                <%--<div class="col-6"></div>--%>
            </div>

        <div id="form1">
            <div class="container" id="shedulesmspage">
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
                                <div>
                                    
                                <label for="phonenumber" id="lbldatepicker" style="color:white" >DateTime:</label>
                                 <input id="datepicker" type="datetime-local" class="col-12" />
                                </div>
                                <div class="form-group">
                                    <br/>
                                    <input type="button" id="sendMessage" name="Send" value="Send"/>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>
         </div>
<script src="js/SmsPages.js"></script>
</asp:Content>
