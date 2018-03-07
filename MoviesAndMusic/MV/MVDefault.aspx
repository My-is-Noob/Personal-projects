<%@ Page Title="" Language="C#" MasterPageFile="~/MV/MV.Master" AutoEventWireup="true" CodeBehind="MVDefault.aspx.cs" Inherits="MoviesAndMusic.MV.MVDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="text-align:center;font-size:25px;color:red" >
               <div>搞笑电影片段<br /><video width="540" height="320" controls="controls">
           <source src="MV/搞笑电影片段.mp4" type="video/mp4"/>
        </video></div><hr style="width:50%"/>
           <div>1997到2017经典流行歌曲<br /><video width="540" height="320" controls="controls">
            <source src="MV/1997到2017经典流行歌曲.mp4" type="video/mp4" />
        </video></div><hr style="width:50%"/>
                <div>爆笑小品《三顾茅庐》</div><video width="540" height="320" controls="controls">
            <source src="MV/爆笑小品《三顾茅庐》.mp4" type="video/mp4" />
        </video><br /><hr style="width:50%"/>
                <div>胡歌《六月的雨》<br /><video width="540" height="320" controls="controls">
            <source src="MV/胡歌《六月的雨》.mp4" type="video/mp4" />
        </video></div><hr style="width:50%"/>
                <div>喜剧之王片段<br /><video width="540" height="320" controls="controls">
            <source src="MV/喜剧之王片段.mp4" type="video/mp4" />
        </video></div><hr style="width:50%"/>
                <div>搞笑de<br /><video width="540" height="320" controls="controls">
            <source src="MV/搞笑de.mp4" type="video/mp4" />
        </video></div><hr style="width:50%"/>
                <div>汤姆猫（背景音乐好听）<br /><video width="540" height="320" controls="controls">
            <source src="MV/汤姆猫背景音乐.mp4" type="video/mp4" />
        </video></div><hr style="width:50%"/>
                <div>一个被黑客耽误的音乐家，这节奏感流批流批<br /><video width="540" height="320" controls="controls">
            <source src="MV/一个被黑客耽误的音乐家，这节奏感流批流批.mp4" type="video/mp4" />
        </video></div><hr style="width:50%"/>
                <div>直到世界尽头<br /><video width="540" height="320" controls="controls">
            <source src="MV/直到世界尽头.mp4" type="video/mp4" />
        </video></div><hr style="width:50%"/>
                <div>周杰伦精选<br /><video width="540" height="320" controls="controls">
            <source src="MV/周杰伦精选.mp4" type="video/mp4" />
        </video></div><hr style="width:50%"/>
    </div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="UserID" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            Gender:
            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            <br />
            Mailbox:
            <asp:Label ID="MailboxLabel" runat="server" Text='<%# Eval("Mailbox") %>' />
            <br />
            Password:
            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
            <br />
            UserNumber:
            <asp:Label ID="UserNumberLabel" runat="server" Text='<%# Eval("UserNumber") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
            <br />
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoviesAndMusicConnectionString %>" SelectCommand="SELECT [Gender], [Mailbox], [Password], [UserNumber], [UserName], [UserID] FROM [User]"></asp:SqlDataSource>
    </asp:Content>
