<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="WebApplication1.admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <h1>List of Product</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" Width="401px">
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ProductDesc" HeaderText="ProductDesc" SortExpression="ProductDesc" />
                <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="Edit.aspx?ProductId={0}" Text="Edit" />
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="Uploadimage.aspx?Id={0}" Text="Upload image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624950_co5027_asgbConnectionString %>" SelectCommand="SELECT * FROM [TblProduct]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [TblProduct] WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL))" InsertCommand="INSERT INTO [TblProduct] ([ProductId], [ProductName], [ProductDesc]) VALUES (@ProductId, @ProductName, @ProductDesc)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [TblProduct] SET [ProductName] = @ProductName, [ProductDesc] = @ProductDesc WHERE [ProductId] = @original_ProductId AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDesc] = @original_ProductDesc) OR ([ProductDesc] IS NULL AND @original_ProductDesc IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductId" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductId" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductDesc" Type="String" />
                <asp:Parameter Name="original_ProductId" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductDesc" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
