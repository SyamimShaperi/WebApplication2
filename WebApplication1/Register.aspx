<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        font-size: xx-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    
    <div align="center">
        <h1><span class="auto-style1">Registration Form</span></h1>
        <br/>
    <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server" Height="16px" style="margin-bottom: 0px" Width="105px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server" Width="107px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Text="Register" Width="100px" OnClick="btnReg_Click" />
        <br />
        <br />
        <br />
        <asp:Literal ID="LitRegisterError" runat="server"></asp:Literal>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
