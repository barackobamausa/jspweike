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
String faburen=request.getParameter("faburen");String renwumingcheng=request.getParameter("renwumingcheng");String leibie=request.getParameter("leibie");String renwujianjie=request.getParameter("renwujianjie");String fujian=request.getParameter("fujian");String wanchengshixian=request.getParameter("wanchengshixian");String zhifubaochou=request.getParameter("zhifubaochou");
String id=request.getParameter("id");
String sql="update faburenwu set faburen='"+faburen+"', renwumingcheng='"+renwumingcheng+"',leibie='"+leibie+"',renwujianjie='"+renwujianjie+"',fujian='"+fujian+"',wanchengshixian='"+wanchengshixian+"',zhifubaochou='"+zhifubaochou+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='faburenwu_list.jsp';</script>");
%>
  </body>
</html>


