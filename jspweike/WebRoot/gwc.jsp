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
 if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
	{
	 out.print("<script>alert('对不起，请您先登陆!!');window.history.go(-1);</script>");

	}
	else
	{
 String renwumingcheng=new String(request.getParameter("renwumingcheng").getBytes("8859_1"));
 String leibie=new String(request.getParameter("leibie").getBytes("8859_1"));
 String wanchengshixian=new String(request.getParameter("wanchengshixian").getBytes("8859_1"));
 String zhifubaochou=new String(request.getParameter("zhifubaochou").getBytes("8859_1"));
 String faburen=new String(request.getParameter("faburen").getBytes("8859_1"));

 String sql="insert into gwc(yonghuming,renwumingcheng,leibie,wanchengshixian,zhifubaochou,faburen) values('"+request.getSession().getAttribute("username")+"','"+renwumingcheng+"','"+leibie+"','"+wanchengshixian+"','"+zhifubaochou+"','"+faburen+"')";
 
 connDbBean.executeUpdate(sql);
 
 out.print("<script>alert('操作成功!!');window.history.go(-1);</script>");
  	}
 %>
  </body>
</html>

