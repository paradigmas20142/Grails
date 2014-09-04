
<%@ page import="personalfinance.accounts.Internet" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'internet.label', default: 'Internet')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-internet" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="internet.spentTotal.label" default="Spent Total" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: internetInstance, field: "spentTotal")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="internet.dueDate.label" default="Due Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${internetInstance?.dueDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="internet.formPayment.label" default="Form Payment" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: internetInstance, field: "formPayment")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="internet.paymentDate.label" default="Payment Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${internetInstance?.paymentDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="internet.reasonExpense.label" default="Reason Expense" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: internetInstance, field: "reasonExpense")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
