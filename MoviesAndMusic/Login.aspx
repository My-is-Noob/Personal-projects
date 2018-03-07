<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MoviesAndMusic.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="text-align: center;">
        <p>
            <span style="font-size: x-large;">用户注册</span>
        </p>
        <p>
            昵&nbsp;称（<u>I</u>）：<asp:TextBox ID="txtName" Width="180px" AccessKey="I" MaxLength="8" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtName" ErrorMessage="请输入您的昵称！">*</asp:RequiredFieldValidator>
        </p>
        <p>
            账&nbsp;号（<u>N</u>）：<asp:TextBox ID="txtUid" Width="180px" AccessKey="N" MaxLength="8" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUid" ErrorMessage="请输入您的账号！">*</asp:RequiredFieldValidator>
        </p>
        <p>
            密&nbsp;码（<u>P</u>）：<asp:TextBox ID="txtPwd" Width="180px" AccessKey="P" MaxLength="8" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="请输入您的密码！">*</asp:RequiredFieldValidator>
        </p>
        <p>
            重复密码（<u>R</u>）：<asp:TextBox ID="txtRePwd" Width="180px" AccessKey="R" MaxLength="8" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPwd" ErrorMessage="请再次输入您的密码！">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" ControlToCompare="txtPwd" ControlToValidate="txtRePwd" runat="server" ErrorMessage="两次密码必须一致！">*</asp:CompareValidator>
        </p>
        <p>
            电子邮箱（<u>E</u>）：<asp:TextBox ID="txtEmail" Width="180px" AccessKey="E" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPwd" ErrorMessage="请输入您的电子邮箱地址！">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtEmail" runat="server" ErrorMessage="电子邮箱地址格式错误！" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </p>
        <p>性别：(<u>G</u>)：<asp:RadioButton ID="butRioMan" runat="server" Text="男" GroupName="Gender" Checked="true"  />
            <asp:RadioButton ID="butRioWon" runat="server" Text="女" GroupName="Gender" /></p>
        <p style="text-align: center;">
            <asp:Button ID="btnRegist" Width="180px" runat="server" Text="注册" />
        </p>
        <p>
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Text="" />
            <asp:ValidationSummary ID="ValidationSummary1" HeaderText="发现以下错误：" ShowMessageBox="true" ShowSummary="false" runat="server" />
    </div>
</asp:Content>
