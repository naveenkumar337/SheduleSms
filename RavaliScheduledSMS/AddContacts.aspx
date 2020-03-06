<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMainMenu.Master" AutoEventWireup="true" CodeBehind="AddContacts.aspx.cs" Inherits="RavaliScheduledSMS.AddContacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>AddContacts</h3>
    <div id="register">
        <label>UserName</label>
        <input type="text" id="txtuser" /><br />
        <label>ContactNo</label>
        <input type="text" id="txtnum" /><br />
        <input type="button" value="submit" id="btn" />
    </div>
</asp:Content>
