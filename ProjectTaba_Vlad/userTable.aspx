<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userTable.aspx.cs" Inherits="ProjectTaba_Vlad.userTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>טבלת משתמשים</h1>
    <h2 style="text-align:center;"><%= sqlSelect %></h2>

    <table border="1" align="center">
        <%= st %>
    </table>

    <h3 style="text-align:center;">
        <%= msg %>
    </h3>
</asp:Content>
