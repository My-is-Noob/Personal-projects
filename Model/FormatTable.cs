using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class FormatTable
    {
        /// <summary>
        /// 音乐格式信息表
        /// </summary>
        public FormatTable() { }

        public FormatTable( int formatId,string formatName)
        {
            FormatID = formatId;
            FormatName = formatName;
        }

        public int FormatID { get;  set; }
        public string FormatName { get;  set; }
    }
}
