<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MoviesAndMusic.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;">
      <br /><br />
        <p>
            <span style="font-size:x-large;">注册用户登录</span>
        </p>
        <p>
            账号（<u>N</u>）：<asp:TextBox ID="txtUid" Width="180px" AccessKey="N" MaxLength="8" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUid" ErrorMessage="请输入您的账号！">*</asp:RequiredFieldValidator>
            &nbsp;<asp:HyperLink ID="hylRegist" NavigateUrl="Login.aspx" runat="server">用户注册</asp:HyperLink>
        </p>
        <p>
            密码（<u>P</u>）：<asp:TextBox ID="txtPwd" Width="180px" AccessKey="P" MaxLength="8" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="请输入您的密码！">*</asp:RequiredFieldValidator>
            &nbsp;<asp:HyperLink ID="hylFindPwd" NavigateUrl="FindPassword.aspx" runat="server">找回密码</asp:HyperLink>
        </p>
        <p style="text-align:center;">
            <asp:Button ID="btnLogin" Width="180px" runat="server" Text="登录"/>
        </p>
        <p>
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Text="" />
            <asp:ValidationSummary ID="ValidationSummary1" HeaderText="发现以下错误：" ShowMessageBox="true"  ShowSummary="false" runat="server" />
    </div>
</asp:Content>
