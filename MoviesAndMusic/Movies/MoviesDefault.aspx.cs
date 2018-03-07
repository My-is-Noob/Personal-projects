using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoviesAndMusic.Movies
{
    public partial class MoviesDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{

            //}
        }

        #region 电影数据库绑定下拉框格式（已注释）
        ////电影类型
        //private void DropMoviesType()
        //{
        //    //创建业务逻辑对象并获取对象
        //    BLL.MoviesTypeBLL moviesTypeBLL = new BLL.MoviesTypeBLL();
        //    List<Model.MoviesType> moviesTypes = moviesTypeBLL.GetMoviesType();
        //    //在数据源中添加新的数据
        //    Model.MoviesType moviesType = new Model.MoviesType();
        //    moviesType.MoviesTypeID = -1;
        //    moviesType.MoviesTypeName = "全部";
        //    moviesTypes.Insert(0, moviesType);
        //    //设置绑定数据源
        //    DroMovieType.DataSource = moviesTypes;
        //    //DroMovieType.DataSource = moviesTypeBLL.GetMoviesType();
        //    DroMovieType.DataTextField = "MoviesTypeName";
        //    DroMovieType.DataValueField = "MoviesTypeID";
        //    //绑定数据
        //    DroMovieType.DataBind();
        //}
        ////电影年份
        //private void DropMoviesYears()
        //{
        //    //创建业务逻辑对象并获取对象
        //    BLL.MoviesYearsBLL moviesYearsBLL = new BLL.MoviesYearsBLL();
        //    List<Model.MoviesYears> moviesYearss = moviesYearsBLL.GetMoviesYears();
        //    //在数据源中添加新的数据
        //    Model.MoviesYears moviesYears = new Model.MoviesYears();
        //    moviesYears.MoviesYearsID = -1;
        //    moviesYears.MoviesYearsName = "全部";
        //    moviesYearss.Insert(0, moviesYears);
        //    //设置绑定数据源
        //    DroMoviesYears.DataSource = moviesYearss;
        //    //DroMoviesYears.DataSource = moviesYearsBLL.GetMoviesYears();
        //    DroMoviesYears.DataTextField = "MoviesYearsName";
        //    DroMoviesYears.DataValueField = "MoviesYearsID";
        //    //绑定数据
        //    DroMoviesYears.DataBind();
        //}
        ////电影地区
        //private void DropMoviesRegion()
        //{
        //    //创建业务逻辑对象并获取对象
        //    BLL.MoviesRegionBLL moviesRegionBLL = new BLL.MoviesRegionBLL();
        //    List<Model.MoviesRegion> moviesRegions = moviesRegionBLL.GetMoviesRegion();
        //    //在数据源中添加新的数据
        //    Model.MoviesRegion moviesRegion = new Model.MoviesRegion();
        //    moviesRegion.MoviesRegionID = -1;
        //    moviesRegion.MoviesRegionName = "全部";
        //    moviesRegions.Insert(0, moviesRegion);
        //    //设置绑定数据源
        //    DroMoviesRegion.DataSource = moviesRegions;
        //    //DroMoviesRegion.DataSource = moviesRegionBLL.GetMoviesRegion();
        //    DroMoviesRegion.DataTextField = "MoviesRegionName";
        //    DroMoviesRegion.DataValueField = "MoviesRegionID";
        //    //绑定数据
        //    DroMoviesRegion.DataBind();
        //}
        ////电影语言
        //private void DropMoviesLanguage()
        //{
        //    //创建业务逻辑对象并获取对象
        //    BLL.MoviesLanguageBLL moviesLanguageBLL = new BLL.MoviesLanguageBLL();
        //    List<Model.MoviesLanguage> moviesLanguages = moviesLanguageBLL.GetMoviesLanguage();
        //    //在数据源添加新的数据
        //    Model.MoviesLanguage moviesLanguage = new Model.MoviesLanguage();
        //    moviesLanguage.MoviesLanguageID = -1;
        //    moviesLanguage.MoviesLanguageName = "全部";
        //    moviesLanguages.Insert(0, moviesLanguage);
        //    //设置绑定数据源
        //    DroMoviesLanguage.DataSource = moviesLanguages;
        //    //DroMoviesLanguage.DataSource = moviesLanguageBLL.GetMoviesLanguage();
        //    DroMoviesLanguage.DataTextField = "MoviesLanguageName";
        //    DroMoviesLanguage.DataValueField = "MoviesLanguageID";
        //    //绑定数据
        //    DroMoviesLanguage.DataBind();
        //}
        ////获取选中项，并显示
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    LblMsg.Text = "" + DroMoviesYears.SelectedItem.Text + "年份🕸";
        //    LblMsg.Text += "" + DroMovieType.SelectedItem.Text + "类型👣";
        //    LblMsg.Text += "" + DroMoviesRegion.SelectedItem.Text + "地区👁";
        //    LblMsg.Text += "" + DroMoviesLanguage.SelectedItem.Text + "语言🚩";
        //}
        #endregion



        #region 
        protected void BindGrid()
        {
            DataList1.DataSource = new BLL.MoviesBLL().GetMovies();
            DataList1.DataBind();
        }
#endregion

        protected void buyone_Click(object sender, EventArgs e)
        {
            Label1.Text = (TextBox1.Text + "未找到");
        }

        #region 分页
        //protected void BindRepeater(int index)
        //{
        //    PagedDataSource pd = new PagedDataSource();
        //    pd.AllowPaging = true;
        //    pd.PageSize = 5;

        //    BLL.MoviesBLL moviesBLL = new BLL.MoviesBLL();
        //    pd.DataSource = moviesBLL.GetMovies();

        //    if (index < 0)
        //        index = pd.PageCount - 1;
        //    if (index > pd.PageCount - 1)
        //        index = 0;

        //    pd.CurrentPageIndex = index;
        //    ViewState["Index"] = index;
        //    lblMsgs.Text = "第" + (index + 1) + "页/共" + pd.PageCount + "页";

        //    DataList1.DataSource = pd;
        //    DataList1.DataBind();
        //}
        #endregion
    }
}