<%@ page import="com.sforce.soap.partner.sobject.SObject"%>

<%  
	SObject account = (SObject)request.getAttribute("account");
	SObject[] opportunities = (SObject[])request.getAttribute("opportunities");
%>

<%@ include file="/jsp/top.jsp" %>

<span class="nav"><a href="/accountLookup.htm">Search</a></span><p/>
<span class="title">Account Display</span>
<p/>

<table border="0" cellspacing="1" cellpadding="5" bgcolor="#CCCCCC">
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Name</td>
		<td bgcolor="#ffffff"><%= (String)account.getField("Name") %></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">City</td>
		<td bgcolor="#ffffff"><%= (String)account.getField("BillingCity") %></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">State</td>
		<td bgcolor="#ffffff"><%= (String)account.getField("BillingState") %></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Phone</td>
		<td bgcolor="#ffffff"><%= (String)account.getField("Phone") %></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Website</td>
		<td bgcolor="#ffffff"><%= (String)account.getField("Website") %></td>
	</tr>	
</table>
            
<br><a href="/opportunityCreate.htm?accountId=<%= (String)account.getField("Id") %>">Create a new Opportunity</a><p/>	

<% if (opportunities.length > 0) { %>

	<p/><span class="heading">Opportunities for <%= (String)account.getField("Name") %></span><br><p/>
	
	<table border="0" cellspacing="1" cellpadding="5" bgcolor="#CCCCCC">
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Name</td>
		<td style="color: #ffffff; font-weight: bold;">Amount</td>
		<td style="color: #ffffff; font-weight: bold;">Stage</td>
		<td style="color: #ffffff; font-weight: bold;">Probability</td>
		<td style="color: #ffffff; font-weight: bold;">Close Date</td>
		<td style="color: #ffffff; font-weight: bold;">Order</td>
	</tr>
	<% for (SObject o : opportunities) { %>
		<tr style="background:#ffffff" onMouseOver="this.style.background='#eeeeee';" onMouseOut="this.style.background='#ffffff';">
			<td nowrap><%= (String)o.getField("Name") %></td>
			<td>$<%= (String)o.getField("Amount") %></td>
			<td><%= (String)o.getField("StageName") %></td>
			<td><%= (String)o.getField("Probability") %>%</td>
			<td><%= (String)o.getField("CloseDate") %></td>
			<td><%= (String)o.getField("OrderNumber__c") %></td>
		</tr>
	<% } %>
	</table>
	
<% } else { %>
	<p/><span class="heading">No Opportunities found for <%= (String)account.getField("Name") %></span>
<% } %>
	
<%@ include file="/jsp/bottom.jsp" %>