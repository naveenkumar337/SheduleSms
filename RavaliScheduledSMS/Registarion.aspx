<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMainMenu.Master" AutoEventWireup="true" CodeBehind="Registarion.aspx.cs" Inherits="RavaliScheduledSMS.Registarion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Registration</h3>
    <div id="register">
      <asp:Label runat="server">UserName</asp:Label>
        <asp:TextBox ID="txt" runat="server"></asp:TextBox><br />
         <asp:Label runat="server">Email</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
         <asp:Label runat="server">Password</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
         <asp:Label runat="server">ContactNo</asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:button ID="btn" Text="submit" runat="server"></asp:button>
   
    </div>
</asp:Content>
