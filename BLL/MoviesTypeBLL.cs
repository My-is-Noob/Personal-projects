using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    public class MoviesTypeBLL
    {
        #region
        //public List<Model.MoviesType> GetMoviesType(int moviestypeID = 0)
        //{
        //    string where = "";

        //    if (moviestypeID > 0)
        //        where += " and [MoviesTypeID]=" + moviestypeID;

        //    return new DAL.MoviesTypeDAL().GetMoviesType(where);
        //}

        //public Model.MoviesType GetMoviesType(string id)
        //{
        //    return new DAL.MoviesTypeDAL().GetMoviesType(" and [ID]='" + id + "'")[0];
        //}
#endregion

        public List<Model.MoviesType> GetMoviesType()
        {
            return new DAL.MoviesTypeDAL().GetMoviesType();
        }
    }
}
