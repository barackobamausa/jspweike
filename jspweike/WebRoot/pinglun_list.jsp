
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
    
    <title>������Ϣ</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>
<%
String id=request.getParameter("id");
%>
  <body >
  <p>���������б�</p>
  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>������</td>
    <td bgcolor='#CCFFFF'>����ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
 String  sql="select * from pinglun where gqid='"+id+"'";
 
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String addby="";String content="";
 String addtime=""; 
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
addby=RS_result.getString("addby");content=RS_result.getString("content");
 addtime=RS_result.getString("addtime"); 
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=content %></td>
    <td><%=addby%></td>
    <td><%=addtime %></td><td width="60" align="center"> <a href="del.jsp?id=<%=id %>&tablename=pinglun" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
  </body>
</html>

