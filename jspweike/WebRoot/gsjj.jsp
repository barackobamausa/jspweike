
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
                    <td width="19%" align="center" valign="bottom" class="STYLE1">��Ԣ���</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top"><table width="99%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center">
                       
                        <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#F8C878" style="border-collapse:collapse">
                          
                          <tr>
                            <td height="110" align="left"><p>&nbsp;&nbsp;&nbsp;&nbsp;<br>
                              &nbsp;&nbsp;&nbsp;&nbsp;��Ȫ�ض������깫Ԣλ�ں���ʡ��ɳ�к����ȵ������׷�Ĺ��硪����Ȫ�ػƽ����μ�ƺ����ˮ��(����ɳ����´���������ɳ���շ�վ����800�״�)�����ｻͨ���㡢������������ɽ��ˮ���������£�ɽׯǰ���Ƕ�����ɫ����԰��⣬�����������������಻�ϵ���ɽ��ɽׯ�ֿ�Ӫ�����300��Ķ���������깫Ԣ��Ŀ��2008��11��10����ʽ�𶯣�2008��11��23�վ���Ȫ����������׼�������ڸ��������Ĵ���֧������2010��5��1����ʽ��԰���������깫Ԣ��һ�ڹ���Ͷ��800��Ԫ����λ128�����ڶ��ڹ���Ͷ��1200��Ԫ����λ186���������ڹ������ڳﻮ�С��� <br>
                              &nbsp;&nbsp;&nbsp;&nbsp;�������깫Ԣ�������ϡ����ϡ�ҽ�ơ��Ļ������֡�����Ϊһ���ȫ������һ���������������ϻ�������Ԣ������ʩ����һ������������30Ķ����԰20Ķ��ɽ������Ȼɭ�ֽ�2000Ķ����԰�����򳡡����򳡵ȣ��������к�������˫�˼䣬���к���һ��һ������������������вʵ硢�������硢�绰����ǰ�������ϵͳ�����������䣬��Ԣ�����д��Ͳ��������ᡢ������ƹ�������������ҡ�ͼ���ҡ�ҽ���ҡ��Ȼ����ȡ��������깫Ԣ���Կ�ѧ��֪ʶ�ͼ���ά�������˵Ļ���Ȩ�棬������Ϊ�������Ϸ��������ž�ҵ�����װ��ġ��ľ���ȫ��ȫ��Ϊ�����˷��񡣶������깫Ԣ��һ�������˼��Ѱ������á��Ҹ�����԰������������������������԰����ӭ��������������Ӷ��ҡ�ͬʱ��ӭ������������Ѽ������ǵ����У������ҽ���ȫ��һ�������������� <br>
                              &nbsp;&nbsp;&nbsp;&nbsp;�������깫Ԣ��Ŀǰ����ʡ��ģ��󣬻�����ã��豸�����ƣ�������ѵ�ɽׯʽ���Ϲ�Ԣ������ԢרΪ��������ƣ���������ӣ����������Ļ�������һ����ִ����������깫Ԣ�� </p>
                            <p></p></td>
                          </tr>
                          <tr>
                            <td align="right"><input type="button" name="Submit5" value="����" onClick="javascript:history.back();"></td>
                          </tr>
                        </table>
                      <table width="98%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td height="30" align="right">&nbsp;</td>
                          </tr>
                      </table></td>
                  </tr>
                </table>
               </td>
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

