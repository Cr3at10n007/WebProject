<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="ProjectTaba_Vlad.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script>
            function isQout(mail) {
                var qout = '\"', qout1 = "\'";
                if (mail.indexOf(qout) != -1 || mail.indexOf(qout1) != -1) {
                    return false;
                }
                return true;



            }


            function isHebrew(mail) {
                var len = mail.length;
                var i = 0, ch;
                while (i < len) {
                    ch = mail.charAt(i);
                    if (ch >= 'א' && ch <= 'ת')
                        return false;
                    i++;
                }
                return true;
            }

            function isValidString(mail) {
                var badChr = "$%^&*()-!{}[]<>?";
                var len = mail.length;
                var i = 0, pos, ch;
                while (i < len) {
                    ch = mail.charAt(i);
                    pos = badChr.indexOf(ch);
                    if (pos != -1)
                        return false;
                    i++;
                }
                return true;
            }

            function chkForm() {
                var uName = document.getElementById("uName").value;
                let flag = true;
                if (uName.length < 2) {//check the User Name
                    document.getElementById("mUName").value = "שם משתמש קצר מדי";
                    document.getElementById("mUName").style.display = "inline"
                    flag = false;
                }
                else {
                    document.getElementById("mUName").style.display = "none";
                }
                var fName = document.getElementById("fName").value;
                if (fName.length < 2)//check the First Name
                {
                    document.getElementById("mFName").value = "שם פרטי קצר מדי";
                    document.getElementById("mFName").style.display = "inline"
                    flag = false;
                }
                else {
                    document.getElementById("mFName").style.display = "none";
                }
                var lName = document.getElementById("lName").value;
                if (lName.length < 2) {//check the Last Name
                    document.getElementById("mLName").value = "שם משפחה קצר מדי";
                    document.getElementById("mLName").style.display = "inline"
                    flag = false;
                }
                else {
                    document.getElementById("mLName").style.display = "none";
                }
                var email = document.getElementById("email").value;
                var size = email.length;
                var atSign = email.indexOf('@');
                var dotSign = email.indexOf('.', atSign);

                var msg = "";
                if (size < 6) //check the Email
                    msg = "אימייל קצר מדי";
                else if (atSign == -1)
                    msg = "אין @ בכתובת";
                else if (atSign != email.lastIndexOf('@'))
                    msg = "אסור יותר מ@ אחד בכתובת";
                else if (atSign < 2 || email.lastIndexOf('@') == size - 1)
                    msg = "@ לא יכול להיות בתחילת או בסוף הכתובת";
                else if (email.indexOf('.') == 0 || email.lastIndexOf('.') == size - 1)
                    msg = "נקודה לא יכולה להיות בתחילת או בסוף הכתובת";
                else if (dotSign - atSign <= 1)
                    msg = "נקודה צריכה להיות לפחות במרחק של 2 תווים מה@";
                else if (!isQout(email))
                    msg = "לא יכול להיות ' או \" בכתובת אימייל";
                else if (!isHebrew(email))
                    msg = "לא יכול להיות עברית בכתובת אימייל";
                else if (!isValidString(email))
                    msg = "נמצאו תווים לא חוקיים בכתובת";

                if (msg != "") {//Email error display
                    document.getElementById('mEmail').value = msg;
                    document.getElementById('mEmail').style.display = "inline";
                    flag = false;
                }
                else {
                    document.getElementById('mEmail').style.display = "none";
                }
                var msg = "";
                var yearBorn = document.getElementById("yearBorn").value;
                if (isNaN(yearBorn))
                    msg = "שנת לידה חייבת להכיל ספרות בלבד";
                else if (yearBorn.length < 4)
                    msg = "שנת לידה חייבת להיות 4 ספרות"
                else {
                    var d = new Date();
                    var year = parseInt(d.getFullYear());
                    if (year - parseInt(yearBorn) < 12 || year - parseInt(yearBorn) > 18) {
                        msg = "אתה לא בגיל הנכון, החומר הזה לא בשבילך";
                    }
                }

                if (msg != "") {
                    document.getElementById("mYearBorn").value = msg;
                    document.getElementById("mYearBorn").style.display = "inline";
                    flag = false;
                }
                else {
                    document.getElementById("mYearBorn").style.display = "none";
                }

                var pw = document.getElementById("pw").value;
                var pwOth = document.getElementById("pwOth").value;
                var msg = "";

                if (pw != pwOth) {
                    msg = "הסיסמאות לא זהות";
                    flag = false;
                }
                else {
                    if (pw.length < 6 || pw.length > 20) {
                        msg = "סיסמה צריכה להיות בין 6-20 תווים";
                        flag = false;
                    }
                }



                if (msg != "") {//Password error display
                    document.getElementById("mPw").value = msg;
                    document.getElementById("mPw").style.display = "inline";
                    flag = false;
                }
                else {
                    document.getElementById("mPw").style.display = "none";
                }

                return flag;
            }


        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form method="post" runat="server" onsubmit ="return chkForm();">
        <table>
            <tr>
                <td>
                    שם משתמש
                </td>
                <td><input type="text" id="uName" name="uName"/></td>
                <td style="border:none"><input type="text" id="mUName" size="30" style="display:none; background-color: #393E46; font-weight:bold; color: #EEEEEE" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>
                    שם פרטי
                </td>
                <td><input type="text" id="fName" name="fName"/></td>
                 <td style="border:none"><input type="text" id="mFName" size="30" style="display:none; background-color: #393E46; font-weight:bold; color: #EEEEEE" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>
                    שם משפחה
                </td>
                <td><input type="text" id="lName" name="lName"/></td>
                 <td style="border:none;"><input type="text" id="mLName" size="30" style="display:none; background-color: #393E46; font-weight:bold; color: #EEEEEE" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>
                    כתובת דוא''ל
                </td>
                <td><input type="text" id="email" name="email"/></td>
                <td style="border:none"><input type="text" id="mEmail" size="30" style="display:none; background-color: #393E46; font-weight:bold;color: #EEEEEE" disabled="disabled"/></td>
            </tr>
            <tr>
                <td>מגדר</td>
                <td><input type="radio" name="gender" value="male" checked="checked"/> Male
                    <input type="radio" name="gender" value="female"/> Female
                    <input type="radio" name="gender" value="Other"/> Other

                </td>
               


            </tr>
            <tr>
                <td>עיר מגורים</td>
                <td>
                    <select name="city" id="city">
                        <option value="Haifa">חיפה</option>
                        <option value="Ashdod" checked="checked">אשדוד</option>
                        <option value="Tel-Aviv">תל אביב </option>
                        <option value="Eilat">אילת</option>
                        <option value="Be'er sheva">באר שבע</option>
                        <option value="Hadera">חדרה</option>
                        <option value="Petah tikva">פתח תקווה</option>
                        <option value="Jerusalem">ירושלים</option>

                    </select>



                </td>

            </tr>
            <tr>
                <td>שנת לידה</td>
                <td>
                 <input type ="text" id="yearBorn" name ="yearBorn" />
                </td>
                <td style="border:none;">
                    <input type="text" id="mYearBorn" size="40" style="display: none; background-color: #393E46; font-weight:bold; color: #EEEEEE"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>נושאים אהובים במתמטיקה</td>
                <td>
                    
                    <table style="width:550px; border:none">
                        <tr>
                            <td style="border: none"><input type="checkbox" name="Subjects" value="Series"/>סדרות</td>
                            <td style="border: none"><input type="checkbox" name="Subjects" value="Movement Problems"/>בעיות תנועה</td>
                            <td style="border: none"><input type="checkbox" name="Subjects" value="Calculus" checked="checked"/>חדוו''א</td>
                        </tr>

                    </table></td>
            </tr>
            <tr><td>סיסמה</td>
                <td> <input type="password" name="pw" id="pw" size ="10"/> <span style="color:#00ADB5;">* 6-20 characters</span></td>
                <td style="border:none"><input type="text" id="mPw" size="40" style="display: none; background-color: #393E46; font-weight:bold; color: #EEEEEE"
                        disabled="disabled" /></td>
            
            
            </tr>
            <tr><td>אימות סיסמה</td><td>
<input type="password" name="pwOth" id="pwOth" size ="10"/> <span style="color:#00ADB5;">* it's must be the same as before</span> </td>
                <td style="border:none;"><input type="text" id="mPwOth" size="40" style="display: none; background-color: #393E46; font-weight:bold; color: #EEEEEE"
                        disabled="disabled" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">  

                    <input type="submit" name="submit" value="Send"/>
                      
                </td>

            </tr>
        </table>
    </form>
        <br />
        
</asp:Content>