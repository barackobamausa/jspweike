
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
                    <td width="19%" align="center" valign="bottom" class="STYLE1">威客在线</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top">  <%
  String sql="select * from faburenwu where id="+id;
  String renwumingcheng="";String leibie="";String renwujianjie="";String fujian="";String wanchengshixian="";String zhifubaochou="";String faburen="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  faburen=RS_result.getString("faburen");renwumingcheng=RS_result.getString("renwumingcheng");leibie=RS_result.getString("leibie");renwujianjie=RS_result.getString("renwujianjie");fujian=RS_result.getString("fujian");wanchengshixian=RS_result.getString("wanchengshixian");zhifubaochou=RS_result.getString("zhifubaochou");
  }
   %><table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                  <tr>
                    <td width="23%">任务名称：</td>
                    <td width="77%"><%=renwumingcheng%></td>
                  </tr>
                  <tr>
                    <td>类别：</td>
                    <td><%=leibie%></td>
                  </tr>
                  <tr>
                    <td height="93">任务简介：</td>
                    <td><%=renwujianjie%></td>
                  </tr>
                  <tr>
                    <td>附件：</td>
                    <td><a href="<%=fujian%>" target="_blank">下载</a></td>
                  </tr>
                  <tr>
                    <td>完成时限：</td>
                    <td><%= wanchengshixian%></td>
                  </tr>
                  <tr>
                    <td>支付报酬：</td>
                    <td><%= zhifubaochou%></td>
                  </tr>
                  <tr>
                    <td>发布人：</td>
                    <td><%= faburen%></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><input type="button" name="Submit" value="我来接单" onClick="javascript:location.href='gwc.jsp?renwumingcheng=<%=renwumingcheng%>&leibie=<%=leibie%>&wanchengshixian=<%=wanchengshixian%>&zhifubaochou=<%=zhifubaochou%>&faburen=<%=faburen%>';">
                      <input type="button" name="Submit2" value="返回" onClick="javascript:history.back();"></td>
                  </tr>
                </table></td>
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

