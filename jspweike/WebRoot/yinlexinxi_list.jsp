
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

  <body >
  <p>����������Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:��������:
     <input name="bianhao" type="text" id="bianhao" />
     ���
     <input name="mingcheng" type="text" id="mingcheng" />
     �ݳ�
     <input name="yanchang" type="text" id="yanchang" />
     <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>���</td><td bgcolor='#CCFFFF'>�ݳ�</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>�ļ�</td><td width="138" align="center" bgcolor="CCFFFF">�鿴����</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  String sql="";
  sql="select * from yinlexinxi where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and gequmingcheng like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and leibie like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("yanchang")=="" ||request.getParameter("yanchang")==null )
  {}
  else
  {
  	sql=sql+" and yanchang like '%"+new String(request.getParameter("yanchang").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gequmingcheng="";String leibie="";String yanchang="";String zuoci="";String zuoqu="";String wenjian="";String geci="";
 String addtime=""; String lx="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gequmingcheng=RS_result.getString("gequmingcheng");leibie=RS_result.getString("leibie");yanchang=RS_result.getString("yanchang");zuoci=RS_result.getString("zuoci");zuoqu=RS_result.getString("zuoqu");wenjian=RS_result.getString("wenjian");geci=RS_result.getString("geci");
 addtime=RS_result.getString("addtime"); lx=RS_result.getString("lx");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=gequmingcheng %></td>
    <td><%=lx%></td>
    <td><%=leibie %></td><td><%=yanchang %></td><td><%=zuoci %></td><td><%=zuoqu %></td><td><a href='<%=wenjian %>' target='_blank'>����</a></td><td width="138" align="center"><a href="pinglun_list.jsp?id=<%=id%>">�鿴����</a></td>
    <td width="60" align="center"><a href="yinlexinxi_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=yinlexinxi" onClick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a>
  </body>
</html>

