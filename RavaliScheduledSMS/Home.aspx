<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMainMenu.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="RavaliScheduledSMS.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <%--<nav id="nav">
                    <ul>
                       <li> <a href="Registarion.aspx">Registarion</a></li>
                        <li><a href="#">Login</a></li>
                        <li><a href="AddContacts.aspx">AddContacts</a></li>
                        <li><a href="#">Logout</a></li>
                    </ul>
                </nav>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="color:white;align-content:center;text-align:center;">
        Welcome  <%=Request.QueryString["Username"]%> 
    </h3>
</asp:Content>
