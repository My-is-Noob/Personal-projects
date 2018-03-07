using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Model;

namespace BLL
{
   public class UserBLL
    {
        public List<Model.User> GetUser()
        {
            List<Model.User> user = new List<Model.User>();

            return new DAL.UserDAL().GetUser();

        }

        public User GetUser(string v, string text)
        {
            throw new NotImplementedException();
        }
    }
}
