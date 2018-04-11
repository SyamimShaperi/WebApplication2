<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Home</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    This is homepage
<h2>Products</h2>
    <div id="table1">
        <table>
            <tr>
                <td><img src="ProductImages/PowerCushion.jpg" alt="" width="185"/><p></p></td>
                <td><img src="ProductImages/2017 YONEX NANORAY 10F.JPG" alt="" width="185"/><p></p></td>
                <td><img src="ProductImages/ARCSABER_11_Metallic_Red.png" alt="" width="185"/><p></p></td>
                <td><img src="ProductImages/2015 YONEX Lin Dan Exclusive Pro Tournament Bag.jpg" alt="" width="185"/><p></p></td>
                <td><img src="ProductImages/2016 YONEX LEE CHONG WEI EXCLUSIVE II PRO TOURNAMENT BAG [BAG11LCWEX].jpg" alt="" width="185"/><p></p></td>

            </tr>
        </table>
        <br/>
    </div>
       
</asp:Content>
