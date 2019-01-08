
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
String lx=request.getParameter("lx");
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
                <td valign="top"><form name="form1" id="form1" method="post" action="">
                  搜索:任务名称:
                  <input name="bianhao" type="text" id="bianhao" />
                  类别
                  <input name="mingcheng" type="text" id="mingcheng" />
  <input type="submit" name="Submit" value="查找" />
                </form>
                  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                    <tr>
                      <td width="30" align="center" bgcolor="#F8F8C8">序号</td>
                      <td bgcolor='#F8F8C8'>任务名称</td>
                      <td bgcolor='#F8F8C8'>类别</td>
                      <td bgcolor='#F8F8C8'>完成时限</td>
                      <td bgcolor='#F8F8C8'>支付报酬</td>
                      <td width="138" align="center" bgcolor="#F8F8C8">发布人</td>
                      <td width="138" align="center" bgcolor="#F8F8C8">添加时间</td>
                      <td width="60" align="center" bgcolor="#F8F8C8">操作</td>
                    </tr>
                    <%
  String sql="";
  sql="select * from faburenwu where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and renwumingcheng like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and leibie like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String renwumingcheng="";String leibie="";String renwujianjie="";String fujian="";String wanchengshixian="";String zhifubaochou="";
 String addtime=""; String faburen="";
 int i=0;
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
renwumingcheng=RS_result.getString("renwumingcheng");leibie=RS_result.getString("leibie");renwujianjie=RS_result.getString("renwujianjie");fujian=RS_result.getString("fujian");wanchengshixian=RS_result.getString("wanchengshixian");zhifubaochou=RS_result.getString("zhifubaochou");
 addtime=RS_result.getString("addtime"); faburen=RS_result.getString("faburen");
 
 
%>
                    <tr>
                      <td width="30" align="center"><%=i %></td>
                      <td><%=renwumingcheng %></td>
                      <td><%=leibie %></td>
                      <td><%=wanchengshixian %></td>
                      <td><%=zhifubaochou %></td>
                      <td width="138" align="center"><%=faburen %></td>
                      <td width="138" align="center"><%=addtime %></td>
                      <td width="60" align="center"><a href="faburenwu_detail.jsp?id=<%=id%>">详细</a><a href="del.jsp?id=<%=id %>&tablename=faburenwu" onClick="return confirm('真的要删除？')"></a></td>
                    </tr>
                    <%
  }
   %>
                  </table>
                  <br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a> </td>
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

