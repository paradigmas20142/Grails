
<%@ page import="personalfinance.user.Person" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
	<title>Show Person</title>
</head>

<body>

<section id="show-person" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.username.label" default="Username" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "username")}</td>
				
			</tr>
						
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "address")}</td>
				
			</tr>
				
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.financialSituation.label" default="Financial Situation" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "financialSituation")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "name")}</td>
				
			</tr>
		
			
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.phone.label" default="Phone" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "phone")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="person.salary.label" default="Salary" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: personInstance, field: "salary")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
