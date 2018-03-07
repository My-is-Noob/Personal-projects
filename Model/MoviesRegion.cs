using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class MoviesRegion
    {
        /// <summary>
        /// 电影地区表
        /// </summary>
        public MoviesRegion() { }

        public MoviesRegion(int moviesregionID,string moviesregionName)
        {
            MoviesRegionID = moviesregionID;
            MoviesRegionName = moviesregionName;
        }

        public int MoviesRegionID { get;  set; }
        public string MoviesRegionName { get;  set; }
    }
}
