
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
    
    <title>用户注册</title><script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.yonghuming.value==""){alert("请输入用户名");document.form1.yonghuming.focus();return false;}if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}
}
</script>
  <body >

  <form name="form1" id="form1" method="post" action="yonghuzhuce_updt_post2.jsp">
  修改用户注册:
  <br><br>
  <%
  String sql="select * from yonghuzhuce where yonghuming='"+request.getSession().getAttribute("username")+"'";
   String jb="";   String yonghuming="";String mima="";String xingming="";String xingbie="";String dianhua="";String QQ="";String youxiang="";String chushengnianyue="";String touxiang="";String dizhi="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
    jb=RS_result.getString("jb"); 
  yonghuming=RS_result.getString("yonghuming");mima=RS_result.getString("mima");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");dianhua=RS_result.getString("dianhua");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");chushengnianyue=RS_result.getString("chushengnianyue");touxiang=RS_result.getString("touxiang");dizhi=RS_result.getString("dizhi");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= yonghuming%>' />
       (此项不得修改) </td></tr><tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mima%>' /></td></tr><tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= xingming%>' /></td></tr><tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script><tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' /></td></tr><tr><td>QQ：</td><td><input name='QQ' type='text' id='QQ' value='<%= QQ%>' /></td></tr><tr><td>邮箱：</td><td><input name='youxiang' type='text' id='youxiang' value='<%= youxiang%>' /></td></tr><tr><td>出生年月：</td><td><input name='chushengnianyue' type='text' id='chushengnianyue' value='<%= chushengnianyue%>' onClick="getDate(form1.chushengnianyue,'2')" need="1" readonly='readonly' /></td></tr><tr><td>头像：</td><td><input name='touxiang' type='text' id='touxiang' size='50' value='<%= touxiang%>' />&nbsp;<input type='button' value='上传' onClick="up('touxiang')"/></td></tr><tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=dizhi%>' /></td></tr>
     <tr bordercolor="#F8C878">
       <td>级别：</td>
       <td><select name="jb" id="jb">
           <option value="一级">一级</option>
           <option value="二级">二级</option>
         </select>
 (此项不得修改)       </td>
     </tr>
	 	 <script language="javascript">document.form1.jb.value='<%=jb%>';</script>

     <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


