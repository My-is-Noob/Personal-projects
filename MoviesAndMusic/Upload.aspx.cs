using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoviesAndMusic
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //判断客户端是否选择了文件
            if (FileUpload1.HasFile)
            {
                try
                {
                    //将文件保存到服务器上:保存路径
                    FileUpload1.SaveAs("D:/Visual Studio/个人项目/FileUpload" + FileUpload1.FileName);

                    //显示文件的相关信息
                    Label1.Text = "文件名：" + FileUpload1.PostedFile.FileName + "<br/>"
                        +"文件大小："+FileUpload1.PostedFile.ContentLength+"字节<br/>"
                        + "文件类型：" + FileUpload1.PostedFile.ContentType;
                }
                catch(Exception ex)
                {
                    Label1.Text = "异常：" + ex.Message;
                }
            }
            else
            {
                Label1.Text = "请选择一个文件";
            }

            if (this.FileUpload1.HasFile)
            {
                string fileExt = (System.IO.Path.GetExtension(FileUpload1.FileName)).ToLower();

                if (fileExt == ".wmv" || fileExt == ".avi")
                {
                    FileUpload1.SaveAs(Server.MapPath(FileUpload1.FileName));
                }
            }
        }
    }
}