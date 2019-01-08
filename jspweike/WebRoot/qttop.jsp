<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>


<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>

<META content="MSHTML 6.00.2800.1106" name=GENERATOR>
</HEAD>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center"><a href="index.jsp"><font color="white">首页</font></a></td>
            <td align="center"><a href="news.jsp?lb=站内新闻&keyword="><font color="white">站内新闻</font></a></td>
			<td align="center"><a href="faburenwulist.jsp"><font color="white">威客在线</font></a></td>
			<td align="center"><a href="faburenwulist2.jsp"><font color="white">成交记录</font></a></td>
            <td align="center"><a href="userreg.jsp"><font color="white">用户注册</font></a></td>
			<td align="center"><a href="lyblist.jsp"><font color="white">留言板</font></a></td>
            <td align="center"><a href="login.jsp"><font color="white">后台管理</font></a></td>

          </tr>
        </table>
	
