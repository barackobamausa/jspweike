
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

-->
</style>
  </head>
<script language="javascript">
function check()
{
	if(document.form1.yonghuming.value==""){alert("�������û���");document.form1.yonghuming.focus();return false;}if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("�����빫˾����");document.form1.gongsimingcheng.focus();return false;}if(document.form1.dianhua.value==""){alert("������绰");document.form1.dianhua.focus();return false;}if(document.form1.xingye.value==""){alert("��������ҵ");document.form1.xingye.focus();return false;}
}
function gow()
{
	document.location.href="gongsi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
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
                    <td width="19%" align="center" valign="bottom" class="STYLE1">���԰�</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top"><table width="99%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="24" valign="middle"><strong>��ǰλ�ã�<a href="index.jsp">��ҳ</a>>>&gt;&gt;���԰��б�</strong> </td>
                          <td valign="middle" ><a href="lyb.jsp"><strong>��Ҫ����</strong></a></td>
                        </tr>
                      </table>
                       
                        <%
    int curpage=1;//��ǰҳ
				int page_record=3;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from liuyanban";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  zys=zgs/page_record+1;
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//��ȡ���ݵ�ֵ����Ҫ��ʾ��ҳ
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
				//out.print(curpage);
				String sql;
				if (curpage==1)
				{
				sql="select top "+page_record+" * from liuyanban";
				}
				else
				{
				sql="select top "+page_record+" * from liuyanban where id not in (select top "+((curpage-1)*page_record)+" id from liuyanban order by id desc) ";
				}
				
				  sql=sql+" order by id desc";
				  


  ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String nicheng="";String xingbie="";String QQ="";String youxiang="";String dianhua="";String neirong="";String huifuneirong="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");huifuneirong=RS_result.getString("huifuneirong");
nicheng=RS_result.getString("cheng");xingbie=RS_result.getString("xingbie");QQ=RS_result.getString("QQ");youxiang=RS_result.getString("youxiang");dianhua=RS_result.getString("dianhua");neirong=RS_result.getString("neirong");
 addtime=RS_result.getString("addtime");
 
 
%>
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#009900" class="tb">
                          <!--DWLayoutTable-->
                          <tr>
                            <td width="11" rowspan="3" valign="top" bgcolor="#FFFFFF"><!--DWLayoutEmptyCell-->&nbsp;</td>
                            <td width="85" rowspan="3" align="center" valign="middle" bgcolor="#FFFFFF"><img width='70'height='70' src=img/<%=xingbie %>.gif border=0> </td>
                            <td height="20" colspan="2" align="left" valign="middle" bgcolor="#FFFFFF">&nbsp; &nbsp; ������:<%=addtime%> &nbsp;</td>
                            <td width="10" rowspan="3" valign="top" bgcolor="#FFFFFF" style="width: 10px"><!--DWLayoutEmptyCell-->&nbsp;</td>
                          </tr>
                          <tr>
                            <td width="279" height="78" align="left" valign="top" bgcolor="#FFFFFF">&nbsp;<%=neirong%></td>
                            <td width="286" align="left" valign="top" bgcolor="#FFFFFF">�ظ���<%=huifuneirong%></td>
                          </tr>
                          <tr>
                            <td colspan="2" align="left" valign="middle" bgcolor="#FFFFFF" style="height: 25px">&nbsp; &nbsp;�ǳƣ�<%=nicheng%> &nbsp; &nbsp;�绰��<%=dianhua %>&nbsp;&nbsp;�� ��:<%=youxiang%> &nbsp; QQ:<%=QQ%>&nbsp; &nbsp; </td>
                          </tr>
                        </table>
                      <%}%>
                        <p>&nbsp;&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="lyblist.jsp?page=1">��ҳ</a>��<a href="lyblist.jsp?page=<%= curpage-1%>">��һҳ</a>��<A 
                        
                        href="lyblist.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="lyblist.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT 
                        color=red><%=curpage %></FONT>ҳ/��<FONT 
                        color=red><%=zys %></FONT>ҳ</p></td>
                  </tr>
                </table></td>
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

