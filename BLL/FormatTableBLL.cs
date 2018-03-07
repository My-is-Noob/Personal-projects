using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class FormatTableBLL
    {
        #region
        //public List<Model.FormatTable> GetFormatTable(int formattableID = 0)
        //{
        //    string where = "";

        //    if (formattableID > 0)
        //        where += "and[FormatTableID]=" + formattableID;

        //    return new DAL.FormatTableDAL().GetFormatTable(where);
        //}

        //public Model.FormatTable GetFormatTable(string id)
        //{
        //    return new DAL.FormatTableDAL().GetFormatTable("and[ID]='" + id + "'")[0];
        //}
#endregion
        public List<Model.FormatTable> GetFormatTable()
        {
            return new DAL.FormatTableDAL().GetFormatTable();
        }
    }
}
