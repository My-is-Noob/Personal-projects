using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoviesAndMusic.Movies
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //BLL.MoviesBLL moviesBLL = new BLL.MoviesBLL();
                //Repeater1.DataSource = moviesBLL.GetMovies();
                //Repeater1.DataBind();
            }
        }
    }
}