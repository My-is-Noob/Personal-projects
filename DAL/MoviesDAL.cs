using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace DAL
{
    public class MoviesDAL
    {
        /// <summary>
        /// 查询电影表
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        /// 
        #region
        //public List<Model.Movies> GetMovies(string where = null)
        //{
        //    List<Model.Movies> movies = new List<Model.Movies>();

        //    if (SQLHelp.OpenConnection())
        //    {
        //        SqlDataReader dr = SQLHelp.ExecReader("select * from [Movies] where [MoviesID]=0 " + where);

        //        if (dr != null)
        //        {
        //            while (dr.Read())
        //                movies.Add(new Model.Movies((int)dr["MoviesID"], dr["MoviesName"] as string,
        //                    (int)dr["ReleaseDate"], (int)dr["MoviesType"], (int)dr["MoviesLanguage"],
        //                    (int)dr["MoviesRegion"], (int)dr["MoviesYears"], dr["MoviesDirector"] as string,
        //                    dr["MoviesActors"] as string, dr["MoviesDesc"] as string));
        //        }

        //        dr.Close();
        //        SQLHelp.CloseConnection();
        //    }

        //    return movies;
        //}
#endregion

        public List<Model.Movies> GetMovies(string whereStr=null,int start=1,int end=20)
        {
            List<Model.Movies> movies = new List<Model.Movies>();

            if (SQLHelp.OpenConnection())
            {
                SqlDataReader dr = SQLHelp.ExecReader("select * from Movies");

                if (dr != null)
                {
                    while (dr.Read())
                        movies.Add(new Model.Movies { MoviesID = (int)dr["MoviesID"],MoviesName=dr["MoviesName"]as string,MoviesNameID=dr["MoviesNameID"]as string,ReleaseDate=(int)dr["ReleaseDate"],MoviesType=(int)dr["MoviesType"],MoviesLanguage=(int)dr["MoviesLanguafe"],MoviesRegion=(int)dr["MoviesRegion"],MoviesYears=(int)dr["MoviesYears"],MoviesDirector=dr["MoviesDirector"]as string,MoviesActors=dr["MoviesActors"]as string,MoviesDesc=dr["MoviesDesc"]as string });
                }
                dr.Close();
                SQLHelp.CloseConnection();
            }
            return movies;
        }

        //获取电影数量
        public int GetMovies()
        {
            return (int)SQLHelp.ExecScalar("select count(*) from [view_Movies]");
        }

        //添加电影信息
        public int InsertMovies(Model.Movies movies)
        {
            return SQLHelp.ExecQuery("insert into [Movies]([MoviesID],[MoviesName],[MoviesNameID],[ReleaseDate],MoviesType],[MoviesLanguage],[MoviesRegion],[MoviesYears],[MoviesDirector],[MoviesActors],[MoviesDesc]) " +
                "values('"+ movies.MoviesID + "','"+movies.MoviesName+"','"+movies.MoviesNameID+"','"+movies.ReleaseDate+"'+'"+movies.MoviesType+"','"+movies.MoviesLanguage+"','"+movies.MoviesRegion+"','"+movies.MoviesDirector+"','"+movies.MoviesActors+"',"+movies.MoviesDesc+"',0,0)");
        }
    }
}
