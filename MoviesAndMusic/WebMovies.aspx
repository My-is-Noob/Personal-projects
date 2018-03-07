<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebMovies.aspx.cs" Inherits="MoviesAndMusic.WebMovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            <img src="Image/MoviesImage/000001.jpg" alt="">  
            <img src="Image/MoviesImage/000002.jpg" alt="">  
            <img src="Image/MoviesImage/000003.jpg" alt="">  
            <img src="Image/MoviesImage/000004.jpg" alt="">  
            <img src="Image/MoviesImage/000005.jpg" alt="">  
            <img src="Image/MoviesImage/000006.jpg" alt="">  
            <img src="Image/MoviesImage/000007.jpg" alt="">  
            <img src="Image/MoviesImage/000008.jpg" alt="">  
            <img src="Image/MoviesImage/000009.jpg" alt="">  
            <img src="Image/MoviesImage/000010.jpg" alt="">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
