<%@ Page Title="" Language="C#" MasterPageFile="~/Movies/Movies.Master" AutoEventWireup="true" CodeBehind="WebMovies.aspx.cs" Inherits="MoviesAndMusic.Movies.WebMovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <hr />
    <%--图片轮播--%>
    <div  style="text-align:center">
        <style type="text/css">  
            /*设置轮播宽度及留空高度*/
        .show_p{  
            width: 400px;  
            height: 0px;            
            margin:  0 auto;  
            border: 2px solid block;  
            overflow: hidden;  
        }  
        /*设置轮播长度及宽度*/
        .scroll_p{  
            width: 1000%;  
            height: 100px; 
        }  
        /*设置图片长和高及居左*/
        .scroll_p img{  
            width: 180px;  
            height: 250px;  
            float: left;  
        }  
    </style>  
    <!-- end -->  
    <p class="show_p">  
        <p class="scroll_p">  
            <img src="../Image/MoviesImage/000001.jpg" alt="">
            <img src="../Image/MoviesImage/000002.jpg" alt="">  
            <img src="../Image/MoviesImage/000003.jpg" alt="">  
            <img src="../Image/MoviesImage/000004.jpg" alt="">  
            <img src="../Image/MoviesImage/000005.jpg" alt="">  
            <img src="../Image/MoviesImage/000006.jpg" alt="">  
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/MoviesImage/000007.jpg"  />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/MoviesImage/000008.jpg" />
            <asp:Image ID="Image4" runat="server" ImageUrl='<%# "../Image/MoviesImage/"+Eval("电影序列")+".jpg" %>' />
        </p>  
    </p>  
<!-- *********js代码******** -->  
<script type="text/javascript">  
    var scrollDiv = document.getElementsByClassName("scroll_p")[0];
    // 定义初始值  
    var left = 0;
    // 定义一个定时器 走一步   
    function move() {
        var timer = setInterval(function () {
            left--;
            if (left <= -1600) {
                left = 0;
            }
            if (left % -400 == 0) {
                clearInterval(timer);
                timer = null;
            }
            scrollDiv.style.marginLeft = left + "px";
        }, 10);
    }
    // 定义一个定时器 每隔固定时间 走一张  
    setInterval(function () {
        move();
    }, 5000);  
</script> 
</div>

    <hr />
    <%--文字滚动--%>
    <div style="width:100%;height:auto;background-color:#ffffff;margin:0px auto;text-align:center">
          <%--文字滚动--%>
            <marquee onMouseOver="this.stop();" onMouseOut="this.start();">大家好</marquee>
        </div>

    <hr />
    <%--搜索框及按钮--%>
    <div style="text-align:center">
	  搜索电影：<asp:TextBox ID="TextBox1" runat="server" placeholder="搜索从这里开始"></asp:TextBox>
    <asp:Button ID="buyone" runat="server" Text="搜索" />
        </div>

    <hr />
    <%--快捷选项--%>
    <div style="text-align:center">
        <dl>
            <dt>按类型：</dt>
            <dd>
                <a href="#全部"><asp:Label ID="labType" runat="server" Text="全部"></asp:Label></a>
                <a href="#喜剧"><asp:Label ID="Label1" runat="server" Text="喜剧"></asp:Label></a>
                <a href="#恐怖"><asp:Label ID="Label2" runat="server" Text="恐怖"></asp:Label></a>
                <a href="#战争"><asp:Label ID="Label3" runat="server" Text="战争"></asp:Label></a>
                <a href="#动作"><asp:Label ID="Label4" runat="server" Text="动作"></asp:Label></a>
                <a href="#家庭"><asp:Label ID="Label5" runat="server" Text="家庭"></asp:Label></a>
            </dd>
        </dl>
        <dl>
                    <dt>按地区：</dt>
                    <dd>
                        <a href="#全部">全部</a>
                        <a href="#喜剧">大陆</a>
                        <a href="#动作">欧美</a>
                        <a href="#恐怖">日本</a>
                        <a href="#战争">韩国</a>
                    </dd>
                </dl>
                <dl>
                    <dt>按年份：</dt>
                    <dd>
                        <a href="#全部">全部</a>
                        <a href="#喜剧">2018</a>
                        <a href="#动作">2017</a>
                        <a href="#恐怖">2016</a>
                        <a href="#战争">2015</a>
                    </dd>
                </dl>
    </div>

    <hr />
    <asp:DataList ID="dgdShowMovies" runat="server" RepeatColumns="5">
        <ItemTemplate>
            <table  style="width:100%;background-color:#a49f9f;margin-left:10px" onmouseover="this.style.backgroundColor='#d7d7d7';" onmouseout="this.style.backgroundColor='#C8E2B1';">
            <tr>
                <td>
                <a href='<%# "MoviesDetails.aspx?ID="+Eval("MoviesID") %>'>
                    <asp:Image ID="Image1" runat="server" Width="180PX" Height="250PX" ImageUrl='<%# "../Image/MoviesImage/"+Eval("MoviesNameID")+".jpg" %>'/><br />
                    <asp:Label ID="电影名称Label" runat="server" Text='<%# Eval("MoviesName") %>' />
                </a>
                </td>
            </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
