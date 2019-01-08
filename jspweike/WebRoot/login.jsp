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
    
<title>用户登录</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
.STYLE1 {
	font-size: 12px;
	color: #a1c8c6;
}
.STYLE4 {color: #FFFFFF; font-size: 12px; }
.STYLE5 {	color: #72AC27;
	font-size: 26pt;
}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>

<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="035551">&nbsp;</td>
  </tr>
  <tr>
    <td height="311" background="images/login_03.gif"><table width="758" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="210" background="images/login1.jpg"><table width="100%" height="190" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="38%" height="98">&nbsp;</td>
            <td width="62%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><table width="93%" height="51" border="0" align="left">
              <tr>
                <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="center" class="STYLE5">网上招标系统</div>
                </div></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="101"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="446" height="101" background="img/login_06.gif">&nbsp;</td>
            <td width="156">
              <table width="100%" border="0" cellspacing="0" cellpadding="0"><form name="form1" method="post" action="adminyanzheng.jsp">
                <tr>
                  <td width="29%" height="22"><span class="STYLE4">用户名</span></td>
                  <td width="71" height="22"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
                </tr>
                <tr>
                  <td height="22"><span class="STYLE4">密&nbsp;&nbsp;码</span></td>
                  <td height="22"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
                </tr>
                <tr style="display:none">
                  <td height="22"><span class="STYLE4">权&nbsp;&nbsp;限</span></td>
                  <td height="22"><select name="cx" id="cx">
                      <option value="管理员">管理员</option>
					  <option value="评审专家">评审专家</option>
                      <option value="教师">教师</option>
                     
                  </select>
                    <input name="login" type="hidden" id="login" value="1"></td>
                </tr>
                <tr>
                  <td height="25">&nbsp;</td>
                  <td height="25"><input type="submit" name="Submit" value="登陆">
                    <input type="reset" name="Submit2" value="重置"></td>
                </tr></form>
              </table>
                        
            </td>
            <td width="156" background="images/login_09.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="1f7d78">&nbsp;</td>
  </tr>
  <tr>
    <td bgcolor="1f7d78"><div align="center"><span class="STYLE1">-- 网上招标系统 CopyRight 2011 --</span></div></td>
  </tr>
</table>

</body>
</html>

