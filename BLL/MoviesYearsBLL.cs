using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MoviesYearsBLL
    {
        #region
        //public List<Model.MoviesYears> GetMoviesYears(int moviesyearsID = 0)
        //{
        //    string where = "";

        //    if (moviesyearsID > 0)
        //        where += " and [MoviesYearsID]=" + moviesyearsID;

        //    return new DAL.MoviesYearsDAL().GetMoviesYears(where);
        //}

        //public Model.MoviesYears GetMoviesYears(string id)
        //{
        //    return new DAL.MoviesYearsDAL().GetMoviesYears(" and [ID]='" + id + "'")[0];
        //}
#endregion
        public List<Model.MoviesYears> GetMoviesYears()
        {
            return new DAL.MoviesYearsDAL().GetMoviesYears();
        }
    }
}
