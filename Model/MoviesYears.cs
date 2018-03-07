using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class MoviesYears
    {
        /// <summary>
        /// 电影年代表
        /// </summary>
        public MoviesYears() { }

        public MoviesYears(int moviesyearsID,string moviesyearsName)
        {
            MoviesYearsID = moviesyearsID;
            MoviesYearsName = moviesyearsName;
        }

        public int MoviesYearsID { get;  set; }
        public string MoviesYearsName { get;  set; }
    }
}
