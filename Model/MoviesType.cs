using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class MoviesType
    {
        /// <summary>
        /// 电影类型表
        /// </summary>
        /// 
        public MoviesType() { }

        public MoviesType(int moviestypeID, string moviestypeName)
        {
            MoviesTypeID = moviestypeID;
            MoviesTypeName = moviestypeName;
        }

        public int MoviesTypeID { get;  set; }
        public string MoviesTypeName { get;  set; }
    }
}
