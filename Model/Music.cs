using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Music
    {
        /// <summary>
        /// 音乐表
        /// </summary>
        public Music() { }

        public Music(int musicID,string musicName,string musicSinger,int musicType,int formatNames)
        {
            MusicID = musicID;
            MusicName = musicName;
            MusicSinger = musicSinger;
            MusicType = musicType;
            FormatNames = formatNames;
        }

        public int MusicID { get;  set; }
        public string MusicName { get;  set; }
        public string MusicSinger { get;  set; }
        public int MusicType { get;  set; }
        public int FormatNames { get;  set; }
    }
}
