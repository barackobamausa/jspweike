
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
    
    <title>����֪ͨ</title>
    

  </head>

  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="xinwentongzhi_updt_post.jsp?id=<%=id %>">
  �޸�����֪ͨ:
  <br><br>
  <%
  String sql="select * from xinwentongzhi where id="+id;
  String biaoti="";String leibie="";String neirong="";String tianjiaren="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");tianjiaren=RS_result.getString("tianjiaren");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>���⣺</td><td><input name='biaoti' type='text' id='biaoti' value='<%= biaoti%>' size="50" /></td></tr>
     <tr><td>���</td><td><input name='leibie' type='text' id='leibie' value='<%= leibie%>' /></td></tr>
     <tr><td>���ݣ�</td><td><textarea name="content" style="display:none"><%=neirong %></textarea>
			<iframe ID="eWebEditor1" src="eWebEditor_V4.60/ewebeditor.htm?id=content&style=coolblue" frameborder="0" scrolling="no" width="600" HEIGHT="350"></iframe></td></tr>
     <tr><td>����ˣ�</td><td><input name='tianjiaren' type='text' id='tianjiaren' value='<%= tianjiaren%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


