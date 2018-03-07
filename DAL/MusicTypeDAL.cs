using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class MusicTypeDAL
    {
        /// <summary>
        /// 音乐类型表
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        /// 
        #region
        //public List<Model.MusicType> GetMusicType(string where = null)
        //{
        //    List<Model.MusicType> musictype = new List<Model.MusicType>();

        //    if (SQLHelp.OpenConnection())
        //    {
        //        SqlDataReader dr = SQLHelp.ExecReader("select * from [MusicType] where [MusicTypeID]=0 " + where);

        //        if (dr != null)
        //        {
        //            while (dr.Read())
        //                musictype.Add(new Model.MusicType((int)dr["MusicTypeID"], dr["MusicTypeName"] as string));
        //        }

        //        dr.Close();
        //        SQLHelp.CloseConnection();
        //    }

        //    return musictype;
        //}
        #endregion

        public List<Model.MusicType> GetMusicType()
        {
            List<Model.MusicType> musictype = new List<Model.MusicType>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from MusicType");

                if (dr != null)
                {
                    while (dr.Read())
                        musictype.Add(new Model.MusicType { MusicTypeID = (int)dr["MusicTypeID"], MusicTypeName = dr["MusicTypeName"] as string });

                }
                dr.Close();
                SQLHelp.CloseConnection();
            }
            return musictype;
        }
    }
}
