<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/eShop.Master" CodeBehind="Basket.aspx.vb" Inherits="shop_assign3.Basket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="basket-holder">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" width="100%" DataKeyNames="BasketID" DataSourceID="SqlDataSource1" CssClass="Basket">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" DeleteText="Remove" >
            <ControlStyle CssClass="remove-button" />
            <FooterStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
            <asp:BoundField DataField="BasketID" HeaderText="BasketID" SortExpression="BasketID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#85CAEC" Font-Bold="True" ForeColor="white" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="silver" Font-Bold="True" ForeColor="white" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView></div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Basket] WHERE [BasketID] = @BasketID" InsertCommand="INSERT INTO [Basket] ([ProductID], [CustomerID], [Model], [Manufacture], [Price]) VALUES (@ProductID, @CustomerID, @Model, @Manufacture, @Price)" SelectCommand="SELECT * FROM [Basket]" UpdateCommand="UPDATE [Basket] SET [ProductID] = @ProductID, [CustomerID] = @CustomerID, [Model] = @Model, [Manufacture] = @Manufacture, [Price] = @Price WHERE [BasketID] = @BasketID">
        <DeleteParameters>
            <asp:Parameter Name="BasketID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="String" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Manufacture" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductID" Type="String" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Manufacture" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="BasketID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
