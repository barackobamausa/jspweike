
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="cn.itbaizhan.db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网上招标系统</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    
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

-->
</style>
  </head>

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
            <td valign="top"><table id="__01" width="684" height="593" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="684" height="37" background="qtimages/index_04_02_01.gif"><table width="100%" height="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="19%" align="center" valign="bottom" class="STYLE1">站内新闻</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="206"><table id="__01" width="684" height="206" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="250" height="206" align="center"><SCRIPT type=text/javascript>
var focus_width=222;
var focus_height=162;
var text_height=20;
var swf_height = focus_height+text_height;
var pics="qtimages/flashpic/1.jpg|qtimages/flashpic/2.jpg|qtimages/flashpic/3.jpg|qtimages/flashpic/4.jpg|qtimages/flashpic/5.jpg";

var links="http://www.baidu.com|http://www.baidu.com|http://www.baidu.com|http://www.baidu.com|http://www.baidu.com";

 var texts="2009年度周一夜学颁奖仪式|转作风优环境动员大会|周一夜学讲座现场|钱库镇武警活动|人民政府研讨大会";


pics="qtimages/flashpic/1.jpg|qtimages/flashpic/2.jpg|qtimages/flashpic/3.jpg|qtimages/flashpic/4.jpg|qtimages/flashpic/5.jpg";
links="http://www.baidu.com|http://www.baidu.com|http://www.baidu.com|http://www.baidu.com|http://www.baidu.com";
texts="开展爱心助学活动|钱库镇举行领导迎送会|钱库镇举行第六次人口普查培训会|我县开展名人故居保护视察活动（图文）|县委统战部在钱库镇开展2010上半年度统战检察交流|";

document.write('<embed src="qtimages/pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#ffffff" quality="Best" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">');

</SCRIPT></td>
                    <td width="434" height="206"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
					<%
					 String sql="";
  sql="select top 6 id,biaoti,addtime from xinwentongzhi where leibie='站内新闻' order by id desc";
 
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String biaoti=""; String addtime="";
 int i=0;
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
 biaoti=RS_result.getString("biaoti");addtime=RS_result.getString("addtime");
					%>
                      <tr>
                        <td width="6%" align="center"><img src="qtimages/4.gif" width="5" height="5"></td>
                        <td width="70%"><a href="gg_detail.jsp?id=<%=id%>"><%=biaoti%></a></td>
                        <td width="24%"><%=addtime%></td>
                      </tr>
					  <%
  }
   %>		
                      
					  
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="145"><table id="__01" width="684" height="145" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="684" height="39" background="qtimages/index_04_02_03_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="22%" height="20" align="center" valign="bottom" class="STYLE1">最新任务</td>
                        <td width="78%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td width="684" height="106"><table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                      <tr>
                        <td width="45" align="center" bgcolor="#F8F8C8">序号</td>
                        <td width="86" bgcolor='#F8F8C8'>任务名称</td>
                        <td width="50" bgcolor='#F8F8C8'>类别</td>
                        <td width="105" bgcolor='#F8F8C8'>完成时限</td>
                        <td width="86" bgcolor='#F8F8C8'>支付报酬</td>
                        <td width="100" align="center" bgcolor="#F8F8C8">发布人</td>
                        <td width="146" align="center" bgcolor="#F8F8C8">发布时间</td>
                        </tr>
                      <%
   sql="";
  sql="select * from faburenwu where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and mingcheng like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);

 String renwumingcheng="";String leibie="";String renwujianjie="";String fujian="";String wanchengshixian="";String zhifubaochou="";
 String faburen="";
  i=0;
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
renwumingcheng=RS_result.getString("renwumingcheng");leibie=RS_result.getString("leibie");renwujianjie=RS_result.getString("renwujianjie");fujian=RS_result.getString("fujian");wanchengshixian=RS_result.getString("wanchengshixian");zhifubaochou=RS_result.getString("zhifubaochou");
 addtime=RS_result.getString("addtime"); faburen=RS_result.getString("faburen");
 
 
%>
                      <tr>
                        <td width="45" align="center"><%=i %></td>
                        <td><%=renwumingcheng %></td>
                        <td><%=leibie %></td>
                        <td><%=wanchengshixian %></td>
                        <td><%=zhifubaochou %></td>
                        <td width="100" align="center"><%=faburen %></td>
                        <td width="146" align="center"><%=addtime %></td>
                        </tr>
                      <%
  }
   %>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="185"><table id="__01" width="684" height="145" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="684" height="39" background="qtimages/index_04_02_03_01.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="22%" height="20" align="center" valign="bottom" class="STYLE1">系统简介</td>
                          <td width="78%">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td width="684" height="106"><p>&nbsp;&nbsp;&nbsp;&nbsp;我站主要是为广大朋友提供在线威客网，朋友们可以在我站发布自己需要的任务信息，也可接受别人发布的需求信息，提供了个在线交易的平台，希望大家可以通过我站获得方便，谢谢！&nbsp;&nbsp;&nbsp;&nbsp;我站主要是为广大朋友提供在线威客网，朋友们可以在我站发布自己需要的任务信息，也可接受别人发布的需求信息，提供了个在线交易的平台，希望大家可以通过我站获得方便，谢谢！</p>
                      <p>&nbsp;&nbsp;&nbsp;&nbsp;我站主要是为广大朋友提供在线威客网，朋友们可以在我站发布自己需要的任务信息，也可接受别人发布的需求信息，提供了个在线交易的平台，希望大家可以通过我站获得方便，谢谢！&nbsp;&nbsp;&nbsp;&nbsp;我站主要是为广大朋友提供在线威客网，朋友们可以在我站发布自己需要的任务信息，也可接受别人发布的需求信息，提供了个在线交易的平台，希望大家可以通过我站获得方便，谢谢！</p></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="13">&nbsp;</td>
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

