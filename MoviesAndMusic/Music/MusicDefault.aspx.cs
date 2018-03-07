using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoviesAndMusic.Music
{
    public partial class MusicDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropMusicType();
                DropFormatTable();
            }
        }

        //音乐类型
        private void DropMusicType()
        {
            //创建业务逻辑对象
            BLL.MusicTypeBLL musicType = new BLL.MusicTypeBLL();

            //设置绑定数据源
            DroMusicType.DataSource = musicType.GetMusicType();
            DroMusicType.DataTextField = "MusicTypeName";
            DroMusicType.DataValueField = "MusicTypeID";
            //绑定数据
            DroMusicType.DataBind();
        }
        //音乐格式
        private void DropFormatTable()
        {
            //创建业务逻辑对象
            BLL.FormatTableBLL formatTable = new BLL.FormatTableBLL();

            //设置绑定数据源
            DroFormatName.DataSource = formatTable.GetFormatTable();
            DroFormatName.DataTextField = "FormatName";
            DroFormatName.DataValueField = "FormatID";

            //绑定数据
            DroFormatName.DataBind();
        }
        
    }
}