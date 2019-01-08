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
//ResultSet RS_result=connDbBean.executeQuery("select * from [fdsfds] where fdsfssd='"+fdsfd+"'");

// if(RS_result.next())
//{
//out.print("<script>alert('该班级已经存在,请换其他名称的班级!');window.history.go(-1);</script>");
//	}
//else{

	
  	  	String sql="insert into yinlexinxi(gequmingcheng,leibie,yanchang,zuoci,zuoqu,wenjian,geci,lx) values('"+gequmingcheng+"','"+leibie+"','"+yanchang+"','"+zuoci+"','"+zuoqu+"','"+wenjian+"','"+geci+"','"+lx+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='yinlexinxi_add.jsp';</script>");
  	  
//	}
//RS_result.close();

 %>
  </body>
</html>

