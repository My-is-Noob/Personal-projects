using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MoviesBLL
    {
        #region
        //public List<Model.Movies> GetMovies(int moviesID = 0)
        //{
        //    string where = "";

        //    if (moviesID > 0)
        //        where += " and [MoviesID]=" + moviesID;

        //    return new DAL.MoviesDAL().GetMovies(where);
        //}

        //public Model.Movies GetBook(string id)
        //{
        //    return new DAL.MoviesDAL().GetMovies(" and [ID]='" + id + "'")[0];
        //}
#endregion
        public List<Model.Movies> GetMovies(int moviesID=0)
        {
            string where = "";
            if (moviesID > 0)
                where += "and[MoviesID]=" + moviesID;

            return new DAL.MoviesDAL().GetMovies(where);
        }

        public Model.Movies GetMovies(string id)
        {
            return new DAL.MoviesDAL().GetMovies("and[MoviesID]='" + id + "'")[0];
        }
    }
}
