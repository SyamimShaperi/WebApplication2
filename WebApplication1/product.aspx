<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="WebApplication1.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    

     <form id="form1" runat="server">
    <p>
        Product Details</p>
    <p>
        <asp:Image ID="ProductImage" runat="server" Width="200px" />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductId" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ProductId:
                <asp:Label ID="ProductIdLabel1" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDesc:
                <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductId:
                <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDesc:
                <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ProductId:
                <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductDesc:
                <asp:Label ID="ProductDescLabel" runat="server" Text='<%# Bind("ProductDesc") %>' />
                <br />
                ProductQuantity:
                <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT * FROM [TblProduct] WHERE ([ProductId] = @ProductId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Quantity"></asp:Label>
        <asp:DropDownList ID="DDLQuantity" runat="server">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;<asp:Button ID="btnPurchase" runat="server" Text="Buy Now" Width="100px" OnClick="btnPurchase_Click" />
    </p>
    </form>
</asp:Content>
