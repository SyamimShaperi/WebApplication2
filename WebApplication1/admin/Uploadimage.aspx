<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Uploadimage.aspx.cs" Inherits="WebApplication1.admin.Uploadimage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <form id="form1" runat="server">
    <asp:FileUpload ID="imageFileUploadControl" runat="server" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Upload" Width="79px" OnClick="Button1_Click" />
    <br />
    <br />
    </form>
</asp:Content>
