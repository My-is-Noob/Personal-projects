<%@ Page Title="" Language="C#" MasterPageFile="~/Music/Music.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MoviesAndMusic.Music.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  style="text-align:center" >
    <embed src="Music/华语/水木年华-一生有你.mp3"/><hr /></div>
            <%--<video autoplay="" controls="" style="height:40px;width:66%;" src="Music/华语/GALA - 追梦赤子心.mp3"></video><hr/>--%>
    <div style="margin:0 auto;text-align:center">
    <a><asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True">
    </asp:GridView></a>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoviesAndMusicConnectionString %>" SelectCommand="SELECT [名称], [歌手], [类型], [格式] FROM [view_Music]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

</asp:Content>
