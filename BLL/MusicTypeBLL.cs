using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MusicTypeBLL
    {
        #region
        //public List<Model.MusicType> GetMusicType(int musictypeID = 0)
        //{
        //    string where = "";

        //    if (musictypeID > 0)
        //        where += " and [MusicTypeID]=" + musictypeID;

        //    return new DAL.MusicTypeDAL().GetMusicType(where);
        //}

        //public Model.MusicType GetMusicType(string id)
        //{
        //    return new DAL.MusicTypeDAL().GetMusicType(" and [ID]='" + id + "'")[0];
        //}
#endregion

        public List<Model.MusicType> GetMusicType()
        {
            return new DAL.MusicTypeDAL().GetMusicType();
        }
    }
}
