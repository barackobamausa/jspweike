
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

-->
</style>
  </head>
  <%
String lb=new String(request.getParameter("lb").getBytes("8859_1"));
String keyword=new String(request.getParameter("keyword").getBytes("8859_1"));
if (lb==null)
{
	lb="站内新闻";
}
 %>
<script language="javascript">
function check()
{
	if(document.form1.yonghuming.value==""){alert("请输入用户名");document.form1.yonghuming.focus();return false;}if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("请输入公司名称");document.form1.gongsimingcheng.focus();return false;}if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}if(document.form1.xingye.value==""){alert("请输入行业");document.form1.xingye.focus();return false;}
}
function gow()
{
	document.location.href="gongsi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
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
                    <td width="19%" align="center" valign="bottom" class="STYLE1"><%=lb%></td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top"><table width="99%"  border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="center"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td height="6" colspan="2" align="left"></td>
                              </tr>
                              <%
  String sql="";
  sql="select id,biaoti,addtime from xinwentongzhi where leibie='"+lb+"' ";
  if(keyword.equals("") || keyword==null)
  {}
  else
  {
  	sql=sql+" and biaoti like '%"+keyword+"%'";
  }
  sql=sql+" order by id desc";
 
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String biaoti="";String addtime="";
 int i=0;
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
 biaoti=RS_result.getString("biaoti");addtime=RS_result.getString("addtime");

 
 
%>
                              <tr>
                                <td height="25" align="left">★<A href="gg_detail.jsp?id=<%=id %>" class="b"><%=biaoti %></A></td>
                                <td align="left"><%=addtime%></td>
                              </tr>
                              <tr>
                                <td height="3" colspan="2" align="center" background="images/xuxian.gif"></td>
                              </tr>
                              <%
  }
   %>
                              <tr>
                                <td height="3" colspan="2" align="center" background="images/xuxian.gif"></td>
                              </tr>
                            </table>
                          <table width="98%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="30" align="right">&nbsp;</td>
                              </tr>
                          </table></td>
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

