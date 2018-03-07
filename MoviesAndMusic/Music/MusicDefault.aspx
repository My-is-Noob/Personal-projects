<%@ Page Title="" Language="C#" MasterPageFile="~/Music/Music.Master" AutoEventWireup="true" CodeBehind="MusicDefault.aspx.cs" Inherits="MoviesAndMusic.Music.MusicDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
     <hr />
        音乐类型：<asp:DropDownList ID="DroMusicType" runat="server" ></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;音乐格式：<asp:DropDownList ID="DroFormatName" runat="server" ></asp:DropDownList>

	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;搜索音乐：<input type="text" placeholder="搜索从这里开始...">
	  <button type="submit">搜索</button>
</div>
        <hr />
    <div style="text-align:center">
    <embed src="Music/华语/水木年华-一生有你.mp3"/><br />
        <asp:Button ID="Button1" runat="server" Text="上一曲" />
        &nbsp;
        <%--<asp:Button ID="Button2" runat="server" Text="播放" OnClick="Button2_Click"/>--%>
        &nbsp;
        <asp:Button ID="Button3" runat="server" Text="下一曲" />
        &nbsp;
        <asp:Button ID="Button4" runat="server" Text="随机播放" />
    </div>
    <hr />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="8" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="10" CellSpacing="6" ForeColor="Black" GridLines="Both" RepeatDirection="Horizontal">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            名称:
            <a href\="#"><asp:Label ID="名称Label" runat="server" Text='<%# Eval("名称") %>' /></a>
            <br />
            歌手:
            <asp:Label ID="歌手Label" runat="server" Text='<%# Eval("歌手") %>' />
            <br />
            类型:
            <asp:Label ID="类型Label" runat="server" Text='<%# Eval("类型") %>' />
            <br />
            格式:
            <asp:Label ID="格式Label" runat="server" Text='<%# Eval("格式") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoviesAndMusicConnectionString %>" SelectCommand="SELECT [名称], [歌手], [类型], [格式] FROM [view_Music]"></asp:SqlDataSource>
<hr />
    

    </asp:Content>
