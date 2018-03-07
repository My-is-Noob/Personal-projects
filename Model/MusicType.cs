using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class MusicType
    {
        /// <summary>
        /// 音乐类型表
        /// </summary>
        public MusicType() { }

        public MusicType(int musictypeID, string musictypeName)
        {
            MusicTypeID = musictypeID;
            MusicTypeName = musictypeName;
        }

        public int MusicTypeID { get;  set; }
        public string MusicTypeName { get;  set; }
    }
}
