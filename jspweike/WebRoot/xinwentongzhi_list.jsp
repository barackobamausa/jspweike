
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
    
    <title><%=new String(request.getParameter("lb").getBytes("8859_1")) %></title>
    <LINK href="CSS.css" type=text/css rel=stylesheet>
<%
String lb=new String(request.getParameter("lb").getBytes("8859_1"));
if (lb==null)
{
	lb="企业文化";
}
 %>
  </head>

  <body >
  <p>已有<%=new String(request.getParameter("lb").getBytes("8859_1")) %>列表：</p>
  <form name="form1" id="form1" method="post" action="xinwentongzhi_list.jsp">
   搜索:标题:
  <input name="bianhao" type="text" id="bianhao" />
 <input name="lb" type="hidden" id="lb" value="<%=new String(request.getParameter("lb").getBytes("8859_1")) %>" />
  <input type="submit" name="Submit" value="查找" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="6%" bgcolor="A4B6D7">序号</td>
    <td width="42%" bgcolor='#A4B6D7'>标题</td><td width="10%" bgcolor='#A4B6D7'>类别</td><td width="12%" bgcolor='#A4B6D7'>添加人</td>
    <td width="21%" bgcolor="A4B6D7">添加时间</td>
    
    <td width="9%" align="center" bgcolor="A4B6D7">操作</td>
  </tr>
  <%
  String sql="";
  sql="select * from xinwentongzhi where leibie='"+ new String(request.getParameter("lb").getBytes("8859_1")) +"'";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and biaoti like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String biaoti="";String leibie="";String neirong="";String tianjiaren="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
biaoti=RS_result.getString("biaoti");leibie=RS_result.getString("leibie");neirong=RS_result.getString("neirong");tianjiaren=RS_result.getString("tianjiaren");
 addtime=RS_result.getString("addtime");
 
 
%>
  <tr>
    <td><%=i %></td>
    <td><a href="gg_detail.jsp?id=<%=id%>" target="_blank"><%=biaoti %></a></td><td><%=leibie %></td><td><%=tianjiaren %></td>
    <td><%=addtime %></td>
    <td align="center"><a href="xinwentongzhi_updt.jsp?id=<%=id%>">修改</a>  <a href="delgg.jsp?id=<%=id %>&tablename=xinwentongzhi&lb=<%=new String(request.getParameter("lb").getBytes("8859_1")) %>" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
  </body>
</html>

