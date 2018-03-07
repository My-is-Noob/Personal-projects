using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAL
{
    public class FormatTableDAL
    {
        /// <summary>
        /// 查询音乐格式
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        /// 
        #region 
        //public List<Model.FormatTable> GetFormatTable(string where = null)
        //{
        //    List<Model.FormatTable> formattable = new List<Model.FormatTable>();

        //    if (SQLHelp.OpenConnection())
        //    {
        //        SqlDataReader dr = SQLHelp.ExecReader("select * from [FormatTableDAL] where [FormatID]=0" + where);

        //        if (dr != null)
        //        {
        //            while (dr.Read())
        //                formattable.Add(new Model.FormatTable((int)dr["FormatID"],dr["FormatName"] as string));
        //        }
        //        dr.Close();
        //        SQLHelp.CloseConnection();
        //    }

        //    return formattable;
        //}
#endregion

        public List<Model.FormatTable> GetFormatTable()
        {
            List<Model.FormatTable> formattable = new List<Model.FormatTable>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from FormatTable");

                if (dr != null)
                {
                    while (dr.Read())
                        formattable.Add(new Model.FormatTable { FormatID = (int)dr["FormatID"], FormatName = dr["FormatName"] as string });

                }
                dr.Close();
                SQLHelp.CloseConnection();
            }
            return formattable;
        }
    }
}
