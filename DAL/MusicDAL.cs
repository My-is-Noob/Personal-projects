using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL
{
    public class MusicDAL
    {
        /// <summary>
        /// 查询音乐表
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        /// 
        #region
        //public List<Model.Music> GetMusic(string where = null)
        //{
        //    List<Model.Music> music = new List<Model.Music>();

        //    if (SQLHelp.OpenConnection())
        //    {
        //        SqlDataReader dr = SQLHelp.ExecReader("select * from [Music] where [Music]=0 " + where);

        //        if (dr != null)
        //        {
        //            while (dr.Read())
        //                music.Add(new Model.Music((int)dr["MusicID"], dr["MusicName"] as string, dr["MusicSinger"] as string, (int)dr["MusicType"], (int)dr["FormatNames"]));
        //        }

        //        dr.Close();
        //        SQLHelp.CloseConnection();
        //    }

        //    return music;
        //}
        #endregion

        public List<Model.Music> GetMusic()
        {
            List<Model.Music> music = new List<Model.Music>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from view_Music");

                if (dr != null)
                {
                    while (dr.Read())
                        music.Add(new Model.Music { MusicID = (int)dr["MusicID"], MusicName = dr["MusicName"] as string, MusicSinger = dr["MusicSinger"] as string, MusicType = (int)dr["MusicType"],FormatNames=(int)dr["FormatName"] });

                }
                dr.Close();
                SQLHelp.CloseConnection();
            }
            return music;
        }
    }
}
