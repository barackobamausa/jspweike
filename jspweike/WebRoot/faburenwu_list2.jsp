
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
    
    <title>发布任务</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>已有发布任务列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:任务名称:
     <input name="bianhao" type="text" id="bianhao" />
     类别
     <input name="mingcheng" type="text" id="mingcheng" />
     <input type="submit" name="Submit" value="查找" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>任务名称</td><td bgcolor='#CCFFFF'>类别</td><td bgcolor='#CCFFFF'>任务简介</td><td bgcolor='#CCFFFF'>附件</td><td bgcolor='#CCFFFF'>完成时限</td><td bgcolor='#CCFFFF'>支付报酬</td>
    <td width="138" align="center" bgcolor="CCFFFF">系统拥金</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  String sql="";
  sql="select * from faburenwu where faburen='"+request.getSession().getAttribute("username")+"'";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and renwumingcheng like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and leibie like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String renwumingcheng="";String leibie="";String renwujianjie="";String fujian="";String wanchengshixian="";String zhifubaochou="";
 String addtime=""; String yongjin="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
renwumingcheng=RS_result.getString("renwumingcheng");leibie=RS_result.getString("leibie");renwujianjie=RS_result.getString("renwujianjie");fujian=RS_result.getString("fujian");wanchengshixian=RS_result.getString("wanchengshixian");zhifubaochou=RS_result.getString("zhifubaochou");
 addtime=RS_result.getString("addtime"); yongjin=RS_result.getString("yongjin");
 
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=renwumingcheng %></td><td><%=leibie %></td><td><%=renwujianjie %></td><td><a href='<%=fujian %>' target='_blank'>下载</a></td><td><%=wanchengshixian %></td><td><%=zhifubaochou %></td>
    <td width="138" align="center"><%=yongjin %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="faburenwu_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=faburenwu" onClick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onClick="javascript:window.print();">打印本页</a>
  </body>
</html>

