<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    

    <div id="login">
        
            <form id="form1" runat="server">

                <h1>Log In</h1>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
                <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="txtLoginPassword" runat="server" style="margin-bottom: 0px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="136px" OnClick="btnLogin_Click" />
                <br />
                <br />
                <asp:Literal ID="LitLoginError" runat="server"></asp:Literal>
                <br />
                <br />
            </form>
       
    </div>
</asp:Content>
