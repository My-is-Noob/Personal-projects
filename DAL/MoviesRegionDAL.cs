using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace DAL
{
    public class MoviesRegionDAL
    {
        /// <summary>
        /// 查询电影地区表
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        /// 
        #region
        //public List<Model.MoviesRegion> GetMoviesRegion(string where = null)
        //{
        //    List<Model.MoviesRegion> moviesregion = new List<Model.MoviesRegion>();

        //    if (SQLHelp.OpenConnection())
        //    {
        //        SqlDataReader dr = SQLHelp.ExecReader("select * from [MoviesRegion] where [MoviesRegionID]=0 " + where);

        //        if (dr != null)
        //        {
        //            while (dr.Read())
        //                moviesregion.Add(new Model.MoviesRegion((int)dr["MoviesRegionID"], dr["MoviesRegionName"] as string));
        //        }

        //        dr.Close();
        //        SQLHelp.CloseConnection();
        //    }

        //    return moviesregion;
        //}
        #endregion

        public List<Model.MoviesRegion> GetMoviesRegion()
        {
            List<Model.MoviesRegion> moviesregion = new List<Model.MoviesRegion>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from MoviesRegion");

                if (dr != null)
                {
                    while (dr.Read())
                        moviesregion.Add(new Model.MoviesRegion { MoviesRegionID = (int)dr["MoviesRegionID"], MoviesRegionName = dr["MoviesRegionName"] as string });

                }
                dr.Close();
                SQLHelp.CloseConnection();
            }
            return moviesregion;
        }
    }
}
