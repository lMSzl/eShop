<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/eShop.Master" CodeBehind="Register.aspx.vb" Inherits="shop_assign3.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            margin-left: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="register">
        <h1>Create an account</h1>
        <br />
        <div class="form">
    <asp:TextBox ID="username" runat="server" CssClass="auto-style7" Width="168px">Username</asp:TextBox>
<br />
        
<br />
<asp:TextBox ID="email" runat="server" CssClass="auto-style7" Width="343px" TextMode="Email">email address</asp:TextBox>
<br />
<br />
<asp:TextBox ID="name" runat="server" CssClass="auto-style7" Width="168px">First Name</asp:TextBox>
<asp:TextBox ID="surname" runat="server" Width="168px">Last Name</asp:TextBox>
<br />
<br />
<asp:TextBox ID="address" runat="server" CssClass="auto-style7" Width="168px">Address</asp:TextBox>
<asp:TextBox ID="phone" runat="server" TextMode="Phone" Width="168px">Phone</asp:TextBox>


        <p>*set your password:</p>
<asp:TextBox ID="password" runat="server" CssClass="auto-style7" TextMode="Password" Width="168px">Password</asp:TextBox>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Customers(username, email, FirstName, LastName, Address, Phone, password) VALUES (@username, @email, @FirstName, @LastName, @Address, @Phone, @password)" SelectCommand="SELECT * FROM [Customers]">
    <InsertParameters>
        <asp:ControlParameter ControlID="username" Name="username" PropertyName="Text" />
        <asp:ControlParameter ControlID="email" Name="email" PropertyName="Text" />
        <asp:ControlParameter ControlID="name" Name="FirstName" PropertyName="Text" />
        <asp:ControlParameter ControlID="surname" Name="LastName" PropertyName="Text" />
        <asp:ControlParameter ControlID="address" Name="Address" PropertyName="Text" />
        <asp:ControlParameter ControlID="phone" Name="Phone" PropertyName="Text" />
        <asp:ControlParameter ControlID="password" Name="password" PropertyName="Text" />
    </InsertParameters>
</asp:SqlDataSource>
<br />
<br />
<asp:Button ID="Button1" runat="server" Text="Button" CssClass="register-button" />
<br />
        </div>
    </div>
</asp:Content>
