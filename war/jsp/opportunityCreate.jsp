<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%  
	String accountName = (String)request.getAttribute("accountName");
%>

<%@ include file="/jsp/top.jsp" %>

<span class="nav"><a href="/accountDisplay.htm?accountId=<%= request.getParameter("accountId") %>">Back</a></span><p/>
<span class="title">Create a New Opportunity</span>
<p/>

<form:form method="post">
<table border="0" cellspacing="1" cellpadding="5" bgcolor="#CCCCCC">
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Account</td>
		<td bgcolor="#ffffff"><%=accountName%></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Name</td>
		<td bgcolor="#ffffff"><form:input path="name"/> <form:errors path="name" cssClass="error"/></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Amount</td>
		<td bgcolor="#ffffff"><form:input path="amount"/> <form:errors path="amount" cssClass="error"/></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Stage</td>
		<td bgcolor="#ffffff">
		<select name="stageName">
			<option>Prospecting</option>
			<option>Qualifications</option>
			<option>Value Proposition</option>
		</select>
		</td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Probability</td>
		<td bgcolor="#ffffff">
		<select name="probability">
			<option value="10">10%</option>
			<option value="25">25%</option>
			<option value="50">50%</option>
			<option value="75">75%</option>
		</select>
		</td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Close Date</td>
		<td bgcolor="#ffffff"><form:input path="closeDate"/> <form:errors path="closeDate" cssClass="error"/></td>
	</tr>	
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Order</td>
		<td bgcolor="#ffffff"><form:input path="orderNumber"/> <form:errors path="orderNumber" cssClass="error"/></td>
	</tr>	
	<tr>
		<td colspan="2" bgcolor="#ffffff" align="center"><input type="submit" value="Submit"></td>
	</tr>
</table>
</form:form>

<%@ include file="/jsp/bottom.jsp" %>