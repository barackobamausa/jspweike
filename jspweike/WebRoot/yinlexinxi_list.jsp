
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
    
    <title>音乐信息</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>已有音乐信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:歌曲名称:
     <input name="bianhao" type="text" id="bianhao" />
     类别
     <input name="mingcheng" type="text" id="mingcheng" />
     演唱
     <input name="yanchang" type="text" id="yanchang" />
     <input type="submit" name="Submit" value="查找" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>歌曲名称</td>
    <td bgcolor='#CCFFFF'>类型</td>
    <td bgcolor='#CCFFFF'>类别</td><td bgcolor='#CCFFFF'>演唱</td><td bgcolor='#CCFFFF'>作词</td><td bgcolor='#CCFFFF'>作曲</td><td bgcolor='#CCFFFF'>文件</td><td width="138" align="center" bgcolor="CCFFFF">查看评论</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
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
    <td><%=leibie %></td><td><%=yanchang %></td><td><%=zuoci %></td><td><%=zuoqu %></td><td><a href='<%=wenjian %>' target='_blank'>下载</a></td><td width="138" align="center"><a href="pinglun_list.jsp?id=<%=id%>">查看评论</a></td>
    <td width="60" align="center"><a href="yinlexinxi_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=yinlexinxi" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
  </body>
</html>

