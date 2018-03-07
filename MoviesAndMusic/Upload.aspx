<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="MoviesAndMusic.Upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />   <hr />
    <asp:FileUpload ID="FileUpload1" runat="server"/>
    <asp:Button ID="Button1" runat="server" Text="上传" OnClick="Button1_Click" /><br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>
