<%@ Page Title="" Language="C#" MasterPageFile="~/Music/Music.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MoviesAndMusic.Music.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<hr />
    <div style="margin:0 auto;text-align:center">
<h2>我的音乐播放器</h2>
<audio id="sd"></audio><br/>
<input type="button" value="上一首" id="tt" onclick="ststs(1)"/>
<input type="button" value="播放" id="sse" onclick="ststs(2)"/>
<input type="button" value="下一首" id="mm" onclick="ststs(3)"/>
    </div>
        <div style="margin:0 auto;width:100%;">
<table style="width:60%;height:300px;">
<tr><td><a href="#" onclick="ssss('1')">panda猫 - 想你.m4a</a></td>
<td><a href="Music/华语/GALA - 追梦赤子心.mp3" onclick="ssss('2')">Sara - 即使知道要见面.mp3</a></td></tr>

<tr><td><a href="#" onclick="ssss('3')">The Collective - Last Christmas.mp3</a></td>
<td><a href="#" onclick="ssss('4')">爱情专属权-龙梅子.mp3</a></td></tr>

<tr><td><a href="#" onclick="ssss('5')">爱人爱人在哪里-马吟吟.mp3</a></td>
<td><a href="#" onclick="ssss('6')">安琥-会有天使替我爱你.mp3</a></td></tr>

<tr><td><a href="#" onclick="ssss('7')">安琥-天使的翅膀.mp3</a></td>
<td><a href="#" onclick="ssss('8')">别用下辈子安慰我-陈瑞.mp3</a></td></tr>

<tr><td><a href="#" onclick="ssss('9')">陈楚生 - 有没有人曾告诉你.mp3</a></td>
<td><a href="#" onclick="ssss('10')">陈淑桦 - 梦醒时分.mp3</a></td></tr>

<tr><td><a href="#" onclick="ssss('11')">丁当 - 手掌心.mp3</a></td>
<td><a href="#" onclick="ssss('12')">金贵晟 - 虹之间.mp3</a></td></tr>

<tr><td><a href="#" onclick="ssss('13')">马健南-马航去的地方.mp3</a></td>
<td><a href="#" onclick="ssss('14')">满江 - 飞鸟.mp3</a></td></tr>

<tr><td><a href="#" onclick="ssss('15')">不是因为寂寞才想你-雷婷</a></td></tr>
</table>
</div>
<hr />

    <marquee direction="left" behavior=scroll loop=3 scrollamount=1 scrolldelay=10 align=top bgcolor=#ffffff height=300 width=30% hspace=20 vspace=10 onmouseover=this.stop() onmouseout=this.start()> 我的音乐未出厂 </marquee>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
