<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    

  </head>

  <body >
  <table width="66%" height="68%" border="0" cellpadding="5" cellspacing="5">
  <tr>
    <td valign="top"><p>欢迎进入〉〉〉 </p>
      <p><br>
        网上招标系统 </p>
      <p class="td2">联系人:XXXX</p>
      <p class="td2">电话:XXXXX</p>
      <p class="td2">手机:XXXX</p>
      <p class="td2">邮箱:XXXXX</p>
      <p class="td2">地址:XXXXXXXXXXXXX<a href="mailto:zhouyufay@126.com"></a></p>
      <p class="welcome">&nbsp;</p></td>
  </tr>
</table>
<p class="welcome">&nbsp;</p>
  </body>
</html>

