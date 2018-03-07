using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class MoviesLanguage
    {
        /// <summary>
        /// 电影语言表
        /// </summary>
        public MoviesLanguage() { }

        public MoviesLanguage(int movieslanguageID,string movieslanguageName)
        {
            MoviesLanguageID = movieslanguageID;
            MoviesLanguageName = movieslanguageName;
        }

        public int MoviesLanguageID { get;  set; }
        public string MoviesLanguageName { get;  set; }
    }
}
