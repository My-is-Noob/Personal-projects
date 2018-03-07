<%@ Page Title="" Language="C#" MasterPageFile="~/Movies/Movies.Master" AutoEventWireup="true" CodeBehind="MoviesDetails.aspx.cs" Inherits="MoviesAndMusic.Movies.MoviesDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
<%--    <div style="width:100%;height:100%;background-color:#ffffff;margin:0px auto;text-align:center;">
        <table border="0" style="margin:0px auto">
            <tr>
                <td style="text-align:left">
            <asp:Image ID="Image1" runat="server" Width="150px" Height="180px" ImageUrl=""/>
                </td>
                <td style="text-align:left">
                    电影名称：<asp:Label ID="Label1" runat="server" Text="未知错误"></asp:Label><br />
                    电影主演：<asp:Label ID="Label3" runat="server" Text="未知错误"></asp:Label><br />
                    电影导演：<asp:Label ID="Label2" runat="server" Text="未知错误"></asp:Label><br />
                    电影类型：<asp:Label ID="Label4" runat="server" Text="未知错误"></asp:Label><br />
                    电影语言：<asp:Label ID="Label5" runat="server" Text="未知错误"></asp:Label><br />
                    电影地区：<asp:Label ID="Label6" runat="server" Text="未知错误"></asp:Label><br />
                    上映日期：<asp:Label ID="Label8" runat="server" Text="未知错误"></asp:Label><br />
                    电影详情：<asp:Label ID="Label7" runat="server" Text="未知错误"></asp:Label><br />
                </td>
            </tr>
        </table>
    </div>--%>
           <hr />
    <table style="width: 100%;padding:5px;">
        <tr>
            <td colspan="2" style="text-align: center;">
                <asp:Image ID="imgCover" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 200px;">电影名称：
            </td>
            <td style="text-align: left;">
                <asp:Label ID="lblMovieName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 200px; height: 20px;">电影主演：
            </td>
            <td style="text-align: left; height: 20px;">
                <asp:Label ID="lblActors" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 200px; height: 18px;">电影导演：
            </td>
            <td style="text-align: left; height: 18px;">
                <asp:Label ID="lblDirextor" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 200px;">电影类型：
            </td>
            <td style="text-align: left;">
                <asp:Label ID="lblMovieType" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 200px;">电影语言：
            </td>
            <td style="text-align: left;">
                <asp:Label ID="lblLanguage" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 200px;">电影地区：
            </td>
            <td style="text-align: left;">
                <asp:Label ID="lblRegion" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 200px;">电影详情：
            </td>
            <td style="text-align: left;">
                <asp:Label ID="lblDesc" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        </table>
    <hr />

   
                </asp:Content>

   



<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
