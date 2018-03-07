using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MoviesRegionBLL
    {
        #region
        //public List<Model.MoviesRegion> GetMoviesRegion(int moviesregionID = 0)
        //{
        //    string where = "";

        //    if (moviesregionID > 0)
        //        where += " and [MoviesRegionID]=" + moviesregionID;

        //    return new DAL.MoviesRegionDAL().GetMoviesRegion(where);
        //}

        //public Model.MoviesRegion GetMoviesRegion(string id)
        //{
        //    return new DAL.MoviesRegionDAL().GetMoviesRegion(" and [ID]='" + id + "'")[0];
        //}
#endregion
        public List<Model.MoviesRegion> GetMoviesRegion()
        {
            return new DAL.MoviesRegionDAL().GetMoviesRegion();
        }
    }
}
