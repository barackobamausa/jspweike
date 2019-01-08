
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
    
    <title>音乐信息</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
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
  </head>
<script language="javascript">
function check()
{
	if(document.form1.gequmingcheng.value==""){alert("请输入歌曲名称");document.form1.gequmingcheng.focus();return false;}if(document.form1.leibie.value==""){alert("请输入类别");document.form1.leibie.focus();return false;}if(document.form1.wenjian.value==""){alert("请输入文件");document.form1.wenjian.focus();return false;}
}
function gow()
{
	document.location.href="yinlexinxi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="yinlexinxi_add_post.jsp">
  添加音乐信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>歌曲名称：</td><td><input name='gequmingcheng' type='text' id='gequmingcheng' value='' size='50' />&nbsp;*</td></tr>
     <tr>
       <td>类型：</td>
       <td><select name="lx" id="lx">
         <option value="MP3">MP3</option>
         <option value="MTV">MTV</option>
       </select>
       </td>
     </tr>
     <tr><td>类别：</td><td><select name='leibie' id='leibie'><%String sql="select leibie from yinleleibie order by id desc";ResultSet RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("leibie")%>" ><%=RS_result.getString("leibie")%></option><%}%></select>&nbsp;*</td></tr><tr><td>演唱：</td><td><input name='yanchang' type='text' id='yanchang' value='' /></td></tr><tr><td>作词：</td><td><input name='zuoci' type='text' id='zuoci' value='' /></td></tr><tr><td>作曲：</td><td><input name='zuoqu' type='text' id='zuoqu' value='' /></td></tr><tr><td>文件：</td><td><input name='wenjian' type='text' id='wenjian' size='50' value='' />&nbsp;<input type='button' value='上传' onClick="up('wenjian')"/>&nbsp;*</td></tr><tr><td>歌词：</td><td><textarea name='geci' cols='50' rows='5' id='geci'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

