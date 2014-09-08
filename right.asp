<table id="__01" width="225" height="476" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<img src="images/right_01.jpg" width="225" height="48" alt=""></td>
	</tr>
	<tr>
		<td  background="images/right_02.jpg" width="225" height="134">
		<div id="right_contact">
			<p>史密斯服务中心</p>
			<p>服务专线：4000178278</p>
			<p>电话：025-84651440</p>
			<p>地址：北门桥6号</p>
		</div>
		</td>	
			
	</tr>
	<tr>
		<td>
			<img src="images/right_03.jpg" width="225" height="29" alt=""></td>
	</tr>
	<tr>
		<td background="images/right_04.jpg" width="225" height="265">
				<ul id="right_news">
								<%
									set rs = UICon.Query("select top 10 * from user_news order by id desc")
									do while not rs.eof
								
								%>
									<li>　　<a  href="news_in.asp?categoryid=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" title="<%=rs("title")%>"  target="_blank" ><%=month(rs("PostTime"))%>-<%=day(rs("PostTime"))%><%=left(rs("title"),11)%></a></li>	
								<%
									rs.movenext
									loop
									rs.close
									set rs=nothing
								%>
		</ul>
		</td>
	</tr>
</table>
