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
 
String zhaopian=request.getParameter("zhaopian");
String xuehao=request.getParameter("xuehao");String xingming=request.getParameter("xingming");String xingbie=request.getParameter("xingbie");String minzu=request.getParameter("minzu");String chushengnianyue=request.getParameter("chushengnianyue");String jiatingzhuzhi=request.getParameter("jiatingzhuzhi");String ruxiaoshijian=request.getParameter("ruxiaoshijian");String xibu=request.getParameter("xibu");String techang=request.getParameter("techang");String zhuanye=request.getParameter("zhuanye");String mima=request.getParameter("mima");String jianli=request.getParameter("jianli");
//ResultSet RS_result=connDbBean.executeQuery("select * from [fdsfds] where fdsfssd='"+fdsfd+"'");

// if(RS_result.next())
//{
//out.print("<script>alert('该班级已经存在,请换其他名称的班级!');window.history.go(-1);</script>");
//	}
//else{

	
  	  	String sql="insert into xuesheng(xuehao,xingming,xingbie,minzu,chushengnianyue,jiatingzhuzhi,ruxiaoshijian,xibu,techang,zhuanye,mima,jianli,zhaopian) values('"+xuehao+"','"+xingming+"','"+xingbie+"','"+minzu+"','"+chushengnianyue+"','"+jiatingzhuzhi+"','"+ruxiaoshijian+"','"+xibu+"','"+techang+"','"+zhuanye+"','"+mima+"','"+jianli+"','"+zhaopian+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('注册成功!!');location.href='index.jsp';</script>");
  	  
//	}
//RS_result.close();

 %>
  </body>
</html>

