
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="cn.itbaizhan.db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�����б�ϵͳ</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
.STYLE1 {
	color: #D84828;
	font-weight: bold;
}
.STYLE5 {	color: #72AC27;
	font-size: 26pt;
}
.STYLE2 {color: #FFFFFF}

-->
</style>
  </head>
<%
String lx=request.getParameter("lx");
%>
  <body >
<table width="942" height="1023" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td width="942" height="32" background="qtimages/index_01.gif"><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td width="942" height="181" valign="top" background="qtimages/index_02.gif"><%@ include file="qttop2.jsp"%></td>
	</tr>
	<tr>
		<td height="28">
			<img src="qtimages/index_03.gif" width="942" height="28" alt=""></td>
	</tr>
	<tr>
		<td height="602"><table id="__01" width="942" height="602" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="602" valign="top"><%@ include file="qtleft.jsp"%></td>
            <td valign="top"><table id="__01" width="684" height="602" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="684" height="37" background="qtimages/index_04_02_01.gif"><table width="100%" height="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="19%" align="center" valign="bottom" class="STYLE1"><%=lx%>����</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top"><form name="form1" id="form1" method="post" action="">
                  ����:��������:
                  <input name="bianhao" type="text" id="bianhao" />
                  ���
  <input name="mingcheng" type="text" id="mingcheng" />
                  �ݳ�
  <input name="yanchang" type="text" id="yanchang" />
  <input type="submit" name="Submit" value="����" />
                </form>
                  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                    <tr>
                      <td width="30" align="center" bgcolor="#F8F8C8">���</td>
                      <td bgcolor='#F8F8C8'>��������</td>
                      <td bgcolor='#F8F8C8'>���</td>
                      <td bgcolor='#F8F8C8'>�ݳ�</td>
                      <td bgcolor='#F8F8C8'>����</td>
                      <td bgcolor='#F8F8C8'>����</td>
                      <td bgcolor='#F8F8C8'>�ļ�</td>
                      <td width="60" align="center" bgcolor="#F8F8C8">�������</td>
                      <td width="60" align="center" bgcolor="#F8F8C8">����</td>
                    </tr>
                    <%
  String sql="";
  sql="select * from yinlexinxi where lx='"+lx+"'";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and gequmingcheng like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and leibie like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("yanchang")=="" ||request.getParameter("yanchang")==null )
  {}
  else
  {
  	sql=sql+" and yanchang like '%"+new String(request.getParameter("yanchang").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by hits desc, id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gequmingcheng="";String leibie="";String yanchang="";String zuoci="";String zuoqu="";String wenjian="";String geci="";
 String addtime="";  String hits=""; 
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
gequmingcheng=RS_result.getString("gequmingcheng");leibie=RS_result.getString("leibie");yanchang=RS_result.getString("yanchang");zuoci=RS_result.getString("zuoci");zuoqu=RS_result.getString("zuoqu");wenjian=RS_result.getString("wenjian");geci=RS_result.getString("geci");
 addtime=RS_result.getString("addtime"); lx=RS_result.getString("lx");hits=RS_result.getString("hits");
 
 
%>
                    <tr>
                      <td width="30" align="center"><%=i %></td>
                      <td><%=gequmingcheng %></td>
                      <td><%=leibie %></td>
                      <td><%=yanchang %></td>
                      <td><%=zuoci %></td>
                      <td><%=zuoqu %></td>
                      <td><a href='<%=wenjian %>' target='_blank'>����</a></td>
                      <td width="60" align="center"><%=hits %></td>
                      <td width="60" align="center"><a href="yinlexinxi_detail.jsp?id=<%=id%>">����</a></td>
                    </tr>
                    <%
  }
   %>
                  </table>
                  <br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onClick="javascript:window.print();">��ӡ��ҳ</a> </td>
              </tr>
              
              <tr>
                <td height="20"><img src="qtimages/index_04_02_05.gif" width="684" height="20" alt=""></td>
              </tr>
              
            </table></td>
          </tr>
      </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>

  </body>
</html>

