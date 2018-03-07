<%@ Page Title="" Language="C#" MasterPageFile="~/Movies/Movies.Master" AutoEventWireup="true" CodeBehind="MoviesDefault.aspx.cs" Inherits="MoviesAndMusic.Movies.MoviesDefault" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <hr />
<div>
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
            <img src="../Image/MoviesImage/000007.jpg" alt="">  
            <img src="../Image/MoviesImage/000008.jpg" alt="">  
            <img src="../Image/MoviesImage/000009.jpg" alt="">  
            <img src="../Image/MoviesImage/000010.jpg" alt="">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/Background/星空1.jpg"  />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/Background/星空3.jpg" />
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




        <div style="width:100%;height:auto;background-color:#ffffff;margin:0px auto;text-align:center">
          <%--文字滚动--%>
            <marquee onMouseOver="this.stop();" onMouseOut="this.start();">大家好</marquee>
    <div style="text-align:center">
	  搜索电影：<asp:TextBox ID="TextBox1" runat="server" placeholder="搜索从这里开始"></asp:TextBox>
    <asp:Button ID="buyone" runat="server" Text="搜索" OnClick="buyone_Click" />
        </div>
<%--        电影类型:<asp:DropDownList ID="DroMovieType" runat="server" Width="120" ></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电影年份:<asp:DropDownList ID="DroMoviesYears" runat="server" Width="120" ></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电影地区:<asp:DropDownList ID="DroMoviesRegion" runat="server" Width="120" ></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电影语言:<asp:DropDownList ID="DroMoviesLanguage" runat="server" Width="120" ></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" /><br /><br />
        要搜索的电影信息为：<asp:Label ID="LblMsg" runat="server" Text=" "></asp:Label><hr />   --%>  
            
            <div style="display:inline">
                <dl>
                    <dt>按类型：</dt>
                    <dd>
                        <a href="#全部">
                            <asp:Label ID="Label2" runat="server" Text="全部"></asp:Label></a>&nbsp;
                        <a href="#喜剧">喜剧</a>&nbsp;
                        <a href="#动作">动作</a>&nbsp;
                        <a href="#恐怖">恐怖</a>&nbsp;
                        <a href="#战争">战争</a>&nbsp;
                    </dd>
                </dl>
                <dl>
                    <dt>按地区：</dt>
                    <dd>
                        <a href="#全部">全部</a>
                        <a href="#喜剧">喜剧</a>
                        <a href="#动作">动作</a>
                        <a href="#恐怖">恐怖</a>
                        <a href="#战争">战争</a>
                    </dd>
                </dl>
                <dl>
                    <dt>按年份：</dt>
                    <dd>
                        <a href="#全部">全部</a>
                        <a href="#喜剧">喜剧</a>
                        <a href="#动作">动作</a>
                        <a href="#恐怖">恐怖</a>
                        <a href="#战争">战争</a>
                    </dd>
                </dl>
            </div>

    </div>



    <hr /><%--分割线--%>
            <div style="text-align:center; margin:0 auto">
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="6" BackColor="White" CellPadding="10" CellSpacing="8" GridLines="Horizontal" RepeatDirection="Horizontal" Width="100%">
        <ItemTemplate>
            <table  style="width:100%;background-color:#a49f9f;margin-left:10px" onmouseover="this.style.backgroundColor='#d7d7d7';" onmouseout="this.style.backgroundColor='#C8E2B1';">
            <tr>
                <td>
                <a href='<%# "MoviesDetails.aspx?ID="+Eval("电影编号") %>'>
                    <asp:Image ID="Image1" runat="server" Width="180PX" Height="250PX" ImageUrl='<%# "../Image/MoviesImage/"+Eval("电影序列")+".jpg" %>'/><br />
                    <asp:Label ID="电影名称Label" runat="server" Text='<%# Eval("电影名称") %>' />
                </a>
                </td>
            </tr>
            </table>
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
                </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoviesAndMusicConnectionString %>" SelectCommand="SELECT [电影名称], [电影序列],[电影编号] FROM [view_Movies]"></asp:SqlDataSource>
    
    <hr /><%--分割线--%>

        <asp:Button ID="btnPre" runat="server" Text="上一页" />
        <asp:Label ID="lblMsgs" runat="server" Text=" " />
        <asp:Button ID="btnNext" runat="server" Text="下一页" />

</asp:Content>