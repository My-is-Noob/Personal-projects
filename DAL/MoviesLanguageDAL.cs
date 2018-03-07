using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class MoviesLanguageDAL
    {
        /// <summary>
        /// 查询电影语言表
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        /// 
        #region
        //public List<Model.MoviesLanguage> GetMoviesLanguage(string where = null)
        //{
        //    List<Model.MoviesLanguage> movieslanguage = new List<Model.MoviesLanguage>();

        //    if (SQLHelp.OpenConnection())
        //    {
        //        SqlDataReader dr = SQLHelp.ExecReader("select * from [MoviesLanguage] where [MoviesLanguageID]=0 " + where);

        //        if (dr != null)
        //        {
        //            while (dr.Read())
        //                movieslanguage.Add(new Model.MoviesLanguage((int)dr["MovieLanguageID"], dr["MoviesLanguageName"] as string));
        //        }

        //        dr.Close();
        //        SQLHelp.CloseConnection();
        //    }

        //    return movieslanguage;
        //}
        #endregion

        public List<Model.MoviesLanguage> GetMoviesLanguage()
        {
            List<Model.MoviesLanguage> list = new List<Model.MoviesLanguage>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from MoviesLanguage");

                if (dr != null)
                {
                    while (dr.Read())
                    {
                        list.Add(new Model.MoviesLanguage { MoviesLanguageID = (int)dr["MoviesLanguageID"], MoviesLanguageName = dr["MoviesLanguageName"] as string });
                    }
                }
                dr.Close();
                SQLHelp.CloseConnection();
            }
            return list;
        }
    }
}
