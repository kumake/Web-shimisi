<!--#include file="conn.asp"-->
<!--#include file="sp_inc/class_page.asp"-->
<!--#include file="plugIn/Setting.Config.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=config_sitename%></title>
<meta name="keywords" content="<%=config_seokeyword%>">
<meta name="description" content="<%=config_seocontent%>">
<link href="css/public.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.proLi{ width:160px; line-height:30px; border-bottom:#CCCCCC solid 1px; display:block; background:url(images/li.jpg) no-repeat 30px 50%; padding-left:50px; margin-left:32px;}
 -->
</style>
</head>
<body>
<div id="container">
<table id="__01" width="963" height="859" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
		<!--#include file="head.asp" -->
		</td>
	</tr>
	<tr>
		<td>
		<table id="__01" width="963" height="476" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
				<table id="__01" width="738" height="476" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>
						<table id="__01" width="738" height="195" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td>
									<img src="images/index_jj_01.jpg" width="50" height="195" alt=""></td>
								<td background="images/index_jj_02.jpg" width="652" height="195">
								<div style="padding-top:20px;">
										<!--内容开始 -->
											<script src="JS/MSClass.js"></script>
									<div id="marqueediv6" style=" text-align:center;width:635px;height:170px;margin-left:5px; padding-top:5px;">
								  <table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
									  
									   <%
			
							set rs = UICon.QUery("select top 20 * from user_case order by hots desc ")
							if rs.recordcount<>0 then
							do while not rs.eof
							'''''''''怎么分多列''''''
							''该页面采用DIV+css。所以分列实现起来非常方便不需要改页面
							''只需要改变css中 procontent 标签下的li的宽度即可
							''一列 只要procontent 的宽度和li的宽度一致
							''需要几列 只要将li的宽度设置为 procontent的几分之几
						   %>
										<td width="122"><table width="122" border="0" align="center" cellpadding="0" cellspacing="0"  height="122">
											<tr>
											  <td width="122"><a href="case_in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>"><img src="<%=rs("Field_picture")%>"  height="130" ; width="150"   border="0" style="margin-top:5px"/></a>
											  <a href="case__in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" style="display:block; text-align:center; line-height:20px; color:#000; margin-top:5px;"><%=rs("title")%></a>								  </td>
											</tr>
										</table></td>
										<td width="10">&nbsp;</td>
						  <%
							rs.movenext
							loop
							end if
							%>              
									  </tr>
					  </table>
					</div>
									<script>new Marquee("marqueediv6",2,1,635,170,20,0,0)</script>
									<!--内容结束 -->
								</div>
								</td>
								<td>
									<img src="images/index_jj_03.jpg" width="36" height="195" alt=""></td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td>
							<img src="images/index_gh_02.jpg" width="738" height="34" alt=""></td>
					</tr>
					<tr>
						<td>
							<img src="images/index_gh_03.jpg" width="738" height="36" alt=""></td>
					</tr>
					<tr>
						<td  width="738" height="211">
						<div id="index_gsjj">
						<p>尊敬的史密斯产品用户，您好！</p>
						<p>　　非常感谢您选用史密斯产品！也非常感谢您选择史密斯的服务，请您对服务全过程进行监督，相信在您的支持下，我
们能够持续不断地完善服务流程及服务质量。为您及其他消费者提供专业的全程服务。</p>
<p>　　如果您使用的产品出现故障或有什么疑问，请致电史密斯南京售后服务中心 025-84651440</p>
<p>　　我们随时恭候您的垂询。</p>
<p>　　史密斯股份有限公司总机热线：4000-178278  南京分公司客服：025-84651440
<p>我们的服务宗旨：专业专注、诚信高效。</p>

						</div>
						</td>
					</tr>
				</table>
				</td>
				<td>
				<!--#include file="right.asp" -->
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>
		<!--#include file="footer.asp" --></td>
	</tr>
</table>
</div>
</body>
</html>
