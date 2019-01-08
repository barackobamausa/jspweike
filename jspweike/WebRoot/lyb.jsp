
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
                    <td width="19%" align="center" valign="bottom" class="STYLE1">留言板</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top"><form name="form1" id="form1" method="post" action="liuyanban_add_post.jsp">
					<table width="92%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                      <tr>
                        <td width="12%">昵称：</td>
                        <td width="88%"><input name='cheng' type='text' id='cheng' value='' /></td>
                      </tr>
                      <tr>
                        <td>头像：</td>
                        <td><input name="xingbie" type="radio" value="1" checked>
                            <img src="img/1.gif" width="64" height="71">
                            <input type="radio" name="xingbie" value="2">
                            <img src="img/2.gif" width="64" height="71">
                            <input type="radio" name="xingbie" value="3">
                            <img src="img/3.gif" width="64" height="71">
                            <input type="radio" name="xingbie" value="4">
                            <img src="img/4.gif" width="64" height="71">
                            <input type="radio" name="xingbie" value="5">
                            <img src="img/5.gif" width="64" height="71"></td>
                      </tr>
                      <tr>
                        <td>QQ：</td>
                        <td><input name='QQ' type='text' id='QQ' value='' /></td>
                      </tr>
                      <tr>
                        <td>邮箱：</td>
                        <td><input name='youxiang' type='text' id='youxiang' value='' /></td>
                      </tr>
                      <tr>
                        <td>电话：</td>
                        <td><input name='dianhua' type='text' id='dianhua' value='' /></td>
                      </tr>
                      <tr>
                        <td>内容：</td>
                        <td><textarea name="neirong" cols="50" rows="10" id="neirong"></textarea></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><input type="submit" name="Submit" value="提交" />
                            <input type="reset" name="Submit2" value="重置" /></td>
                      </tr>
                    </table></form></td>
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

