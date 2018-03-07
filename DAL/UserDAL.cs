using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public class UserDAL
    {
        public List<Model.User> GetUser()
        {
            List<Model.User> user = new List<Model.User>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from User");

                if (dr != null)
                {
                    while (dr.Read())
                        user.Add(new Model.User { UserID = (int)dr["UserID"], UserName = dr["UserName"] as string, UserNumber = dr["UserNumber"] as string, Password = dr["Password"] as string, Mailbox = dr["Mailbox"] as string, Gender = dr["Gender"] as string });

                }
                dr.Close();
                SQLHelp.CloseConnection();
            }
            return user;
        }
    }
}
