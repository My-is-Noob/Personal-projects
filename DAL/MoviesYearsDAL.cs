using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class MoviesYearsDAL
    {
        /// <summary>
        /// 方法：查询电影年份
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        /// 
        #region
        public List<Model.MoviesYears> GetMoviesYears(string where = null)
        {
            List<Model.MoviesYears> moviesyears = new List<Model.MoviesYears>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from [MoviesYears] where [MoviesYearsID]=0 " + where);

                if (dr != null)
                {
                    while (dr.Read())
                        moviesyears.Add(new Model.MoviesYears((int)dr["MoviesYearsID"], dr["MoviesYearsName"] as string));
                }

                dr.Close();
                SQLHelp.CloseConnection();
            }

            return moviesyears;
        }
        #endregion

        public List<Model.MoviesYears> GetMoviesYears()
        {
            List<Model.MoviesYears> moviesyears = new List<Model.MoviesYears>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from MoviesYears");

                if (dr != null)
                {
                    while (dr.Read())
                        moviesyears.Add(new Model.MoviesYears { MoviesYearsID = (int)dr["MoviesYearsID"], MoviesYearsName = dr["MoviesYearsName"] as string });

                }
                dr.Close();
                SQLHelp.CloseConnection();
            }
            return moviesyears;
        }
    }
}
