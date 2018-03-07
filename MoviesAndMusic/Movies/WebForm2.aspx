<%@ Page Title="" Language="C#" MasterPageFile="~/Movies/Movies.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MoviesAndMusic.Movies.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="Repeater1" runat="server" DataSource="SqlDataSource1" >
        <ItemTemplate>
            <div style="background-color:gray">
                电影名称：<asp:Label ID="lblName" runat="server" Text='<%# Eval("MoviesName") %>'></asp:Label><br />
                电影类型：<asp:Label ID="lblDesc" runat="server" Text='<%# Eval("MoviesDesc") %>'></asp:Label><br />
            </div>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <div style="background-color:aqua">
                电影名称：<asp:Label ID="lblName" runat="server" Text='<%# Eval("MoviesName") %>'></asp:Label><br />
                电影类型：<asp:Label ID="lblDesc" runat="server" Text='<%# Eval("MoviesDesc") %>'></asp:Label><br />
            </div>
        </AlternatingItemTemplate>
        <SeparatorTemplate><hr /></SeparatorTemplate>
        <HeaderTemplate>
            <div style="text-align:center">电影信息列表</div>
        </HeaderTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoviesAndMusicConnectionString %>" SelectCommand="SELECT [MoviesName], [MoviesDesc] FROM [Movies]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
