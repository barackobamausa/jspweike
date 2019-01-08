
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
    
    <title>发布任务</title><LINK href="CSS.css" type=text/css rel=stylesheet>
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
	if(document.form1.renwumingcheng.value==""){alert("请输入任务名称");document.form1.renwumingcheng.focus();return false;}if(document.form1.wanchengshixian.value==""){alert("请输入完成时限");document.form1.wanchengshixian.focus();return false;}if(document.form1.zhifubaochou.value==""){alert("请输入支付报酬");document.form1.zhifubaochou.focus();return false;}
}
function gow()
{
	document.location.href="faburenwu_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="faburenwu_add_post.jsp">
  添加发布任务:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>任务名称：</td><td><input name='renwumingcheng' type='text' id='renwumingcheng' value='' size='50' />&nbsp;*</td></tr><tr><td>类别：</td><td><select name='leibie' id='leibie'>
     <option value="网站类">网站类</option>
     <option value="软件类">软件类</option>
     <option value="图文类">图文类</option>
     <option value="其他类">其他类</option>
</select></td></tr><tr><td>任务简介：</td><td><textarea name='renwujianjie' cols='50' rows='5' id='renwujianjie'></textarea></td></tr><tr><td>附件：</td><td><input name='fujian' type='text' id='fujian' size='50' value='' />&nbsp;<input type='button' value='上传' onClick="up('fujian')"/></td></tr><tr><td>完成时限：</td><td><input name='wanchengshixian' type='text' id='wanchengshixian' value='2018-05-18'  need='1' />&nbsp;*</td></tr><tr><td>支付报酬：</td><td><input name='zhifubaochou' type='text' id='zhifubaochou' value='' />
&nbsp;*系统拥金：
<input name='yongjin' type='text' id='yongjin' readonly="readonly" />
(此项不必填写，系统自动计算)</td>
</tr>
    <tr>
      <td>发布人：</td>
      <td><input name="faburen" type="text" id="faburen" value="<%=request.getSession().getAttribute("username")%>"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

