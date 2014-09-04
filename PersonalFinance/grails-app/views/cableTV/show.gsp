
<%@ page import="personalfinance.accounts.CableTV" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'cableTV.label', default: 'CableTV')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-cableTV" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="cableTV.spentTotal.label" default="Spent Total" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: cableTVInstance, field: "spentTotal")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="cableTV.dueDate.label" default="Due Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${cableTVInstance?.dueDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="cableTV.formPayment.label" default="Form Payment" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: cableTVInstance, field: "formPayment")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="cableTV.paymentDate.label" default="Payment Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${cableTVInstance?.paymentDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="cableTV.reasonExpense.label" default="Reason Expense" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: cableTVInstance, field: "reasonExpense")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
