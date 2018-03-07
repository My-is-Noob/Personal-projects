using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Movies
    {
        /// <summary>
        /// 电影表
        /// </summary>
        public Movies() { }

        public Movies(int moviesId,string moviesName,string moviesNameID,decimal releaseDate,int moviesType,int moviesLanguage,int moviesRegion,int moviesYears,string moviesDirector,string moviesActors,string moviesDesc)
        {
            MoviesID = moviesId;
            MoviesName = moviesName;
            MoviesNameID = moviesNameID;
            ReleaseDate = releaseDate;
            MoviesType = moviesType;
            MoviesLanguage = moviesLanguage;
            MoviesRegion = moviesRegion;
            MoviesYears = moviesYears;
            MoviesDirector = moviesDirector;
            MoviesActors = moviesActors;
            MoviesDesc = moviesDesc;
        }

        public int MoviesID { get;  set; }
        public string MoviesName { get;  set; }
        public string MoviesNameID { get; set; }
        public decimal ReleaseDate { get;  set; }
        public int MoviesType { get;  set; }
        public int MoviesLanguage { get;  set; }
        public int MoviesRegion { get;  set; }
        public int MoviesYears { get;  set; }
        public string MoviesDirector { get;  set; }
        public string MoviesActors { get;  set; }
        public string MoviesDesc { get;  set; }
    }
}
