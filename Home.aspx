<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/eShop.Master" CodeBehind="Home.aspx.vb" Inherits="shop_assign3.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="trends">
        <h1>Trending on eShop</h1>
    </div>
    <div class="deals">
        <div class="box">
           <a href="Catalogue.aspx">
               <img src="Images/01.jpg" /> </a>
            
        </div>
        <div class="box"><a href="Catalogue.aspx">
               <img src="Images/02.jpg" /> </a></div>
        <div class="box"><a href="Catalogue.aspx" >
               <img src="Images/03.jpg" /> </a></div>
        <div class="box"><a href="Catalogue.aspx" >
               <img src="Images/04.jpg" /> </a></div>
    </div>
</asp:Content>
