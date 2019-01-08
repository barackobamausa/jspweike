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
function zhuce()
{
	if(document.formlog.cx.value=="注册用户")
	{
		location.href="userreg.jsp";
	}
	else
	{
		location.href="gsreg.jsp";
	}
}
</SCRIPT>

<META content="MSHTML 6.00.2800.1106" name=GENERATOR>
</HEAD>
<table id="__01" width="258" height="591" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><table id="__01" width="258" height="193" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td colspan="3"><img src="qtimages/index_04_01_01_01.gif" width="258" height="47" alt=""></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/index_04_01_01_02.gif" width="17" height="146" alt=""></td>
                    <td width="229" height="146" align="center" valign="middle" background="qtimages/1.gif"><br>
					 <%

	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
	{
	 %>
                      <table width="89%" height="82%" border="0" cellpadding="0" cellspacing="0">
                      <form name="formlog" method="post" action="userlog_post.jsp">
                        <tr>
                          <td width="22%">用户名</td>
                          <td width="78%"><input name="username" type="text" id="username" size="20"></td>
                        </tr>
                        <tr>
                          <td>密码</td>
                          <td><input name="pwd1" type="password" id="pwd1" size="20"></td>
                        </tr>
                        <tr style="display:none">
                          <td>权限</td>
                          <td><select name="cx" id="cx">
                            <option value="注册用户">注册用户</option>
                            <option value="公司">公司</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><input type="image" name="imageField" src="qtimages/2.gif">
                           <img src="qtimages/7.gif" width="53" height="21" onClick="zhuce();" style="cursor:hand"></td>
                        </tr>
                      </form>
                    </table>
					<%
					}
					else
					{
					%>
                      <table width="89%" height="82%" border="0" cellpadding="0" cellspacing="0">
                      
                        <tr>
                          <td width="22%">用户名</td>
                          <td width="78%"><%=request.getSession().getAttribute("username")%></td>
                        </tr>
                        
                        <tr>
                          <td>权限</td>
                          <td><%=request.getSession().getAttribute("cx")%> </td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td><img src="qtimages/6.gif" width="53" height="21" onClick="javascript:location.href='logout.jsp';"  style="cursor:hand"> <a href="main.jsp"><img src="qtimages/8.gif" width="53" height="21" border="0"  style="cursor:hand;display:none"><img src="qtimages/8.gif" width="53" height="21" border="0"  style="cursor:hand" ></a></td>
                        </tr>
                      
                    </table>
					<%
					}
					%>
					</td>
                    <td><img src="qtimages/index_04_01_01_04.gif" width="12" height="146" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="258" height="199" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="43" colspan="3" background="qtimages/index_04_01_04_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="34%" align="right"><span class="STYLE1">系统公告</span></td>
                          <td width="66%">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td width="20" height="144" background="qtimages/index_04_01_04_02.gif">&nbsp;</td>
                    <td width="223" height="144">            <marquee border="0" direction="up" height="138" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50"><TABLE width="92%" height="100%" 
            border=0 align=center 
      cellPadding=0 cellSpacing=5>
                      <TBODY><TR><TD><P>&nbsp;&nbsp;&nbsp;&nbsp;个人格言:自力更生、艰苦奋斗、白手起家、与时俱进、其他话语、自己添加。</P><P>&nbsp;&nbsp;&nbsp;&nbsp;个人格言:自力更生、艰苦奋斗、白手起家、与时俱进、其他话语、自己添加。</P></TD></TR></TBODY></TABLE></marquee>
</td>
                    <td width="15" height="144" background="qtimages/index_04_01_04_04.gif">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              
              <tr>
                <td><table id="__01" width="258" height="199" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="43" colspan="3" background="qtimages/index_04_01_04_01.gif"><table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="34%" align="right"><span class="STYLE1">友情连接</span></td>
                        <td width="66%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td width="20" height="144" background="qtimages/index_04_01_04_02.gif">&nbsp;</td>
                    <td width="223" height="144"><table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <%
        String sql2="";
  sql2="select  * from youqinglianjie ";
  sql2=sql2+" order by id desc";
 ResultSet RS_result2=connDbBean.executeQuery(sql2);
 String wangzhanmingcheng="";String wangzhi="";
 //int i=0;
 while(RS_result2.next()){
 //i=i+1;
wangzhanmingcheng=RS_result2.getString("wangzhanmingcheng");wangzhi=RS_result2.getString("wangzhi");

         %>
                      <tr valign="middle">
                        <td width="83%" height="24" align="left"><img src="qtimages/5.gif" border="0"> <a href="<%= wangzhi%>" class="b" target="_blank"><%= wangzhanmingcheng%></a></td>
                      </tr>
                      <%} %>
                    </table></td>
                    <td width="15" height="144" background="qtimages/index_04_01_04_04.gif">&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="3"><img src="qtimages/index_04_01_04_05.gif" width="258" height="12" alt=""></td>
                  </tr>
                </table></td>
              </tr>
            </table>
