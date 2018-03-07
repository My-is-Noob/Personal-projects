using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class MusicBLL
    {
        #region
        //public List<Model.Music> GteMusic(int musicID = 0)
        //{
        //    string where = "";

        //    if (musicID > 0)
        //        where += "and[MusicID]=" + musicID;

        //    return new DAL.MusicDAL().GetMusic(where);
        //}
        //public Model.Music GetMusic(string id)
        //{
        //    return new DAL.MusicDAL().GetMusic("and[ID]+'" + id + "'")[0];
        //}
#endregion

        public List<Model.Music> GetMusic()
        {
            return new DAL.MusicDAL().GetMusic();
        }
    }
}
