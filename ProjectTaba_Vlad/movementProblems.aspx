<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="movementProblems.aspx.cs" Inherits="ProjectTaba_Vlad.movementProblems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            direction:rtl;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-decoration:underline; font-weight:bolder;text-align:center;font-size:2em;">בעיות תנועה</h2>
    <p>סוג זה של בעיות עוסק בשינויים של מרחק, זמן ומהירות. מושגים אלו הם חשובים להבנה, נסביר כל אחד מהם בקצרה:
    <br />
    <span style="text-decoration: underline;">מרחק -</span> הדרך שגוף מסוים (ילד,רכבת, מכונית וכיו"ב) עובר. יחידות מקובלות בבגרות במתמטיקה הן ק"מ.
    <br />
    <span style="text-decoration: underline;">זמן -</span> כולנו יודעים מה זה, נמדד בבגרות בדר"כ ביחידות של שעה.
     <br />
    <span style="text-decoration: underline;">מהירות -</span> באופן הכי כללי שיכול להיות (ושמתאים לבגרות) המהירות היא הדרך חלקי הזמן. נמדדת לרוב בקמ"ש.
    <br />
    משלוש ההגדרות לעיל ניתן לרשום את הנוסחא הראשונה והבסיסית בבעיות תנועה : x=vt. כאשר, x הוא המרחק, v היא המהירות, t הוא הזמן.
    <br />
    חשוב לא להתבלבל ביחידות בעת שמשתמשים בנוסחא. 
    <br />
    <span style="text-decoration: underline;">מהירות ממוצעת</span> היא כל הדרך שעבר הגוף, לזמן שעבר אותה. ההבדל בינה לבין מהירות היא שמהירות היא נקודתית, בעוד שמהירות ממוצעת היא המהירות האמצעית שהגוף נע בה לאורך כל המסלול.
    <br />
    <span style="text-decoration: underline;">מהירות יחסית בין שני גופים</span> היא סכום המהירויות שלהם. לדוגמא, אם גוף אחד נע ימינה במהירות 10 קמ"ש, גוף שני נע שמאלה במהירות של 5 קמ"ש, המהירות היחסית היא 15 קמ"ש (בכיוון החיובי). ניתן להבין זאת גם כך : כעבור שעה אחת המרחק ביניהם יגדל ב15 קמ"ש. בדרך דומה נגדיר הפוך - אם שני הגופים הקודמים היו הולכים באותו הכיוון, המהירות היחסית הייתה 5 קמ"ש ולא 15 קמ"ש. מדוע? כי אם הראשון עבר 10 ק"מ, השני עבר 5 ק"מ אך באותו כיוון, לכן המרחק ביניהם הוא 5 קמ"ש. נסכם: אם הגופים נעים באותו כיוון במהירויות x,y חיוביות (כלומר בערך מוחלט) המהירות היחסית של x ל y היא x-y. אם הגופים נעים בכיוונים מנוגדים, המהירות היחסית היא x+y.
    <br />
    באופן כללי זה כל מה שצריך לדעת (מפתיע, נכון?). בפועל, הבעיות הרבה יותר מורכבות מהצבה בנוסחא הראשונה, או באלה שבאות אחריה.
    <br />
    </p>
</asp:Content>
