using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ProjectTaba_Vlad
{
    public partial class userTable : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";
            string tableName = "usersTbl";
            sqlSelect = $"select * from {tableName}";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
            int length = table.Rows.Count;
            if (length == 0)
            {
                msg = "אין נרשמים באתר";
            }
            else
            {
                st += "<tr>";
                st += "<th>שם משתמש</th>";
                st += "<th>שם פרטי</th>";
                st += "<th>שם משפחה</th>";
                st += "<th>שנת לידה</th>";
                st += "<th>מגדר</th>";
                st += "<th>עיר מגורים</th >";
                st += "<th>סדרות</th>";
                st += "<th>בעיות תנועה</th>";
                st += "<th>חדוו''א</th>";
                st += "<th>סיסמה</th>";
                st += "</tr>";
                for (int i=0;i<length;i++)
                {
                    st += $"<tr>";
                    st += $"<th>{table.Rows[i]["uName"]}</th>";
                    st += $"<th>{table.Rows[i]["fName"]}</th>";
                    st += $"<th>{table.Rows[i]["lName"]}</th>";
                    st += $"<th>{table.Rows[i]["YearBorn"]}</th>";
                    st += $"<th>{table.Rows[i]["gender"]}</th>";
                    st += $"<th>{table.Rows[i]["city"]}</th >";
                    st += $"<th>{table.Rows[i]["series"]}</th>";
                    st += $"<th>{table.Rows[i]["Movement Problems"]}</th>";
                    st += $"<th>{table.Rows[i]["Calculus"]}</th>";
                    st += $"<th>{table.Rows[i]["pw"]}</th>";
                    st += $"</tr>";
                }
                msg = $"אנשים {length} נרשמו";
            }
        }
    }
}