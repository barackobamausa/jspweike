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
 
 String uid=new String(request.getParameter("username").getBytes("8859_1"));
 String pwd=new String(request.getParameter("pwd1").getBytes("8859_1"));

 String sql="";
 String cx=new String(request.getParameter("cx").getBytes("8859_1"));
 if(cx.equals("ע���û�"))
 {
 	sql="select * from [yonghuzhuce] where yonghuming='"+uid+"' and mima='"+pwd+"'";
 }
 else
 {
 	sql="select * from gongsi where yonghuming='"+uid+"' and mima='"+pwd+"'";
 }
 ResultSet RS_result=connDbBean.executeQuery(sql);
 if(!RS_result.next())
{
	out.print("<script>alert('��������û������ڻ��������,�����µ�¼!');window.history.go(-1);</script>");
	}
else{
	
  	  session.setAttribute("username",uid);
  	  
	  session.setAttribute("cx",cx);
	 
	 response.sendRedirect("index.jsp");	 
	} 
RS_result.close();

 %>
  </body>
</html>

