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
 

String biaoti=request.getParameter("biaoti");
String leibie=request.getParameter("leibie");
String neirong=request.getParameter("content");
String tianjiaren=request.getParameter("tianjiaren");
//ResultSet RS_result=connDbBean.executeQuery("select * from [fdsfds] where fdsfssd='"+fdsfd+"'");

// if(RS_result.next())
//{
//out.print("<script>alert('�ð༶�Ѿ�����,�뻻�������Ƶİ༶!');window.history.go(-1);</script>");
//	}
//else{

	
  	  	String sql="insert into xinwentongzhi(biaoti,leibie,neirong,tianjiaren) values('"+biaoti+"','"+leibie+"','"+neirong+"','"+tianjiaren+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('��ӳɹ�!!');location.href='xinwentongzhi_add.jsp?lb="+leibie+"';</script>");
  	  
//	}
//RS_result.close();

 %>
  </body>
</html>

