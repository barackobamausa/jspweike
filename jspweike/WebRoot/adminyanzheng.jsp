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
 
 String uid=request.getParameter("username");
 String pwd=request.getParameter("pwd");
 String cx=new String(request.getParameter("cx").getBytes("8859_1"));
 String sql="";
 if(cx.equals("��ƱԱ"))
 {
 	sql="select * from [shoupiaoyuan] where gonghao='"+uid+"' and mima='"+pwd+"'";
 }
 else
 {
 	sql="select * from [allusers] where username='"+uid+"' and pwd='"+pwd+"'";
 }
 ResultSet RS_result=connDbBean.executeQuery(sql);
 if(!RS_result.next())
{
	out.print("<script>alert('��������û������ڻ��������,�����µ�¼!');window.history.go(-1);</script>");
	}
else{
	
  	  session.setAttribute("username",uid);
	if(cx.equals("��ƱԱ"))
 	{
  	  session.setAttribute("cx","��ƱԱ");
  	  }
	  else
	  {
	  	session.setAttribute("cx",RS_result.getString("cx"));
	  }
	 response.sendRedirect("main.jsp");	 
	} 
RS_result.close();

 %>
  </body>
</html>

