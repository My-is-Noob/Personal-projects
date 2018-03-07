<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MoviesAndMusic._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jumbotron">
        <h1>个人项目</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>电影</h2>
            <p>
                有许多电影可以观看
            </p>
            <p>
                <a class="btn btn-default" href="Movies/MoviesDefault.aspx">See a Movie &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>音乐MV</h2>
            <p>
                有许多音乐可以听
            </p>
            <p>
                <a class="btn btn-default" href="Music/MusicDefault.aspx">Listen to Music &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>视频短片</h2>
            <p>
                有许多小视频可以看
            </p>
            <p>
                <a class="btn btn-default" href="MV/MVDefault.aspx">Look at MV &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
