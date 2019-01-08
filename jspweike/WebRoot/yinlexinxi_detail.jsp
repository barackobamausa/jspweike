
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
	{
		out.print("<script>alert('对不起，请先登陆！!!');location.href='index.jsp';</script>");
	}
%>

<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="cn.itbaizhan.db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网上招标系统</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
.STYLE1 {
	color: #D84828;
	font-weight: bold;
}
.STYLE5 {	color: #72AC27;
	font-size: 26pt;
}
.STYLE2 {color: #FFFFFF}

-->
</style>
  </head>
<%
String id=request.getParameter("id");
String sql="";
sql="update yinlexinxi set hits=hits+1 where id="+id;
connDbBean.executeUpdate(sql);
%>
 <%
   sql="select * from yinlexinxi where id="+id;
String hits="";  String gequmingcheng="";String leibie="";String yanchang="";String zuoci="";String zuoqu="";String wenjian="";String geci="";String lx="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  lx=RS_result.getString("lx"); 
   gequmingcheng=RS_result.getString("gequmingcheng");
   leibie=RS_result.getString("leibie");
   yanchang=RS_result.getString("yanchang");
   zuoci=RS_result.getString("zuoci");
   zuoqu=RS_result.getString("zuoqu");
   wenjian=RS_result.getString("wenjian");
   geci=RS_result.getString("geci");
   hits=RS_result.getString("hits");
  
  }
   %>
  <body >
<table width="942" height="1023" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td width="942" height="32" background="qtimages/index_01.gif"><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td width="942" height="181" valign="top" background="qtimages/index_02.gif"><%@ include file="qttop2.jsp"%></td>
	</tr>
	<tr>
		<td height="28">
			<img src="qtimages/index_03.gif" width="942" height="28" alt=""></td>
	</tr>
	<tr>
		<td height="602"><table id="__01" width="942" height="602" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="602" valign="top"><%@ include file="qtleft.jsp"%></td>
            <td valign="top"><table id="__01" width="684" height="602" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="684" height="37" background="qtimages/index_04_02_01.gif"><table width="100%" height="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="19%" align="center" valign="bottom" class="STYLE1"><%=lx%>在线</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top"><table width="99%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center">
                        <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#F8C878" style="border-collapse:collapse">
                          <tr>
                            <td height="46" align="center"><span class="STYLE3"><span class="STYLE1"><%=gequmingcheng %></span></span></td>
                          </tr>
                          <tr>
                            <td height="41" align="center">类别：<%=leibie%> 演唱：<%=yanchang%> 作词：<%=zuoci%> 作曲：<%=zuoqu%> 点击:<%=hits %></td>
                          </tr>
                          <tr>
                            <td height="110" align="left"><table border=1 cellPadding=4 cellSpacing=0 width=500     align=center>
   <tr> 
     <td width="236" align=center   class=tdc1></td>
   </tr>
<%
String lurl="",houzhui="";
lurl=wenjian;
houzhui=lurl.substring(lurl.length()-4,lurl.length());
%><tr> 
     <td    valign=middle> 
<%


if (houzhui== ".swf")
{
%>  
    <p align=center>
   
         <OBJECT CLASSID=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 CODEBASE=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0 WIDTH=541 HEIGHT=374>
           <PARAM NAME=movie VALUE=<%=lurl%>> <PARAM NAME=quality VALUE=high> <EMBED SRC=<%=lurl%> QUALITY=high PLUGINSPAGE=http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash TYPE=application/x-shockwave-flash WIDTH=541 HEIGHT=374></EMBED>
    </OBJECT>
<% 
}

if (houzhui== ".mpg")
{
%>
    <p align=center>
    <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 height=350 >
     <param name=ShowStatusBar value=-1>
     <param name=Filename value=<%=wenjian%>>
     <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=wenjian%>   width=500 height=100></embed>
    </object>
<% 
}
if ( houzhui.equals(".mid") || houzhui.equals(".wma") || houzhui.equals(".wmv")  )
{

%>
    <p align=center>
   
         <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 >
           <param name=ShowStatusBar value=-1>
     <param name=Filename value=<%=wenjian%>>
     <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=wenjian%>   width=500></embed>
    </object>
   
<%
}
if (houzhui.equals(".mp3")  )
{

%>
    <p align=center>
   
         <object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=500 height="90" >
           <param name=ShowStatusBar value=-1>
     <param name=Filename value=<%=wenjian%>>
     <embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=<%=wenjian%>   width=500 height="90"></embed>
    </object>
   
<%
}
%>
     </td></tr>
</table></td>
                          </tr>
                          <tr>
                            <td align="center"><%=geci %></td>
                          </tr>
                          <tr>
                            <td align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();"></td>
                          </tr>
                          <tr>
                            <td align="left">已有评论：</td>
                          </tr>
                          <tr>
                            <td align="left"><table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                              <tr>
                                <td width="30" align="center" bgcolor="#F8F8C8">序号</td>
                                <td width="369" bgcolor='#F8F8C8'>评论内容</td>
                                <td width="66" bgcolor='#F8F8C8'>评论人</td>
                                <td width="142" bgcolor='#F8F8C8'>评论时间</td>
                                </tr>
                              <%
  sql="select * from pinglun where gqid='"+id+"'";
 
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
 String addby="";String content="";
 String addtime=""; 
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
// id=RS_result.getString("id");
addby=RS_result.getString("addby");content=RS_result.getString("content");
 addtime=RS_result.getString("addtime"); 
 
 
%>
                              <tr>
                                <td width="30" align="center"><%=i %></td>
                                <td><%=content %></td>
                                <td><%=addby %></td>
                                <td><%=addtime %></td>
                                </tr>
                              <%
  }
   %>
                            </table></td>
                          </tr>
                          <tr>
                            <td align="left">我来说两句：</td>
                          </tr>
                          <tr>
                            <td align="left"><form name="form1" method="post" action="pl_post.jsp">
                              <textarea name="content" cols="70" rows="5" id="content"></textarea>
                                                        <input name="gqid" type="hidden" id="gqid" value="<%=id%>">
                                                        <input type="submit" name="Submit" value="提交">
                            </form>
                            </td>
                          </tr>
                        </table>
                  </td>
                  </tr>
                </table>
                </td>
              </tr>
              
              <tr>
                <td height="20"><img src="qtimages/index_04_02_05.gif" width="684" height="20" alt=""></td>
              </tr>
              
            </table></td>
          </tr>
      </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>

  </body>
</html>

