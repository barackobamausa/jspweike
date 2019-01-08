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
String lx=request.getParameter("lx");String gequmingcheng=request.getParameter("gequmingcheng");String leibie=request.getParameter("leibie");String yanchang=request.getParameter("yanchang");String zuoci=request.getParameter("zuoci");String zuoqu=request.getParameter("zuoqu");String wenjian=request.getParameter("wenjian");String geci=request.getParameter("geci");
String id=request.getParameter("id");
String sql="update yinlexinxi set lx='"+lx+"', gequmingcheng='"+gequmingcheng+"',leibie='"+leibie+"',yanchang='"+yanchang+"',zuoci='"+zuoci+"',zuoqu='"+zuoqu+"',wenjian='"+wenjian+"',geci='"+geci+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='yinlexinxi_list.jsp';</script>");
%>
  </body>
</html>


