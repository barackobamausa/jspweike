<%@ page language="java"  pageEncoding="gb2312" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="cn.itbaizhan.db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
  </head>
  <body>
  <%
String jb=request.getParameter("jb");String yonghuming=request.getParameter("yonghuming");String mima=request.getParameter("mima");String xingming=request.getParameter("xingming");String xingbie=request.getParameter("xingbie");String dianhua=request.getParameter("dianhua");String QQ=request.getParameter("QQ");String youxiang=request.getParameter("youxiang");String chushengnianyue=request.getParameter("chushengnianyue");String touxiang=request.getParameter("touxiang");String dizhi=request.getParameter("dizhi");
String id=request.getParameter("id");
String sql="update yonghuzhuce set jb='"+jb+"', yonghuming='"+yonghuming+"',mima='"+mima+"',xingming='"+xingming+"',xingbie='"+xingbie+"',dianhua='"+dianhua+"',QQ='"+QQ+"',youxiang='"+youxiang+"',chushengnianyue='"+chushengnianyue+"',touxiang='"+touxiang+"',dizhi='"+dizhi+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='yonghuzhuce_list.jsp';</script>");
%>
  </body>
</html>


