using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class User
    {
        /// <summary>
        /// 用户表
        /// </summary>
        public User() { }

        public User(int userId, string userName,string userNumber, string passWord, string mailbox,string gender)
        {
            UserID = userId;
            UserName = userName;
            UserNumber = userNumber;
            Password = passWord;
            Mailbox = mailbox;
            Gender = gender;
        }

        public int UserID { get;  set; }
        public string UserName { get;  set; }
        public string UserNumber { get;  set; }
        public string Password { get;  set; }
        public string Mailbox { get;  set; }
        public string Gender { get;  set; }
    }
}
