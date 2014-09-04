
<%@ page import="personalfinance.accounts.Light" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'light.label', default: 'Light')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-light" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="light.spentTotal.label" default="Spent Total" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: lightInstance, field: "spentTotal")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="light.formPayment.label" default="Form Payment" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: lightInstance, field: "formPayment")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="light.reasonExpense.label" default="Reason Expense" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: lightInstance, field: "reasonExpense")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="light.dueDate.label" default="Due Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${lightInstance?.dueDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="light.paymentDate.label" default="Payment Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${lightInstance?.paymentDate}" /></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
