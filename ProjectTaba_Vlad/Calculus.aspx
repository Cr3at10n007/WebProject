<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calculus.aspx.cs" Inherits="ProjectTaba_Vlad.Calculus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            direction:rtl;
        }
        td{
            text-align:right;
            width:33%;
        }
        img{
            height:30px;
            width:auto;
        }
    </style>
    <script>
        function chkAns(a, b, c) {
            if (document.getElementById("answer").value != 2 * parseInt(a) + "x" + b) {
                document.getElementById("m1").style.display = "inline";
                document.getElementById("m1").value = "לא נכון, נסה עוד פעם";
                return false;
            }
            else {
                document.getElementById("m1").style.display = "inline";
                document.getElementById("m1").value = "כל הכבוד";
                return true;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span style="font-weight:bolder;font-size:24px;text-align:center;">חשבון דיפראנציאלי ואינטגרלי</span>
    <table style="width:600px;  margin-left:auto;margin-right:0">
    <tr>
        <th style="width:200px;text-align:right">פונקציה</th>
        <th style="text-align:right">נגזרת</th>
        <th style="text-align:right">&nbsp;הערות</th>
    </tr>
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=x%5En" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%20nx%5E%7B%7Bn-1%7D%7D" align="absmiddle"></td>
        <td></td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%20kx" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=k" align="absmiddle"></td>
        <td> הנגזרת של x היא 1</td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=k" align="absmiddle"></td>
        <td> 0</td>
        <td> הנגזרת של קבוע היא אפס</td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Cfrac%7Bf(x)%7D%7Bk%7D"  align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Cfrac%7Bf'(x)%7D%7Bk%7D"  align="absmiddle"></td>
        <td> החלוקה ב- k היא חלוקה בקבוע והיא לא משפיעה</td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Bf(x)%5D%5En" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%20n%5Bf(x)%5D%5E%7Bn-1%7Df'(x)" align="absmiddle"></td>
        <td></td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=f(x)g(x)" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=f'(x)g(x)%2Bf(x)g'(x)"  align="absmiddle"></td>
        <td> נגזרת מכפלה</td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Cfrac%7Bf(x)%7D%7Bg(x)%7D" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Cfrac%7Bf'(x)g(x)-f(x)g'(x)%7D%7B%5Bg(x)%5D%5E2%7D" align="absmiddle"></td>
        <td> נגזרת מנה</td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Csqrt%7Bx%7D" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Cfrac%7B1%7D%7B2%5Csqrt%7Bx%7D%7D"  align="absmiddle"></td>
        <td> נגזרת שורש</td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Csqrt%7Bf(x)%7D" align="absmiddle"></td>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Cfrac%7B1%7D%7B2%5Csqrt%7Bf(x)%7D%7Df'(x)" align="absmiddle"></td>
        <td> נגזרת שורש מורכב</td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=sin(x)" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=cos(x)" align="absmiddle"></td>
        <td></td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=sin(f(x))" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=cos(f(x))%20f'(x)" align="absmiddle"></td>
        <td></td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=cos(x)" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=-sin(x)" align="absmiddle"></td>
        <td></td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=cos(f(x))%20" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=-sin(f(x))%20f'(x)" align="absmiddle"></td>
        <td></td>
    </tr>
    
    <tr>
        <td><img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=tan(x)" align="absmiddle"></td>
        <td>&nbsp;<img  src="http://chart.apis.google.com/chart?cht=tx&amp;chl=%5Cfrac%7B1%7D%7Bcos%5E2(x)%7D" align="absmiddle"></td>
        <td></td>
    </tr>
    </table>
    <h2 style="text-decoration:underline; font-weight:bolder;text-align:center;font-size:2em;">תרגול</h2>
    <input type ="text" size="23" value="f(x)=8x^2-6x+23" disabled="disabled"/>
    <br />
    <input type ="text" size="23" id="answer" /> 
    <span style="direction:ltr">=f''(x)</span>
    <input type ="text" id="m1" size="40" style="display: none; background-color:silver; font-weight:bold;" disabled="disabled" />
    <br />
    <input type="button" value="בדיקה" onclick="return chkAns(8,-6,23);"/>
    
</asp:Content>
