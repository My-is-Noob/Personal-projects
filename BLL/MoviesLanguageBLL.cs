using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MoviesLanguageBLL
    {
        #region
        //public List<Model.MoviesLanguage> GetMoviesLanguage(int movieslanguageID = 0)
        //{
        //    string where = "";

        //    if (movieslanguageID > 0)
        //        where += "and[MoviesLanguageID]=" + movieslanguageID;

        //    return new DAL.MoviesLanguageDAL().GetMoviesLanguage(where);
        //}

        //public Model.MoviesLanguage GetMoviesLanguage(string id)
        //{
        //    return new DAL.MoviesLanguageDAL().GetMoviesLanguage(" and [ID]='" + id + "'")[0];
        //}
#endregion

        public List<Model.MoviesLanguage> GetMoviesLanguage()
        {
            return new DAL.MoviesLanguageDAL().GetMoviesLanguage();
        }
    }
}
