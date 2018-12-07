<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/eShop.Master" CodeBehind="Login.aspx.vb" Inherits="shop_assign3.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-left: 74px;
    }
        .auto-style8 {
            margin-left: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-page">
   <div class="hi">
    <h1>
        Hi</h1>
    <p>
        Sign in to eShop or <a class="hi-link" href="Register.aspx">create an account</a>

    </p>
         </div>


    <div class="Sign-In">
        <p>Username</p>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="short-txt" ></asp:TextBox>

        
        <p >Password</p>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="short-txt"  TextMode="Password"></asp:TextBox>
   

 <br />   
<br />
<asp:Button ID="Button1" runat="server" CssClass="login-button" Text="Sign In"  />
        </div>
         </div>
<br />
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="SqlDataSource1" DataKeyNames="CustomerID" Visible="False">
    <Columns>
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" InsertVisible="False" ReadOnly="True" SortExpression="CustomerID" />
    </Columns>
</asp:GridView>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customers] WHERE (([username] = @username) AND ([password] = @password))">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="username" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
