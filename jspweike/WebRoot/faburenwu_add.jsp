
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
    
    <title>��������</title><LINK href="CSS.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","�ļ��ϴ�");
            pop.build();
            pop.show();
	    }
	</script>
  </head>
<script language="javascript">
function check()
{
	if(document.form1.renwumingcheng.value==""){alert("��������������");document.form1.renwumingcheng.focus();return false;}if(document.form1.wanchengshixian.value==""){alert("���������ʱ��");document.form1.wanchengshixian.focus();return false;}if(document.form1.zhifubaochou.value==""){alert("������֧������");document.form1.zhifubaochou.focus();return false;}
}
function gow()
{
	document.location.href="faburenwu_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="faburenwu_add_post.jsp">
  ��ӷ�������:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>�������ƣ�</td><td><input name='renwumingcheng' type='text' id='renwumingcheng' value='' size='50' />&nbsp;*</td></tr><tr><td>���</td><td><select name='leibie' id='leibie'>
     <option value="��վ��">��վ��</option>
     <option value="�����">�����</option>
     <option value="ͼ����">ͼ����</option>
     <option value="������">������</option>
</select></td></tr><tr><td>�����飺</td><td><textarea name='renwujianjie' cols='50' rows='5' id='renwujianjie'></textarea></td></tr><tr><td>������</td><td><input name='fujian' type='text' id='fujian' size='50' value='' />&nbsp;<input type='button' value='�ϴ�' onClick="up('fujian')"/></td></tr><tr><td>���ʱ�ޣ�</td><td><input name='wanchengshixian' type='text' id='wanchengshixian' value='2018-05-18'  need='1' />&nbsp;*</td></tr><tr><td>֧�����꣺</td><td><input name='zhifubaochou' type='text' id='zhifubaochou' value='' />
&nbsp;*ϵͳӵ��
<input name='yongjin' type='text' id='yongjin' readonly="readonly" />
(�������д��ϵͳ�Զ�����)</td>
</tr>
    <tr>
      <td>�����ˣ�</td>
      <td><input name="faburen" type="text" id="faburen" value="<%=request.getSession().getAttribute("username")%>"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

