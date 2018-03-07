using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class MoviesTypeDAL
    { /// <summary>
      /// 查询电影类型表
      /// </summary>
      /// <param name="where"></param>
      /// <returns></returns>
      /// 
        #region
        //public List<Model.MoviesType> GetMoviesType(string where = null)
        //{
        //    List<Model.MoviesType> moviestype = new List<Model.MoviesType>();

        //    if (SQLHelp.OpenConnection())
        //    {
        //        SqlDataReader dr = SQLHelp.ExecReader("select * from [MoviesType] where [MoviesTypeID]=0 " + where);

        //        if (dr != null)
        //        {
        //            while (dr.Read())
        //                moviestype.Add(new Model.MoviesType((int)dr["MoviesTypeID"], dr["MoviesTypeName"] as string));
        //        }

        //        dr.Close();
        //        SQLHelp.CloseConnection();
        //    }

        //    return moviestype;
        //}
#endregion

        public List<Model.MoviesType> GetMoviesType()
        {
            List<Model.MoviesType> moviestype = new List<Model.MoviesType>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from MoviesType");

                if (dr != null)
                {
                    while (dr.Read())
                        moviestype.Add(new Model.MoviesType { MoviesTypeID = (int)dr["MoviesTypeID"], MoviesTypeName = dr["MoviesTypeName"] as string });

                }
                dr.Close();
                SQLHelp.CloseConnection();
            }
            return moviestype;
        }
    }
}
