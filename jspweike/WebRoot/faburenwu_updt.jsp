
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
    
    <title>��������</title><script language="javascript" src="js/Calendar.js"></script>
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
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.renwumingcheng.value==""){alert("��������������");document.form1.renwumingcheng.focus();return false;}if(document.form1.wanchengshixian.value==""){alert("���������ʱ��");document.form1.wanchengshixian.focus();return false;}if(document.form1.zhifubaochou.value==""){alert("������֧������");document.form1.zhifubaochou.focus();return false;}if(document.form1.faburen.value==""){alert("�����뷢����");document.form1.faburen.focus();return false;}if(document.form1.faburen.value==""){alert("�����뷢����");document.form1.faburen.focus();return false;}if(document.form1.faburen.value==""){alert("�����뷢����");document.form1.faburen.focus();return false;}if(document.form1.faburen.value==""){alert("�����뷢����");document.form1.faburen.focus();return false;}if(document.form1.faburen.value==""){alert("�����뷢����");document.form1.faburen.focus();return false;}if(document.form1.faburen.value==""){alert("�����뷢����");document.form1.faburen.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="faburenwu_updt_post.jsp?id=<%=id %>">
  �޸ķ�������:
  <br><br>
  <%
  String sql="select * from faburenwu where id="+id;
  String renwumingcheng="";String leibie="";String renwujianjie="";String fujian="";String wanchengshixian="";String zhifubaochou="";String faburen="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  faburen=RS_result.getString("faburen");  renwumingcheng=RS_result.getString("renwumingcheng");leibie=RS_result.getString("leibie");renwujianjie=RS_result.getString("renwujianjie");fujian=RS_result.getString("fujian");wanchengshixian=RS_result.getString("wanchengshixian");zhifubaochou=RS_result.getString("zhifubaochou");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>�������ƣ�</td><td><input name='renwumingcheng' type='text' id='renwumingcheng' size='50' value='<%=renwumingcheng%>' /></td></tr><tr><td>���</td><td><select name='leibie' id='leibie'>
       <option value="��վ��">��վ��</option>
       <option value="�����">�����</option>
       <option value="ͼ����">ͼ����</option>
       <option value="������">������</option>
     </select></td></tr><script language="javascript">document.form1.leibie.value='<%=leibie%>';</script><tr><td>�����飺</td><td><textarea name='renwujianjie' cols='50' rows='5' id='renwujianjie'><%=renwujianjie%></textarea></td></tr><tr><td>������</td><td><input name='fujian' type='text' id='fujian' size='50' value='<%= fujian%>' />&nbsp;<input type='button' value='�ϴ�' onClick="up('fujian')"/></td></tr><tr><td>���ʱ�ޣ�</td><td><input name='wanchengshixian' type='text' id='wanchengshixian' value='<%= wanchengshixian%>' onClick="getDate(form1.wanchengshixian,'2')" need="1" readonly='readonly' /></td></tr><tr><td>֧�����꣺</td><td><input name='zhifubaochou' type='text' id='zhifubaochou' value='<%= zhifubaochou%>' /></td></tr>
     <tr>
       <td>�����ˣ�</td>
       <td><input name="faburen" type="text" id="faburen" value="<%= faburen%>"></td>
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


