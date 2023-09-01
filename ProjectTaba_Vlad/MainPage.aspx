<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="ProjectTaba_Vlad.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            direction:rtl;
        }
        h1{
            text-align:center;
            font-weight:400;
            background-image: linear-gradient(to right, Red , Orange, Yellow, Green, Blue, Indigo, Violet);
            color:transparent;
            -moz-background-clip:text;
            -webkit-background-clip:text;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="font-size: 24px">
        ברוך הבא לאתר הסיכומים של וולאד איצקוב!
    </h2>
    באתר יהיה לכם סיכומים ותרגולים בנושאים הבאים:
    <ol>
        <li>
            <a href="Calculus.aspx">חדוו''א</a>
            (חשבון דיפרנציאלי ואינטגרלי) כשבתוך הנושא קיימות:
            <ul>
                <li>פולינומים</li>
                <li>פונקציות מנה</li>
                <li>פונקציות שורש</li>
                <li>פונקציות טריגונומטריות</li>
            </ul>
        </li>
        <li><a href="series.aspx">סדרות</a></li>
        <li><a href="movementProblems.aspx">בעיות תנועה</a></li>
    </ol>
</asp:Content>
