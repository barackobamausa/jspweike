
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
    
    <title>�����б�ϵͳ</title>
 <script src="js/menu.js"></script>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 12px;
}
.STYLE2 {
	font-size: 12px;
	color: #03515d;
}
a:link {font-size:12px; text-decoration:none; color:#03515d;}
a:visited{font-size:12px; text-decoration:none; color:#03515d;}
.STYLE3 {font-size: 12px}
-->
</style>


  </head>

  <body>
     <table width="156"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="33" background="images/main_21.gif">&nbsp;</td>
      </tr>
	  
	  
      <tr>
        <td height="20" background="images/main_25.gif" id="td1" onClick="show(1)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="13%">&nbsp;</td>
            <td width="72%" height="20"><div align="center">
              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="center"><img src="images/top_8.gif" width="16" height="16"></div></td>
                  <td valign="middle"><div align="center" class="STYLE1">ϵͳ�û�����</div></td>
                </tr>
              </table>
            </div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr id="show1">
        <td align="center" valign="top"><table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="130" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_1.gif" width="31" height="31"></div></td>
                  <td width="89" height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="yhzhgl.jsp" target="hsgmain">ϵͳ�û�����</a></span></td>
                    </tr>
                  </table></td>
                </tr>
               <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_1.gif" width="31" height="31"></div></td>
                  <td width="89" height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="yonghuzhuce_list.jsp" target="hsgmain">ע���Ա����</a></span></td>
                    </tr>
                  </table></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      
	  
	   <tr>
        <td height="20" background="images/main_25.gif" id="td2" onClick="show(2)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="13%">&nbsp;</td>
            <td width="72%" height="20"><div align="center">
              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="center"><img src="images/top_8.gif" width="16" height="16"></div></td>
                  <td valign="middle"><div align="center" class="STYLE1">�����������</div></td>
                </tr>
              </table>
            </div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr id="show2" style="display:none">
        <td align="center" valign="top"><table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="130" border="0" align="center" cellpadding="0" cellspacing="0">
               
                <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_2.gif" width="31" height="31"></div></td>
                  <td height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="faburenwu_list.jsp" target="hsgmain">���������ѯ</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                
            </table></td>
          </tr>
        </table></td>
      </tr>
	  
	  
	    <tr>
        <td height="20" background="images/main_25.gif" id="td3" onClick="show(3)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="13%">&nbsp;</td>
            <td width="72%" height="20"><div align="center">
              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="center"><img src="images/top_8.gif" width="16" height="16"></div></td>
                  <td valign="middle"><div align="center" class="STYLE1">վ�����Ź���</div></td>
                </tr>
              </table>
            </div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr id="show3" style="display:none">
        <td align="center" valign="top"><table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="130" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_1.gif" width="31" height="31"></div></td>
                  <td width="89" height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="xinwentongzhi_add.jsp?lb=վ������" target="hsgmain">վ���������</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_2.gif" width="31" height="31"></div></td>
                  <td height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="xinwentongzhi_list.jsp?lb=վ������" target="hsgmain">վ�����Ų�ѯ</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                
               
            </table></td>
          </tr>
        </table></td>
      </tr>
	  
	  
	  
	   <tr >
        <td height="20" background="images/main_25.gif" id="td3" onClick="show(4)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="13%">&nbsp;</td>
            <td width="72%" height="20"><div align="center">
              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="center"><img src="images/top_8.gif" width="16" height="16"></div></td>
                  <td valign="middle"><div align="center" class="STYLE1">�ɽ���¼����</div></td>
                </tr>
              </table>
            </div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr id="show4" style="display:none">
        <td align="center" valign="top"><table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="130" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_1.gif" width="31" height="31"></div></td>
                  <td width="89" height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="dd_list3.jsp" target="hsgmain">�ɽ���¼�鿴</a></span></td>
                    </tr>
                  </table></td>
                </tr>
              
               
            </table></td>
          </tr>
        </table></td>
      </tr>
	  
	  
	  
	  <tr style="display:none">
        <td height="20" background="images/main_25.gif" id="td3" onClick="show(5)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="13%">&nbsp;</td>
            <td width="72%" height="20"><div align="center">
              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="center"><img src="images/top_8.gif" width="16" height="16"></div></td>
                  <td valign="middle"><div align="center" class="STYLE1">�Լ��ι���</div></td>
                </tr>
              </table>
            </div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr id="show5" style="display:none">
        <td align="center" valign="top"><table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="130" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_1.gif" width="31" height="31"></div></td>
                  <td width="89" height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="zijiayouhuodong_add.jsp" target="hsgmain">�Լ������</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_2.gif" width="31" height="31"></div></td>
                  <td height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="zijiayouhuodong_list.jsp" target="hsgmain">�Լ��β�ѯ</a></span></td>
                    </tr>
                  </table></td>
                </tr>
                
               
            </table></td>
          </tr>
        </table></td>
      </tr>
	  
	    <tr>
        <td height="20" background="images/main_25.gif" id="td3" onClick="show(6)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="13%">&nbsp;</td>
            <td width="72%" height="20"><div align="center">
              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="center"><img src="images/top_8.gif" width="16" height="16"></div></td>
                  <td valign="middle"><div align="center" class="STYLE1">���Թ���</div></td>
                </tr>
              </table>
            </div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr id="show6" style="display:none">
        <td align="center" valign="top"><table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="130" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_1.gif" width="31" height="31"></div></td>
                  <td width="89" height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="liuyanban_list.jsp" target="hsgmain">���Թ���</a></span></td>
                    </tr>
                  </table></td>
                </tr>
              
               
            </table></td>
          </tr>
        </table></td>
      </tr>
	  
	    <tr style="display:none">
        <td height="20" background="images/main_25.gif" id="td3" onClick="show(7)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="13%">&nbsp;</td>
            <td width="72%" height="20"><div align="center">
              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="center"><img src="images/top_8.gif" width="16" height="16"></div></td>
                  <td valign="middle"><div align="center" class="STYLE1">���¹���</div></td>
                </tr>
              </table>
            </div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr id="show7" style="display:none">
        <td align="center" valign="top"><table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="130" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_1.gif" width="31" height="31"></div></td>
                  <td width="89" height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="yuangongxinxi_add.jsp" target="hsgmain">�������</a></span></td>
                    </tr>
                  </table></td>
                </tr>
               <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_1.gif" width="31" height="31"></div></td>
                  <td width="89" height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="yuangongxinxi_list.jsp" target="hsgmain">�������</a></span></td>
                    </tr>
                  </table></td>
                </tr>
               
            </table></td>
          </tr>
        </table></td>
      </tr>
	  
	   <tr>
        <td height="20" background="images/main_25.gif" id="td3" onClick="show(8)"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="13%">&nbsp;</td>
            <td width="72%" height="20"><div align="center">
              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><div align="center"><img src="images/top_8.gif" width="16" height="16"></div></td>
                  <td valign="middle"><div align="center" class="STYLE1">ϵͳ����</div></td>
                </tr>
              </table>
            </div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr id="show8" style="display:none">
        <td align="center" valign="top"><table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td><table width="130" border="0" align="center" cellpadding="0" cellspacing="0">
               
               <tr>
                  <td width="41" height="35"><div align="center"><img src="images/left_1.gif" width="31" height="31"></div></td>
                  <td width="89" height="35"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="23" style="cursor:hand" onMouseOver="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#adb9c2'; "onmouseout="this.style.backgroundImage='url()';this.style.borderStyle='none'"><span class="STYLE2">&nbsp;<a href="databack.jsp" target="hsgmain">���ݱ���</a></span></td>
                    </tr>
                  </table></td>
                </tr>
               
            </table></td>
          </tr>
        </table></td>
      </tr>
	  
	  
	   <tr>
        <td height="20" background="images/main_25.gif" id="td3" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="13%">&nbsp;</td>
            <td width="72%" height="20"><div align="center">
              <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="18%"><div align="center"></div></td>
                  <td width="82%" valign="middle"><div align="center" class="STYLE1"></div></td>
                </tr>
              </table>
            </div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="39" align="center"><p class="STYLE3"><br>
          ��Ȩ���У�xxxxx</p>
          <p class="STYLE3">ָ����ʦ��xxxxx</p></td>
      </tr>
    </table></td>
  </tr>
</table>
  </body>
</html>

