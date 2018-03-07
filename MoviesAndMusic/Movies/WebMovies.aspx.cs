using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoviesAndMusic.Movies
{
    public partial class WebMovies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMovies();
            }
        }

        private void BindMovies()
        {
            dgdShowMovies.DataSource = new BLL.MoviesBLL().GetMovies();
            dgdShowMovies.DataBind();
        }
    }
}