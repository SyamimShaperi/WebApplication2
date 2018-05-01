<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Home</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <form id="form1" runat="server">
    This is the Product Lists
<h2>Products</h2>
   
        <p>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                    <table><tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <td>
                            <a href="<%#Eval("ProductId", "product.aspx?ProductId={0}") %>"><asp:Image ID="imgCover" runat="server" AlternateText="Image Cover" ImageUrl='<%# Eval("ProductID","~/ProductImages/{0}.jpg") %>' Width="200" Height="200" /></a>
 
                            <p>
                            </p>
                            
                            <a href="<%#Eval("ProductId", "product.aspx?ProductId={0}") %>"><%#Eval ("ProductName")%>/></a>
                            <p>
                            </p>
                            <p> 
                            </p>                         
                            <a>Bnd $<%#Eval ("ProductPrice") %></a></td>
                    </ItemTemplate>
                    <FooterTemplate>
                    </tr></table>
                    </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [TblProduct] WHERE ProductQuantity &gt; 0 ORDER BY ProductId DESC"></asp:SqlDataSource>
        <br />
    </p>
    
       
    </form>
       
</asp:Content>
