<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/jsp/top.jsp" %>

<span class="nav"><a href="index.html">Back</a></span><p/>
<span class="title">Create a New Account</span>
<p/>

<form:form method="post">
<table border="0" cellspacing="1" cellpadding="5" bgcolor="#CCCCCC">
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Name</td>
		<td bgcolor="#ffffff"><form:input path="name"/> <form:errors path="name" cssClass="error"/></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">City</td>
		<td bgcolor="#ffffff"><form:input path="city"/> <form:errors path="city" cssClass="error"/></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">State</td>
		<td bgcolor="#ffffff"><form:input path="state"/> <form:errors path="state" cssClass="error"/></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Phone</td>
		<td bgcolor="#ffffff"><form:input path="phone"/> <form:errors path="phone" cssClass="error"/></td>
	</tr>
	<tr bgcolor="#407BA8">
		<td style="color: #ffffff; font-weight: bold;">Website</td>
		<td bgcolor="#ffffff"><form:input path="website"/> <form:errors path="website" cssClass="error"/></td>
	</tr>	
	<tr>
		<td colspan="2" bgcolor="#ffffff" align="center"><input type="submit" value="Submit"></td>
	</tr>
</table>
</form:form>


<%@ include file="/jsp/bottom.jsp" %>