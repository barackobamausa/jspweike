
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
    
    <title>�û�ע��</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>�����û�ע���б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:�û���:
     <input name="bianhao" type="text" id="bianhao" />
     ����
     <input name="mingcheng" type="text" id="mingcheng" />
     <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�û���</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>�Ա�</td><td bgcolor='#CCFFFF'>�绰</td><td bgcolor='#CCFFFF'>QQ</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>��������</td><td bgcolor='#CCFFFF'>ͷ��</td><td bgcolor='#CCFFFF'>��ַ</td>
    <td width="138" align="center" bgcolor="CCFFFF">����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  String sql="";
  sql="select * from yonghuzhuce where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and yonghuming like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and xingming like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String yonghuming="";String mima="";String xingming="";String xingbie="";String dianhua="";String QQ="";String youxiang="";String chushengnianyue="";String touxiang="";String dizhi="";
 String addtime=""; String jb="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
yonghuming=RS_result.getString("yonghuming");mima=RS_result.getString("mima");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");dianhua=RS_result.getString("dianhua");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");chushengnianyue=RS_result.getString("chushengnianyue");touxiang=RS_result.getString("touxiang");dizhi=RS_result.getString("dizhi");
 addtime=RS_result.getString("addtime"); jb=RS_result.getString("jb");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=yonghuming %></td><td><%=mima %></td><td><%=xingming %></td><td><%=xingbie %></td><td><%=dianhua %></td><td><%=QQ %></td><td><%=youxiang %></td><td><%=chushengnianyue %></td><td><a href='<%=touxiang %>' target='_blank'><img src='<%=touxiang %>' width=88 height=99 border=0 /></a></td><td><%=dizhi %></td>
    <td width="138" align="center"><%=jb %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="yonghuzhuce_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=yonghuzhuce" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
  </body>
</html>

