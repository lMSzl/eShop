<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/eShop.Master" CodeBehind="Catalogue.aspx.vb" Inherits="shop_assign3.Catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="catalogue">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        <asp:ListItem Value="L">£1 - £100</asp:ListItem>
        <asp:ListItem Value="M">£100 - £300</asp:ListItem>
        <asp:ListItem Value="H">£300 +</asp:ListItem>
</asp:DropDownList>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="100%">
    <Columns>
        <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Buy" >
        <ControlStyle CssClass="buy-button" />
        </asp:CommandField>
        <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        <asp:BoundField DataField="Manufacture" HeaderText="Manufacture" SortExpression="Manufacture" />
        <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:ImageField DataImageUrlField="ImageURL">
            <ItemStyle HorizontalAlign="Center" />
        </asp:ImageField>
    </Columns>
    <EditRowStyle HorizontalAlign="Center" VerticalAlign="NotSet" />
        <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="NotSet" />
    <FooterStyle BackColor="#FFFFCC" ForeColor="Tomato" HorizontalAlign="Center" VerticalAlign="NotSet" />
    <HeaderStyle BackColor="#85CAEC" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="NotSet" />
    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#666666" HorizontalAlign="Center" VerticalAlign="Middle" />
    <SelectedRowStyle BackColor="#99c9d2" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FEFCEB" />
    <SortedAscendingHeaderStyle BackColor="#AF0101" />
    <SortedDescendingCellStyle BackColor="#F6F0C0" />
    <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([CategoryId] = @CategoryId)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="CategoryId" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Basket] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Basket] ([ProductID], [Model]) VALUES (@ProductID, @Model)" SelectCommand="SELECT [ProductID], [Model], [ID] FROM [Basket]" UpdateCommand="UPDATE [Basket] SET [ProductID] = @ProductID, [Model] = @Model WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="ProductID" SessionField="ProductID" Type="String" />
            <asp:SessionParameter Name="Model" SessionField="Model" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductID" Type="String" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
