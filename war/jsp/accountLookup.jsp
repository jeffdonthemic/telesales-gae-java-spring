<%@ page import="com.sforce.soap.partner.sobject.SObject"%>

<%  
	SObject[] accounts = (SObject[])request.getAttribute("accounts");
%>

<%@ include file="/jsp/top.jsp" %>

<p/>
<p>Before creating a new Opportunity, ensure that the Account does not already exist. You can also <a href="/accountCreate.htm"/>create a new account</a>.</p>
<p/>
<form method="post" action="accountLookup.htm">
	<span class="heading">Search by Account Name:</span>
	<p/>
	<input type="text" name="name" value="ACME" style="width: 300px"/>
	&nbsp
	<input type="submit" value="Search"/>
	&nbsp 
</form>
<p/>

<% if (accounts != null) { %>

	<% if (accounts.length > 0) { %>
		<span class="heading"><%= accounts.length %> accounts matching your search criteria:</span>
			
		<p/>
		<table border="0" cellspacing="1" cellpadding="5" bgcolor="#CCCCCC" width="50%">
		<tr bgcolor="#407BA8">
			<td style="color: #ffffff; font-weight: bold;">Name</td>
			<td style="color: #ffffff; font-weight: bold;">City</td>
			<td style="color: #ffffff; font-weight: bold;">State</td>
			<td style="color: #ffffff; font-weight: bold;">Phone</td>
		</tr>
		<% for (SObject account : accounts) { %>
			<tr style="background:#ffffff" onMouseOver="this.style.background='#eeeeee';" onMouseOut="this.style.background='#ffffff';">
				<td><a href="accountDisplay.htm?accountId=<%= (String)account.getField("Id") %>"><%= (String)account.getField("Name") %></a></td>
				<td><%= (String)account.getField("BillingCity") %></td>
				<td><%= (String)account.getField("BillingState") %></td>
				<td><%= (String)account.getField("Phone") %></td>
			</tr>
		<% } %>
		</table>
	
	<% } else { %>
		<span class="heading">No matching accounts found.</span>
	<% } %>

<% } %>

<%@ include file="/jsp/bottom.jsp" %>