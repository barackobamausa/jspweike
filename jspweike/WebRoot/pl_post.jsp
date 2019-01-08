<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="cn.itbaizhan.db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
    

  </head>
  
  <body>
  <%
 
  String content=request.getParameter("content");
 String gqid=request.getParameter("gqid");
 
  	  	String sql="insert into pinglun(addby,content,gqid) values('"+request.getSession().getAttribute("username")+"','"+content+"','"+gqid+"')";
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('ÆÀÂÛ³É¹¦!!');window.history.go(-2);</script>");
  	 
 %>
  </body>
</html>

