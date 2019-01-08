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
double yj=0;
yj=Float.valueOf(zhifubaochou).floatValue()*0.01;
//ResultSet RS_result=connDbBean.executeQuery("select * from [fdsfds] where fdsfssd='"+fdsfd+"'");

// if(RS_result.next())
//{
//out.print("<script>alert('该班级已经存在,请换其他名称的班级!');window.history.go(-1);</script>");
//	}
//else{

	
  	  	String sql="insert into faburenwu(renwumingcheng,leibie,renwujianjie,fujian,wanchengshixian,zhifubaochou,faburen,yongjin) values('"+renwumingcheng+"','"+leibie+"','"+renwujianjie+"','"+fujian+"','"+wanchengshixian+"','"+zhifubaochou+"','"+faburen+"','"+Double.toString(yj)+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='faburenwu_add.jsp';</script>");
  	  
//	}
//RS_result.close();

 %>
  </body>
</html>

