
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
    
    <title>网上招标系统</title><LINK href="CSS.css" type=text/css rel=stylesheet>
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
                    <td width="19%" align="center" valign="bottom" class="STYLE1">公寓简介</td>
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
                              &nbsp;&nbsp;&nbsp;&nbsp;拜泉县杜岩老年公寓位于湖南省长沙市河西先导区、雷锋的故乡——拜泉县黄金镇廖家坪村杨水塘(即长沙市岳麓大道西，长沙西收费站北边800米处)。这里交通方便、环境优美、青山绿水、空气清新，山庄前面是独具特色的田园风光，后面是绿树成荫、连绵不断的青山，山庄现可营造面积300余亩，杜岩老年公寓项目于2008年11月10日正式起动，2008年11月23日经拜泉县民政局批准成立。在各级政府的大力支持下于2010年5月1日正式开园。杜岩老年公寓第一期工程投资800万元，床位128个，第二期工程投资1200万元，床位186个。第三期工程正在筹划中…… <br>
                              &nbsp;&nbsp;&nbsp;&nbsp;杜岩老年公寓集“养老、助老、医疗、文化、娱乐、休闲为一体的全国独具一格的老年人社会养老机构，公寓配套设施独具一格，室外有鱼塘30亩，菜园20亩，山上有自然森林近2000亩、竹园、门球场、排球场等，室内设有豪华单、双人间，还有豪华一室一厅，房间宽敞，室内配有彩电、电脑网络、电话、床前服务呼叫系统，独立卫生间，公寓内设有大型餐厅、包厢、歌厅、乒乓球、桌球、棋牌室、图书室、医务室、救护车等。杜岩老年公寓，以科学的知识和技能维护老年人的基本权益，“以人为本、尊老扶弱、诚信敬业、奉献爱心”的精神全心全意为老年人服务。杜岩老年公寓是一个充满人间友爱、美好、幸福的乐园，是老年人颐养天年的理想家园，欢迎各界老年朋友入居杜岩。同时欢迎国内外各界朋友加入我们的行列，将杜岩建成全国一流的养老社区。 <br>
                              &nbsp;&nbsp;&nbsp;&nbsp;杜岩老年公寓是目前湖南省规模最大，环境最好，设备最完善，服务最佳的山庄式养老公寓。本公寓专为老年人设计，集生活起居，康复健身，文化娱乐于一体的现代化大型老年公寓。 </p>
                            <p></p></td>
                          </tr>
                          <tr>
                            <td align="right"><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();"></td>
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

